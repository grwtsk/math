import Mathlib.Logic.Relation
import Mathlib.Order.WellFounded
import Mathlib.Data.Nat.Basic
import Mathlib.Data.List.Basic
import Mathlib.Tactic.Basic
import Mathlib.Tactic.Convert
import Mathlib.Tactic.Ext

/- Original core module: Basic -/

namespace OAI

/-!
Full annotated PTS syntax, modulo alpha-renaming via de Bruijn indices.
Contexts are stored newest-first, each declaration in its prefix context.
No functionality assumptions on axioms or product rules.
-/

namespace PureTypeSystem

universe u

inductive Expr (Sorts : Type u) : Type u
  | var : Nat → Expr Sorts
  | sort : Sorts → Expr Sorts
  | app : Expr Sorts → Expr Sorts → Expr Sorts
  | lam : Expr Sorts → Expr Sorts → Expr Sorts
  | pi : Expr Sorts → Expr Sorts → Expr Sorts
  deriving DecidableEq

namespace Expr

variable {S : Type u}

def liftRen (ρ : Nat → Nat) : Nat → Nat
  | 0 => 0
  | n + 1 => ρ n + 1

def rename (ρ : Nat → Nat) : Expr S → Expr S
  | var n => var (ρ n)
  | sort s => sort s
  | app f a => app (rename ρ f) (rename ρ a)
  | lam A b => lam (rename ρ A) (rename (liftRen ρ) b)
  | pi A B => pi (rename ρ A) (rename (liftRen ρ) B)

def liftSub (σ : Nat → Expr S) : Nat → Expr S
  | 0 => var 0
  | n + 1 => rename Nat.succ (σ n)

def subst (σ : Nat → Expr S) : Expr S → Expr S
  | var n => σ n
  | sort s => sort s
  | app f a => app (subst σ f) (subst σ a)
  | lam A b => lam (subst σ A) (subst (liftSub σ) b)
  | pi A B => pi (subst σ A) (subst (liftSub σ) B)

def single (a : Expr S) : Nat → Expr S
  | 0 => a
  | n + 1 => var n

def instantiate (b a : Expr S) : Expr S := subst (single a) b

end Expr

structure Specification (S : Type u) where
  axioms : S → S → Prop
  rule : S → S → S → Prop

inductive Beta {S : Type u} : Expr S → Expr S → Prop
  | head (A b a) : Beta (.app (.lam A b) a) (b.instantiate a)
  | app_left {f f' a} : Beta f f' → Beta (.app f a) (.app f' a)
  | app_right {f a a'} : Beta a a' → Beta (.app f a) (.app f a')
  | lam_domain {A A' b} : Beta A A' → Beta (.lam A b) (.lam A' b)
  | lam_body {A b b'} : Beta b b' → Beta (.lam A b) (.lam A b')
  | pi_domain {A A' B} : Beta A A' → Beta (.pi A B) (.pi A' B)
  | pi_body {A B B'} : Beta B B' → Beta (.pi A B) (.pi A B')

def Converts {S : Type u} : Expr S → Expr S → Prop := Relation.EqvGen Beta

def Normal {S : Type u} (M : Expr S) : Prop := ∀ N, ¬ Beta M N

def WeaklyNormalizing {S : Type u} (M : Expr S) : Prop :=
  ∃ N, Relation.ReflTransGen Beta M N ∧ Normal N

/-- Accessibility for the converse of reduction: strong normalization,
including reductions in all type annotations. -/
def StronglyNormalizing {S : Type u} (M : Expr S) : Prop :=
  Acc (fun N M : Expr S => Beta M N) M

inductive HasType {S : Type u} (P : Specification S) :
    List (Expr S) → Expr S → Expr S → Prop
  | ax {s t} : P.axioms s t → HasType P [] (.sort s) (.sort t)
  | var {Γ A s} : HasType P Γ A (.sort s) →
      HasType P (A :: Γ) (.var 0) (A.rename Nat.succ)
  | weaken {Γ M B A s} : HasType P Γ M B → HasType P Γ A (.sort s) →
      HasType P (A :: Γ) (M.rename Nat.succ) (B.rename Nat.succ)
  | product {Γ A B s₁ s₂ s₃} : HasType P Γ A (.sort s₁) →
      HasType P (A :: Γ) B (.sort s₂) → P.rule s₁ s₂ s₃ →
      HasType P Γ (.pi A B) (.sort s₃)
  | abstraction {Γ A b B s} : HasType P (A :: Γ) b B →
      HasType P Γ (.pi A B) (.sort s) →
      HasType P Γ (.lam A b) (.pi A B)
  | application {Γ f a A B} : HasType P Γ f (.pi A B) →
      HasType P Γ a A → HasType P Γ (.app f a) (B.instantiate a)
  | conversion {Γ M A B s} : HasType P Γ M A → HasType P Γ B (.sort s) →
      Converts A B → HasType P Γ M B

inductive ValidContext {S : Type u} (P : Specification S) : List (Expr S) → Prop
  | nil : ValidContext P []
  | cons {Γ A s} : ValidContext P Γ → HasType P Γ A (.sort s) →
      ValidContext P (A :: Γ)

def Legal {S : Type u} (P : Specification S) (Γ : List (Expr S)) (M : Expr S) : Prop :=
  ∃ A, HasType P Γ M A ∨ HasType P Γ A M

def SystemWeaklyNormalizing {S : Type u} (P : Specification S) : Prop :=
  ∀ Γ, ValidContext P Γ → ∀ M, Legal P Γ M → WeaklyNormalizing M

def SystemStronglyNormalizing {S : Type u} (P : Specification S) : Prop :=
  ∀ Γ, ValidContext P Γ → ∀ M, Legal P Γ M → StronglyNormalizing M


namespace HasType

variable {S : Type u} {P : Specification S} {Γ : List (Expr S)} {M A : Expr S}

theorem valid (h : HasType P Γ M A) : ValidContext P Γ := by
  induction h with
  | ax _ => exact .nil
  | var h ih => exact .cons ih h
  | weaken _ h _ ih => exact .cons ih h
  | product _ _ _ ih _ => exact ih
  | abstraction _ _ _ ih => exact ih
  | application _ _ ih _ => exact ih
  | conversion _ _ _ ih _ => exact ih

end HasType

namespace Expr

variable {S : Type u}

@[simp] theorem liftRen_zero (ρ : Nat → Nat) : liftRen ρ 0 = 0 := rfl
@[simp] theorem liftRen_succ (ρ : Nat → Nat) (n : Nat) :
    liftRen ρ (n + 1) = ρ n + 1 := rfl

@[simp] theorem liftRen_id : liftRen id = id := by
  funext n
  cases n <;> rfl

theorem liftRen_comp (ρ τ : Nat → Nat) : liftRen (ρ ∘ τ) = liftRen ρ ∘ liftRen τ := by
  funext n
  cases n <;> rfl

@[simp] theorem rename_id (M : Expr S) : rename id M = M := by
  induction M with
  | var n => rfl
  | sort s => rfl
  | app f a ihf iha => simp [rename, ihf, iha]
  | lam A b ihA ihb => simp [rename, ihA, ihb]
  | pi A B ihA ihB => simp [rename, ihA, ihB]

theorem rename_comp (M : Expr S) (ρ τ : Nat → Nat) :
    rename ρ (rename τ M) = rename (ρ ∘ τ) M := by
  induction M generalizing ρ τ with
  | var n => rfl
  | sort s => rfl
  | app f a ihf iha => simp only [rename, ihf, iha]
  | lam A b ihA ihb => simp only [rename, ihA, ihb, liftRen_comp]
  | pi A B ihA ihB => simp only [rename, ihA, ihB, liftRen_comp]

@[simp] theorem liftSub_zero (σ : Nat → Expr S) : liftSub σ 0 = var 0 := rfl
@[simp] theorem liftSub_succ (σ : Nat → Expr S) (n : Nat) :
    liftSub σ (n + 1) = rename Nat.succ (σ n) := rfl

@[simp] theorem liftSub_var : liftSub (var : Nat → Expr S) = var := by
  funext n
  cases n <;> rfl

@[simp] theorem subst_var (M : Expr S) : subst var M = M := by
  induction M with
  | var n => rfl
  | sort s => rfl
  | app f a ihf iha => simp [subst, ihf, iha]
  | lam A b ihA ihb => simp [subst, ihA, ihb]
  | pi A B ihA ihB => simp [subst, ihA, ihB]

theorem subst_rename (M : Expr S) (σ : Nat → Expr S) (ρ : Nat → Nat) :
    subst σ (rename ρ M) = subst (σ ∘ ρ) M := by
  have hlift : ∀ (σ : Nat → Expr S) (ρ : Nat → Nat),
      liftSub σ ∘ liftRen ρ = liftSub (σ ∘ ρ) := by
    intro σ ρ
    funext n
    cases n <;> rfl
  induction M generalizing σ ρ with
  | var n => rfl
  | sort s => rfl
  | app f a ihf iha => simp only [rename, subst, ihf, iha]
  | lam A b ihA ihb => simp only [rename, subst, ihA, ihb, hlift]
  | pi A B ihA ihB => simp only [rename, subst, ihA, ihB, hlift]

theorem rename_subst (M : Expr S) (ρ : Nat → Nat) (σ : Nat → Expr S) :
    rename ρ (subst σ M) = subst (fun n => rename ρ (σ n)) M := by
  have hlift : ∀ (ρ : Nat → Nat) (σ : Nat → Expr S),
      (fun n => rename (liftRen ρ) (liftSub σ n)) =
        liftSub (fun n => rename ρ (σ n)) := by
    intro ρ σ
    funext n
    cases n with
    | zero => rfl
    | succ n =>
        simp only [liftSub_succ, rename_comp]
        rfl
  induction M generalizing ρ σ with
  | var n => rfl
  | sort s => rfl
  | app f a ihf iha => simp only [subst, rename, ihf, iha]
  | lam A b ihA ihb => simp only [subst, rename, ihA, ihb, hlift]
  | pi A B ihA ihB => simp only [subst, rename, ihA, ihB, hlift]

theorem subst_subst (M : Expr S) (σ τ : Nat → Expr S) :
    subst σ (subst τ M) = subst (fun n => subst σ (τ n)) M := by
  have hlift : ∀ (σ τ : Nat → Expr S),
      (fun n => subst (liftSub σ) (liftSub τ n)) =
        liftSub (fun n => subst σ (τ n)) := by
    intro σ τ
    funext n
    cases n with
    | zero => rfl
    | succ n =>
        simp only [liftSub_succ, subst_rename, rename_subst]
        rfl
  induction M generalizing σ τ with
  | var n => rfl
  | sort s => rfl
  | app f a ihf iha => simp only [subst, ihf, iha]
  | lam A b ihA ihb => simp only [subst, ihA, ihb, hlift]
  | pi A B ihA ihB => simp only [subst, ihA, ihB, hlift]

theorem instantiate_rename (b a : Expr S) (ρ : Nat → Nat) :
    (b.rename (liftRen ρ)).instantiate (a.rename ρ) = (b.instantiate a).rename ρ := by
  simp only [instantiate, subst_rename, rename_subst]
  congr 1
  funext n
  cases n <;> rfl

theorem instantiate_subst (b a : Expr S) (σ : Nat → Expr S) :
    (b.subst (liftSub σ)).instantiate (a.subst σ) = (b.instantiate a).subst σ := by
  simp only [instantiate, subst_subst]
  congr 1
  funext n
  cases n with
  | zero => rfl
  | succ n =>
      simp only [liftSub_succ, subst_rename]
      exact subst_var (σ n)

end Expr

namespace Beta

variable {S : Type u} {M N : Expr S}

theorem rename (h : Beta M N) (ρ : Nat → Nat) : Beta (M.rename ρ) (N.rename ρ) := by
  induction h generalizing ρ with
  | head A b a =>
      simpa only [Expr.rename, ← Expr.instantiate_rename] using
        (Beta.head (A.rename ρ) (b.rename (Expr.liftRen ρ)) (a.rename ρ))
  | app_left _ ih => exact .app_left (ih ρ)
  | app_right _ ih => exact .app_right (ih ρ)
  | lam_domain _ ih => exact .lam_domain (ih ρ)
  | lam_body _ ih => exact .lam_body (ih (Expr.liftRen ρ))
  | pi_domain _ ih => exact .pi_domain (ih ρ)
  | pi_body _ ih => exact .pi_body (ih (Expr.liftRen ρ))

theorem subst (h : Beta M N) (σ : Nat → Expr S) : Beta (M.subst σ) (N.subst σ) := by
  induction h generalizing σ with
  | head A b a =>
      simpa only [Expr.subst, ← Expr.instantiate_subst] using
        (Beta.head (A.subst σ) (b.subst (Expr.liftSub σ)) (a.subst σ))
  | app_left _ ih => exact .app_left (ih σ)
  | app_right _ ih => exact .app_right (ih σ)
  | lam_domain _ ih => exact .lam_domain (ih σ)
  | lam_body _ ih => exact .lam_body (ih (Expr.liftSub σ))
  | pi_domain _ ih => exact .pi_domain (ih σ)
  | pi_body _ ih => exact .pi_body (ih (Expr.liftSub σ))

end Beta

end PureTypeSystem

end OAI

/- Original core module: Reduction -/

namespace OAI

namespace PureTypeSystem

universe u

/-- Parallel reduction is used only to establish the beta metatheory. -/
inductive Parallel {S : Type u} : Expr S → Expr S → Prop
  | var (n) : Parallel (.var n) (.var n)
  | sort (s) : Parallel (.sort s) (.sort s)
  | app {f f' a a'} : Parallel f f' → Parallel a a' →
      Parallel (.app f a) (.app f' a')
  | lam {A A' b b'} : Parallel A A' → Parallel b b' →
      Parallel (.lam A b) (.lam A' b')
  | pi {A A' B B'} : Parallel A A' → Parallel B B' →
      Parallel (.pi A B) (.pi A' B')
  | head {b b' a a'} (A) : Parallel b b' → Parallel a a' →
      Parallel (.app (.lam A b) a) (b'.instantiate a')

namespace Parallel

variable {S : Type u} {M N : Expr S}

@[refl] theorem refl (M : Expr S) : Parallel M M := by
  induction M with
  | var n => exact .var n
  | sort s => exact .sort s
  | app _ _ ihf iha => exact .app ihf iha
  | lam _ _ ihA ihb => exact .lam ihA ihb
  | pi _ _ ihA ihB => exact .pi ihA ihB

theorem of_beta (h : Beta M N) : Parallel M N := by
  induction h with
  | head A b a => exact .head A (refl b) (refl a)
  | app_left _ ih => exact .app ih (refl _)
  | app_right _ ih => exact .app (refl _) ih
  | lam_domain _ ih => exact .lam ih (refl _)
  | lam_body _ ih => exact .lam (refl _) ih
  | pi_domain _ ih => exact .pi ih (refl _)
  | pi_body _ ih => exact .pi (refl _) ih

theorem rename (h : Parallel M N) (ρ : Nat → Nat) :
    Parallel (M.rename ρ) (N.rename ρ) := by
  induction h generalizing ρ with
  | var n => exact .var _
  | sort s => exact .sort _
  | app _ _ ihf iha => exact .app (ihf ρ) (iha ρ)
  | lam _ _ ihA ihb => exact .lam (ihA ρ) (ihb (Expr.liftRen ρ))
  | pi _ _ ihA ihB => exact .pi (ihA ρ) (ihB (Expr.liftRen ρ))
  | head A _ _ ihb iha =>
      simpa only [Expr.rename, ← Expr.instantiate_rename] using
        (Parallel.head (A.rename ρ) (ihb (Expr.liftRen ρ)) (iha ρ))

theorem subst (h : Parallel M N) (σ τ : Nat → Expr S)
    (hστ : ∀ n, Parallel (σ n) (τ n)) : Parallel (M.subst σ) (N.subst τ) := by
  have hlift (σ τ : Nat → Expr S) (hστ : ∀ n, Parallel (σ n) (τ n)) :
      ∀ n, Parallel (Expr.liftSub σ n) (Expr.liftSub τ n) := by
    intro n
    cases n with
    | zero => exact .var 0
    | succ n => exact (hστ n).rename Nat.succ
  induction h generalizing σ τ with
  | var n => exact hστ n
  | sort s => exact .sort s
  | app _ _ ihf iha => exact .app (ihf σ τ hστ) (iha σ τ hστ)
  | lam _ _ ihA ihb => exact .lam (ihA σ τ hστ) (ihb _ _ (hlift σ τ hστ))
  | pi _ _ ihA ihB => exact .pi (ihA σ τ hστ) (ihB _ _ (hlift σ τ hστ))
  | head A _ _ ihb iha =>
      simpa only [Expr.subst, ← Expr.instantiate_subst] using
        (Parallel.head (A.subst σ) (ihb _ _ (hlift σ τ hστ)) (iha σ τ hστ))

theorem instantiate {b b' a a' : Expr S} (hb : Parallel b b') (ha : Parallel a a') :
    Parallel (b.instantiate a) (b'.instantiate a') := by
  apply hb.subst
  intro n
  cases n with
  | zero => exact ha
  | succ n => exact .var n

end Parallel

namespace Expr

variable {S : Type u}

/-- Takahashi's complete development, including type annotations. -/
def develop : Expr S → Expr S
  | var n => var n
  | sort s => sort s
  | app (lam _ b) a => (develop b).instantiate (develop a)
  | app f a => app (develop f) (develop a)
  | lam A b => lam (develop A) (develop b)
  | pi A B => pi (develop A) (develop B)

end Expr

namespace Parallel

variable {S : Type u} {M N : Expr S}

theorem triangle (h : Parallel M N) : Parallel N M.develop := by
  induction h with
  | var n => exact .var n
  | sort s => exact .sort s
  | @app f f' a a' hf ha ihf iha =>
      cases f with
      | var n => exact .app ihf iha
      | sort s => exact .app ihf iha
      | app f b => exact .app ihf iha
      | pi A B => exact .app ihf iha
      | lam A b =>
          cases hf with
          | lam hA hb =>
              cases ihf with
              | lam ihA ihb => exact .head _ ihb iha
  | lam _ _ ihA ihb => exact .lam ihA ihb
  | pi _ _ ihA ihB => exact .pi ihA ihB
  | head A _ _ ihb iha => exact ihb.instantiate iha

theorem diamond {a b c : Expr S} (hab : Parallel a b) (hac : Parallel a c) :
    ∃ d, Parallel b d ∧ Parallel c d := ⟨a.develop, hab.triangle, hac.triangle⟩

end Parallel

abbrev Reduces {S : Type u} := Relation.ReflTransGen (@Beta S)

namespace Reduces

variable {S : Type u} {f f' a a' A A' b b' : Expr S}

theorem app (hf : Reduces f f') (ha : Reduces a a') :
    Reduces (.app f a) (.app f' a') := by
  exact (hf.lift (fun x => Expr.app x a) (fun _ _ h => Beta.app_left h)).trans
    (ha.lift (fun x => Expr.app f' x) (fun _ _ h => Beta.app_right h))

theorem lam (hA : Reduces A A') (hb : Reduces b b') :
    Reduces (.lam A b) (.lam A' b') := by
  exact (hA.lift (fun x => Expr.lam x b) (fun _ _ h => Beta.lam_domain h)).trans
    (hb.lift (fun x => Expr.lam A' x) (fun _ _ h => Beta.lam_body h))

theorem pi (hA : Reduces A A') (hb : Reduces b b') :
    Reduces (.pi A b) (.pi A' b') := by
  exact (hA.lift (fun x => Expr.pi x b) (fun _ _ h => Beta.pi_domain h)).trans
    (hb.lift (fun x => Expr.pi A' x) (fun _ _ h => Beta.pi_body h))

theorem rename {M N : Expr S} (h : Reduces M N) (ρ : Nat → Nat) :
    Reduces (M.rename ρ) (N.rename ρ) := h.lift _ (fun _ _ h => h.rename ρ)

theorem subst {M N : Expr S} (h : Reduces M N) (σ : Nat → Expr S) :
    Reduces (M.subst σ) (N.subst σ) := h.lift _ (fun _ _ h => h.subst σ)

end Reduces

namespace Parallel

variable {S : Type u} {M N : Expr S}

theorem reduces (h : Parallel M N) : Reduces M N := by
  induction h with
  | var n => exact .refl
  | sort s => exact .refl
  | app _ _ ihf iha => exact Reduces.app ihf iha
  | lam _ _ ihA ihb => exact Reduces.lam ihA ihb
  | pi _ _ ihA ihB => exact Reduces.pi ihA ihB
  | head A _ _ ihb iha =>
      exact (Reduces.app (Reduces.lam .refl ihb) iha).tail (.head _ _ _)

theorem rtc_reduces {M N : Expr S} (h : Relation.ReflTransGen Parallel M N) :
    Reduces M N := Relation.reflTransGen_closed (fun _ _ h => h.reduces) _ _ h

end Parallel

namespace Reduces

variable {S : Type u} {M N : Expr S}

theorem parallel (h : Reduces M N) : Relation.ReflTransGen Parallel M N :=
  Relation.ReflTransGen.mono (fun _ _ h => Parallel.of_beta h) _ _ h

theorem confluent {a b c : Expr S} (hab : Reduces a b) (hac : Reduces a c) :
    Relation.Join Reduces b c := by
  have hd : ∀ a b c : Expr S, Parallel a b → Parallel a c →
      ∃ d, Relation.ReflGen Parallel b d ∧ Relation.ReflTransGen Parallel c d := by
    intro a b c hab hac
    obtain ⟨d, hb, hc⟩ := Parallel.diamond hab hac
    exact ⟨d, .single hb, .single hc⟩
  obtain ⟨d, hb, hc⟩ := Relation.church_rosser hd hab.parallel hac.parallel
  exact ⟨d, Parallel.rtc_reduces hb, Parallel.rtc_reduces hc⟩

end Reduces

namespace Converts

variable {S : Type u} {M N : Expr S}

theorem join (h : Converts M N) : Relation.Join Reduces M N := by
  induction h with
  | rel a b h => exact ⟨b, .single h, .refl⟩
  | refl a => exact ⟨a, .refl, .refl⟩
  | symm a b _ ih =>
      obtain ⟨c, ha, hb⟩ := ih
      exact ⟨c, hb, ha⟩
  | trans a b c _ _ ih₁ ih₂ =>
      obtain ⟨d, ha, hb⟩ := ih₁
      obtain ⟨e, hb', hc⟩ := ih₂
      obtain ⟨f, hd, he⟩ := Reduces.confluent hb hb'
      exact ⟨f, ha.trans hd, hc.trans he⟩

end Converts

namespace Normal

variable {S : Type u} {M N : Expr S}

theorem reduces_eq (hM : Normal M) (h : Reduces M N) : M = N := by
  induction h with
  | refl => rfl
  | @tail N N' _ h ih => exact False.elim (hM N' (ih ▸ h))

theorem eq_of_converts (hM : Normal M) (hN : Normal N) (h : Converts M N) : M = N := by
  obtain ⟨K, hMK, hNK⟩ := h.join
  exact (hM.reduces_eq hMK).trans (hN.reduces_eq hNK).symm

end Normal

namespace Reduces

variable {S : Type u} {A B N : Expr S}

theorem pi_inv (h : Reduces (.pi A B) N) :
    ∃ A' B', N = .pi A' B' ∧ Reduces A A' ∧ Reduces B B' := by
  induction h with
  | refl => exact ⟨A, B, rfl, .refl, .refl⟩
  | tail _ h ih =>
      obtain ⟨A', B', rfl, hA, hB⟩ := ih
      cases h with
      | pi_domain h => exact ⟨_, _, rfl, hA.tail h, hB⟩
      | pi_body h => exact ⟨_, _, rfl, hA, hB.tail h⟩

theorem converts {M N : Expr S} (h : Reduces M N) : Converts M N :=
  Relation.EqvGen.reflTransGen_le_eqvGen _ _ _ h

end Reduces

namespace Converts

variable {S : Type u}

theorem product_compatibility {A B A' B' : Expr S}
    (h : Converts (.pi A B) (.pi A' B')) : Converts A A' ∧ Converts B B' := by
  obtain ⟨T, hT, hT'⟩ := h.join
  obtain ⟨D, E, hDE, hA, hB⟩ := hT.pi_inv
  obtain ⟨D', E', hDE', hA', hB'⟩ := hT'.pi_inv
  have heq := Expr.pi.inj (hDE.symm.trans hDE')
  obtain ⟨rfl, rfl⟩ := heq
  exact ⟨.trans _ _ _ hA.converts (.symm _ _ hA'.converts),
    .trans _ _ _ hB.converts (.symm _ _ hB'.converts)⟩

end Converts

namespace Normal

variable {S : Type u}

theorem var (n : Nat) : Normal (.var n : Expr S) := by
  intro N h
  cases h

theorem sort (s : S) : Normal (.sort s) := by
  intro N h
  cases h

theorem stronglyNormalizing {M : Expr S} (h : Normal M) : StronglyNormalizing M :=
  .intro M (fun N hN => False.elim (h N hN))

end Normal

namespace StronglyNormalizing

variable {S : Type u} {M N : Expr S}

theorem step (hM : StronglyNormalizing M) (h : Beta M N) : StronglyNormalizing N :=
  hM.inv h

theorem reduces (hM : StronglyNormalizing M) (h : Reduces M N) : StronglyNormalizing N := by
  induction h with
  | refl => exact hM
  | tail _ h ih => exact ih.step h

/-- SN of an image reflects along any map preserving individual reduction steps. -/
theorem of_map {f : Expr S → Expr S}
    (hf : ∀ {M N}, Beta M N → Beta (f M) (f N)) {M : Expr S}
    (h : StronglyNormalizing (f M)) : StronglyNormalizing M := by
  have aux : ∀ N, StronglyNormalizing N → ∀ M, f M = N → StronglyNormalizing M := by
    intro N hN
    induction hN with
    | intro N _ ih =>
        intro M heq
        apply Acc.intro
        intro M' hM
        exact ih (f M') (heq ▸ hf hM) M' rfl
  exact aux _ h M rfl

theorem app_left {f a : Expr S} (h : StronglyNormalizing (.app f a)) :
    StronglyNormalizing f := of_map (fun h => Beta.app_left h) h

theorem app_right {f a : Expr S} (h : StronglyNormalizing (.app f a)) :
    StronglyNormalizing a := of_map (fun h => Beta.app_right h) h

theorem lam_domain {A b : Expr S} (h : StronglyNormalizing (.lam A b)) :
    StronglyNormalizing A := of_map (fun h => Beta.lam_domain h) h

theorem lam_body {A b : Expr S} (h : StronglyNormalizing (.lam A b)) :
    StronglyNormalizing b := of_map (fun h => Beta.lam_body h) h

theorem pi_domain {A B : Expr S} (h : StronglyNormalizing (.pi A B)) :
    StronglyNormalizing A := of_map (fun h => Beta.pi_domain h) h

theorem pi_body {A B : Expr S} (h : StronglyNormalizing (.pi A B)) :
    StronglyNormalizing B := of_map (fun h => Beta.pi_body h) h

theorem of_subst (σ : Nat → Expr S) (h : StronglyNormalizing (M.subst σ)) :
    StronglyNormalizing M := of_map (fun h => h.subst σ) h

theorem of_rename (ρ : Nat → Nat) (h : StronglyNormalizing (M.rename ρ)) :
    StronglyNormalizing M := of_map (fun h => h.rename ρ) h

theorem lam {A b : Expr S} (hA : StronglyNormalizing A) (hb : StronglyNormalizing b) :
    StronglyNormalizing (.lam A b) := by
  induction hA generalizing b with
  | intro A hA ihA =>
      induction hb with
      | intro b hb ihb =>
          apply Acc.intro
          intro N hN
          cases hN with
          | lam_domain h => exact ihA _ h (Acc.intro _ hb)
          | lam_body h => exact ihb _ h

theorem pi {A B : Expr S} (hA : StronglyNormalizing A) (hB : StronglyNormalizing B) :
    StronglyNormalizing (.pi A B) := by
  induction hA generalizing B with
  | intro A hA ihA =>
      induction hB with
      | intro B hB ihB =>
          apply Acc.intro
          intro N hN
          cases hN with
          | pi_domain h => exact ihA _ h (Acc.intro _ hB)
          | pi_body h => exact ihB _ h

end StronglyNormalizing

namespace Expr

variable {S : Type u}

def apps (f : Expr S) : List (Expr S) → Expr S
  | [] => f
  | a :: as => apps (.app f a) as

@[simp] theorem apps_nil (f : Expr S) : apps f [] = f := rfl
@[simp] theorem apps_cons (f a : Expr S) (as : List (Expr S)) :
    apps f (a :: as) = apps (.app f a) as := rfl

theorem apps_append (f : Expr S) (as bs : List (Expr S)) :
    apps f (as ++ bs) = apps (apps f as) bs := by
  induction as generalizing f with
  | nil => rfl
  | cons a as ih => exact ih (.app f a)

end Expr

/-- Exactly one reduction step in one term of an argument list. -/
inductive ArgsStep {S : Type u} : List (Expr S) → List (Expr S) → Prop
  | head {a a' as} : Beta a a' → ArgsStep (a :: as) (a' :: as)
  | tail {a as as'} : ArgsStep as as' → ArgsStep (a :: as) (a :: as')

def StronglyNormalizingArgs {S : Type u} (as : List (Expr S)) : Prop :=
  Acc (fun bs as => ArgsStep as bs) as

namespace Beta

variable {S : Type u} {f f' : Expr S}

theorem apps (h : Beta f f') (as : List (Expr S)) :
    Beta (f.apps as) (f'.apps as) := by
  induction as generalizing f f' with
  | nil => exact h
  | cons a as ih => exact ih (.app_left h)

/-- If the head is not a lambda, a spine step comes from its head or an argument. -/
theorem apps_inv {as : List (Expr S)} {N : Expr S}
    (hf : ∀ A b, f ≠ .lam A b) (h : Beta (f.apps as) N) :
    (∃ f', Beta f f' ∧ N = f'.apps as) ∨
    (∃ as', ArgsStep as as' ∧ N = f.apps as') := by
  induction as generalizing f N with
  | nil => exact .inl ⟨N, h, rfl⟩
  | cons a as ih =>
      obtain ⟨g, hg, rfl⟩ | ⟨as', has, rfl⟩ :=
        ih (f := .app f a) (by intro A b heq; cases heq) h
      · cases hg with
        | head A b a => exact False.elim (hf A b rfl)
        | app_left hg => exact .inl ⟨_, hg, rfl⟩
        | app_right hg => exact .inr ⟨_, .head hg, rfl⟩
      · exact .inr ⟨_, .tail has, rfl⟩

end Beta

namespace ArgsStep

variable {S : Type u} {as bs : List (Expr S)}

theorem apps (h : ArgsStep as bs) (f : Expr S) : Beta (f.apps as) (f.apps bs) := by
  induction h generalizing f with
  | head h => exact (Beta.app_right h).apps _
  | tail h ih => exact ih (.app f _)

end ArgsStep

namespace Reduces

variable {S : Type u} {f f' : Expr S}

theorem apps (h : Reduces f f') (as : List (Expr S)) :
    Reduces (f.apps as) (f'.apps as) := h.lift _ (fun _ _ h => h.apps as)

end Reduces

namespace StronglyNormalizingArgs

variable {S : Type u}

theorem nil : StronglyNormalizingArgs ([] : List (Expr S)) := by
  apply Acc.intro
  intro bs h
  cases h

theorem cons {a : Expr S} {as : List (Expr S)} (ha : StronglyNormalizing a)
    (has : StronglyNormalizingArgs as) : StronglyNormalizingArgs (a :: as) := by
  induction ha generalizing as with
  | intro a ha iha =>
      induction has with
      | intro as has ihas =>
          apply Acc.intro
          intro bs h
          cases h with
          | head h => exact iha _ h (Acc.intro _ has)
          | tail h => exact ihas _ h

theorem of_forall {as : List (Expr S)} (h : ∀ a ∈ as, StronglyNormalizing a) :
    StronglyNormalizingArgs as := by
  induction as with
  | nil => exact nil
  | cons a as ih =>
      exact cons (h a (by simp)) (ih (fun b hb => h b (by simp [hb])))

theorem head {a : Expr S} {as : List (Expr S)}
    (h : StronglyNormalizingArgs (a :: as)) : StronglyNormalizing a :=
  Subrelation.accessible (fun h => ArgsStep.head h)
    (InvImage.accessible (fun a => a :: as) h)

theorem tail {a : Expr S} {as : List (Expr S)}
    (h : StronglyNormalizingArgs (a :: as)) : StronglyNormalizingArgs as :=
  Subrelation.accessible (fun h => ArgsStep.tail h)
    (InvImage.accessible (fun as => a :: as) h)

theorem of_mem {a : Expr S} {as : List (Expr S)}
    (h : StronglyNormalizingArgs as) (ha : a ∈ as) : StronglyNormalizing a := by
  induction as with
  | nil => cases ha
  | cons b bs ih =>
      rcases List.mem_cons.mp ha with rfl | ha
      · exact h.head
      · exact ih h.tail ha

end StronglyNormalizingArgs

namespace StronglyNormalizing

variable {S : Type u}

theorem apps_head {f : Expr S} {as : List (Expr S)}
    (h : StronglyNormalizing (f.apps as)) : StronglyNormalizing f :=
  of_map (fun h => h.apps as) h

theorem var_apps (n : Nat) {as : List (Expr S)} (has : StronglyNormalizingArgs as) :
    StronglyNormalizing ((Expr.var n : Expr S).apps as) := by
  induction has with
  | intro as has ih =>
      apply Acc.intro
      intro N hN
      obtain ⟨f, hf, rfl⟩ | ⟨bs, hbs, rfl⟩ :=
        hN.apps_inv (by intro A b heq; cases heq)
      · cases hf
      · exact ih _ hbs

/-- The source's head-expansion lemma, with any finite argument spine.
The proof uses nested accessibility induction, not a raised recursion budget
or an assumed maximal reduction height. -/
theorem head_expansion {A b a : Expr S} {as : List (Expr S)}
    (hA : StronglyNormalizing A) (hb : StronglyNormalizing b)
    (ha : StronglyNormalizing a) (has : StronglyNormalizingArgs as)
    (hc : StronglyNormalizing ((b.instantiate a).apps as)) :
    StronglyNormalizing ((Expr.app (.lam A b) a).apps as) := by
  induction hA generalizing b a as with
  | intro A hA ihA =>
      induction hb generalizing a as with
      | intro b hb ihb =>
          induction ha generalizing as with
          | intro a ha iha =>
              induction has with
              | intro as has ihas =>
                  apply Acc.intro
                  intro N hN
                  obtain ⟨f, hf, rfl⟩ | ⟨bs, hbs, rfl⟩ :=
                    hN.apps_inv (by intro D c heq; cases heq)
                  · cases hf with
                    | head => exact hc
                    | app_left hf =>
                        cases hf with
                        | lam_domain h =>
                            exact ihA _ h (Acc.intro _ hb) (Acc.intro _ ha)
                              (Acc.intro _ has) hc
                        | lam_body h =>
                            exact ihb _ h (Acc.intro _ ha) (Acc.intro _ has)
                              (hc.step ((h.subst (Expr.single a)).apps as))
                    | app_right h =>
                        exact iha _ h (Acc.intro _ has)
                          (hc.reduces ((Parallel.instantiate (Parallel.refl b)
                            (Parallel.of_beta h)).reduces.apps as))
                  · exact ihas _ hbs (hc.step (hbs.apps _))

end StronglyNormalizing

namespace Expr
variable {S : Type u}
/-- Only literal syntax descent, including both annotations. -/
inductive Child : Expr S → Expr S → Prop
  | app_left (f a) : Child f (.app f a)
  | app_right (f a) : Child a (.app f a)
  | lam_domain (D m) : Child D (.lam D m)
  | lam_body (D m) : Child m (.lam D m)
  | pi_domain (D E) : Child D (.pi D E)
  | pi_body (D E) : Child E (.pi D E)

inductive Subterm : Expr S → Expr S → Prop
  | refl (M) : Subterm M M
  | tail {M N L} : Subterm M N → Child N L → Subterm M L

namespace Child
variable {M N M' : Expr S}
theorem beta_lift (h : Child M N) (hr : Beta M M') :
    ∃ N', Beta N N' ∧ Child M' N' := by
  cases h with
  | app_left f a => exact ⟨_,.app_left hr,.app_left _ _⟩
  | app_right f a => exact ⟨_,.app_right hr,.app_right _ _⟩
  | lam_domain D m => exact ⟨_,.lam_domain hr,.lam_domain _ _⟩
  | lam_body D m => exact ⟨_,.lam_body hr,.lam_body _ _⟩
  | pi_domain D E => exact ⟨_,.pi_domain hr,.pi_domain _ _⟩
  | pi_body D E => exact ⟨_,.pi_body hr,.pi_body _ _⟩

theorem sn (h : Child M N) (hs : StronglyNormalizing N) : StronglyNormalizing M := by
  cases h with
  | app_left => exact hs.app_left
  | app_right => exact hs.app_right
  | lam_domain => exact hs.lam_domain
  | lam_body => exact hs.lam_body
  | pi_domain => exact hs.pi_domain
  | pi_body => exact hs.pi_body
end Child

namespace Subterm
variable {M N L M' : Expr S}
theorem trans (h : Subterm M N) (h' : Subterm N L) : Subterm M L := by
  induction h' with
  | refl => exact h
  | tail _ hc ih => exact .tail ih hc

theorem of_child (h : Child M N) : Subterm M N := .tail (.refl M) h

theorem beta_lift (h : Subterm M N) (hr : Beta M M') :
    ∃ N', Beta N N' ∧ Subterm M' N' := by
  induction h with
  | refl => exact ⟨_,hr,.refl _⟩
  | tail h hc ih =>
    obtain ⟨N',hr',hs'⟩ := ih
    obtain ⟨L',hr'',hc'⟩ := hc.beta_lift hr'
    exact ⟨L',hr'',.tail hs' hc'⟩

theorem sn (h : Subterm M N) (hs : StronglyNormalizing N) : StronglyNormalizing M := by
  induction h with
  | refl => exact hs
  | tail h hc ih => exact ih (hc.sn hs)
end Subterm
end Expr

namespace StronglyNormalizing
variable {S : Type u}
/-- The manuscript's simultaneous reduction-height/syntax-size induction,
proved directly from accessibility, without choosing a height or raising limits. -/
theorem induction_subterms {Q : Expr S → Prop}
    (step : ∀ M, StronglyNormalizing M → (∀ N, Beta M N → Q N) →
      (∀ N, Expr.Child N M → Q N) → Q M)
    {M : Expr S} (hs : StronglyNormalizing M) : Q M := by
  have aux : ∀ M : Expr S, StronglyNormalizing M → ∀ N, Expr.Subterm N M → Q N := by
    intro M hs
    induction hs with
    | intro M hred ih =>
      intro N
      have hreds (N : Expr S) (hNM : Expr.Subterm N M) : ∀ L, Beta N L → Q L := by
        intro L hr
        obtain ⟨M',hr',hLM'⟩ := hNM.beta_lift hr
        exact ih M' hr' L hLM'
      induction N with
      | var n =>
        intro hn
        exact step _ (hn.sn (.intro M hred)) (hreds _ hn) (fun _ hc => by cases hc)
      | sort s =>
        intro hn
        exact step _ (hn.sn (.intro M hred)) (hreds _ hn) (fun _ hc => by cases hc)
      | app f a ihf iha =>
        intro hn
        apply step _ (hn.sn (.intro M hred)) (hreds _ hn)
        intro L hc
        cases hc with
        | app_left => exact ihf ((Expr.Subterm.of_child (.app_left f a)).trans hn)
        | app_right => exact iha ((Expr.Subterm.of_child (.app_right f a)).trans hn)
      | lam D m ihD ihm =>
        intro hn
        apply step _ (hn.sn (.intro M hred)) (hreds _ hn)
        intro L hc
        cases hc with
        | lam_domain => exact ihD ((Expr.Subterm.of_child (.lam_domain D m)).trans hn)
        | lam_body => exact ihm ((Expr.Subterm.of_child (.lam_body D m)).trans hn)
      | pi D E ihD ihE =>
        intro hn
        apply step _ (hn.sn (.intro M hred)) (hreds _ hn)
        intro L hc
        cases hc with
        | pi_domain => exact ihD ((Expr.Subterm.of_child (.pi_domain D E)).trans hn)
        | pi_body => exact ihE ((Expr.Subterm.of_child (.pi_body D E)).trans hn)
  exact aux M hs M (.refl M)
/-- The child hypothesis can equivalently cover every proper syntactic part. -/
theorem induction_descendants {Q : Expr S → Prop}
    (step : ∀ M, StronglyNormalizing M → (∀ N, Beta M N → Q N) →
      (∀ N, (∃ K, Expr.Child K M ∧ Expr.Subterm N K) → Q N) → Q M)
    {M : Expr S} (hs : StronglyNormalizing M) : Q M := by
  have h : Q M ∧ ∀ N, Expr.Subterm N M → Q N := by
    apply induction_subterms (Q := fun M => Q M ∧ ∀ N, Expr.Subterm N M → Q N) _ hs
    intro M hM hr hc
    have hq : Q M := step M hM (fun N h => (hr N h).1) (by
      rintro N ⟨K,hK,hN⟩
      exact (hc K hK).2 N hN)
    refine ⟨hq, ?_⟩
    intro N hN
    cases hN with
    | refl => exact hq
    | tail hN hK => exact (hc _ hK).2 _ hN
  exact h.1
end StronglyNormalizing
end PureTypeSystem

end OAI

/- Original core module: Typing -/

namespace OAI

namespace PureTypeSystem

universe u

/-- A declaration's type viewed in the full newest-first context. -/
inductive Lookup {S : Type u} : List (Expr S) → Nat → Expr S → Prop
  | zero (A Γ) : Lookup (A :: Γ) 0 (A.rename Nat.succ)
  | succ {Γ n A} (B) : Lookup Γ n A → Lookup (B :: Γ) (n + 1) (A.rename Nat.succ)

namespace HasType

variable {S : Type u} {P : Specification S}

theorem sort_of_valid {Γ : List (Expr S)} (hΓ : ValidContext P Γ)
    {s t : S} (hst : P.axioms s t) : HasType P Γ (.sort s) (.sort t) := by
  induction hΓ with
  | nil => exact .ax hst
  | cons _ hA ih => exact .weaken ih hA

/-- Domain generation alone precedes substitution and does not need
any exchange or context-substitution theorem. -/
theorem product_domain {Γ : List (Expr S)} {M T : Expr S} (h : HasType P Γ M T) :
    ∀ A B, M = .pi A B → ∃ s, HasType P Γ A (.sort s) := by
  induction h with
  | ax h => intro A B heq; cases heq
  | var h ih => intro A B heq; cases heq
  | @weaken Γ M T C s hM hC ihM ihC =>
      intro A B heq
      cases M with
      | var n => cases heq
      | sort t => cases heq
      | app f a => cases heq
      | lam D b => cases heq
      | pi D E =>
          obtain ⟨rfl, rfl⟩ := Expr.pi.inj heq
          obtain ⟨t, ht⟩ := ihM D E rfl
          exact ⟨t, .weaken ht hC⟩
  | product hA hB hr ihA ihB =>
      intro A B heq
      cases heq
      exact ⟨_, hA⟩
  | abstraction hb hT ihb ihT => intro A B heq; cases heq
  | application hf ha ihf iha => intro A B heq; cases heq
  | conversion hM hB hconv ihM ihB => exact ihM

end HasType

namespace Converts

variable {S : Type u} {M N : Expr S}

theorem subst (h : Converts M N) (σ : Nat → Expr S) :
    Converts (M.subst σ) (N.subst σ) := by
  induction h with
  | rel a b h => exact .rel _ _ (h.subst σ)
  | refl a => exact .refl _
  | symm a b _ ih => exact .symm _ _ ih
  | trans a b c _ _ ih₁ ih₂ => exact .trans _ _ _ ih₁ ih₂

theorem rename (h : Converts M N) (ρ : Nat → Nat) :
    Converts (M.rename ρ) (N.rename ρ) := by
  induction h with
  | rel a b h => exact .rel _ _ (h.rename ρ)
  | refl a => exact .refl _
  | symm a b _ ih => exact .symm _ _ ih
  | trans a b c _ _ ih₁ ih₂ => exact .trans _ _ _ ih₁ ih₂

end Converts

/-- A simultaneous substitution respects each declared variable's exact type.
This is a premise only of the substitution metatheorem, not of the main target. -/
def TypedSubstitution {S : Type u} (P : Specification S)
    (Γ Δ : List (Expr S)) (σ : Nat → Expr S) : Prop :=
  ∀ n A, Lookup Γ n A → HasType P Δ (σ n) (A.subst σ)

namespace TypedSubstitution

variable {S : Type u} {P : Specification S} {Γ Δ : List (Expr S)}
    {σ : Nat → Expr S}

theorem tail {A : Expr S} (hσ : TypedSubstitution P (A :: Γ) Δ σ) :
    TypedSubstitution P Γ Δ (σ ∘ Nat.succ) := by
  intro n B hB
  have h := hσ (n + 1) (B.rename Nat.succ) (.succ A hB)
  simpa only [Expr.subst_rename, Function.comp_def] using h

theorem lift {A : Expr S} {s : S} (hσ : TypedSubstitution P Γ Δ σ)
    (hA : HasType P Δ (A.subst σ) (.sort s)) :
    TypedSubstitution P (A :: Γ) (A.subst σ :: Δ) (Expr.liftSub σ) := by
  intro n B hn
  cases hn with
  | zero =>
      have ht := HasType.var hA
      simpa only [Expr.liftSub_zero, Expr.subst_rename, Expr.rename_subst,
        Expr.liftSub_succ, Function.comp_def] using ht
  | succ C hn =>
      have ht := HasType.weaken (hσ _ _ hn) hA
      simpa only [Expr.liftSub_succ, Expr.rename_subst, Expr.subst_rename,
        Function.comp_def] using ht

end TypedSubstitution

namespace HasType

variable {S : Type u} {P : Specification S} {Γ : List (Expr S)} {M T : Expr S}

theorem subst (h : HasType P Γ M T) {Δ : List (Expr S)}
    (hΔ : ValidContext P Δ) (σ : Nat → Expr S) (hσ : TypedSubstitution P Γ Δ σ) :
    HasType P Δ (M.subst σ) (T.subst σ) := by
  induction h generalizing Δ σ with
  | ax h => exact sort_of_valid hΔ h
  | var h ih => exact hσ _ _ (.zero _ _)
  | weaken hM hA ihM ihA =>
      simpa only [Expr.subst_rename] using ihM hΔ (σ ∘ Nat.succ) hσ.tail
  | product hA hB hr ihA ihB =>
      have hA' := ihA hΔ σ hσ
      exact .product hA' (ihB (.cons hΔ hA') _ (hσ.lift hA')) hr
  | @abstraction Γ A b B s hb hprod ihb ihprod =>
      have hprod' := ihprod hΔ σ hσ
      obtain ⟨t, hA'⟩ := hprod'.product_domain _ _ rfl
      exact .abstraction (ihb (.cons hΔ hA') _ (hσ.lift hA')) hprod'
  | application hf ha ihf iha =>
      simpa only [Expr.subst, Expr.instantiate_subst] using
        (HasType.application (ihf hΔ σ hσ) (iha hΔ σ hσ))
  | conversion hM hB hconv ihM ihB =>
      exact .conversion (ihM hΔ σ hσ) (ihB hΔ σ hσ) (hconv.subst σ)

end HasType

namespace Expr

variable {S : Type u}

theorem subst_var_rename (M : Expr S) (ρ : Nat → Nat) :
    M.subst (var ∘ ρ) = M.rename ρ := by
  rw [← subst_rename, subst_var]

@[simp] theorem subst_lift_single (M a : Expr S) :
    (M.rename Nat.succ).subst (single a) = M := by
  rw [subst_rename]
  exact subst_var M

end Expr

namespace HasType

variable {S : Type u} {P : Specification S}

theorem lookup {Γ : List (Expr S)} (hΓ : ValidContext P Γ)
    {n : Nat} {A : Expr S} (hn : Lookup Γ n A) : HasType P Γ (.var n) A := by
  induction hΓ generalizing n A with
  | nil => cases hn
  | cons hΓ hB ih =>
      cases hn with
      | zero => exact .var hB
      | succ _ hn => exact .weaken (ih hn) hB

end HasType

namespace TypedSubstitution

variable {S : Type u} {P : Specification S}

theorem identity {Γ : List (Expr S)} (hΓ : ValidContext P Γ) :
    TypedSubstitution P Γ Γ Expr.var := by
  intro n A hn
  simpa only [Expr.subst_var] using HasType.lookup hΓ hn

theorem weaken {Γ : List (Expr S)} {A : Expr S} {s : S}
    (hA : HasType P Γ A (.sort s)) :
    TypedSubstitution P Γ (A :: Γ) (Expr.var ∘ Nat.succ) := by
  intro n B hn
  simpa only [Expr.subst_var_rename, Function.comp_apply, Expr.rename] using
    (HasType.weaken (HasType.lookup hA.valid hn) hA)

theorem single {Γ : List (Expr S)} {a A : Expr S} (ha : HasType P Γ a A) :
    TypedSubstitution P (A :: Γ) Γ (Expr.single a) := by
  intro n B hn
  cases hn with
  | zero => simpa only [Expr.single, Expr.subst_lift_single] using ha
  | succ _ hn =>
      simpa only [Expr.single, Expr.subst_lift_single] using HasType.lookup ha.valid hn

end TypedSubstitution

namespace HasType

section

variable {S : Type u} {P : Specification S} {Γ Δ : List (Expr S)}

theorem rename {M A : Expr S} (h : HasType P Γ M A)
    (hΔ : ValidContext P Δ) (ρ : Nat → Nat)
    (hρ : ∀ n B, Lookup Γ n B → HasType P Δ (.var (ρ n)) (B.rename ρ)) :
    HasType P Δ (M.rename ρ) (A.rename ρ) := by
  have hσ : TypedSubstitution P Γ Δ (Expr.var ∘ ρ) := by
    intro n B hn
    simpa only [Expr.subst_var_rename, Function.comp_apply] using hρ n B hn
  simpa only [Expr.subst_var_rename] using h.subst hΔ (Expr.var ∘ ρ) hσ

theorem instantiate {A b B a : Expr S}
    (hb : HasType P (A :: Γ) b B) (ha : HasType P Γ a A) :
    HasType P Γ (b.instantiate a) (B.instantiate a) :=
  hb.subst ha.valid _ (TypedSubstitution.single ha)

theorem weaken_under {A D b B : Expr S} {s t : S}
    (hb : HasType P (A :: Γ) b B) (hA : HasType P Γ A (.sort s))
    (hD : HasType P Γ D (.sort t)) :
    HasType P (A.rename Nat.succ :: D :: Γ)
      (b.rename (Expr.liftRen Nat.succ)) (B.rename (Expr.liftRen Nat.succ)) := by
  have hA' : HasType P (D :: Γ) (A.subst (Expr.var ∘ Nat.succ)) (.sort s) := by
    simpa only [Expr.subst_var_rename, Expr.rename] using HasType.weaken hA hD
  have hσ := (TypedSubstitution.weaken hD).lift hA'
  have h := hb.subst (.cons (.cons hD.valid hD) hA') _ hσ
  have heq : Expr.liftSub (Expr.var ∘ Nat.succ : Nat → Expr S) =
      Expr.var ∘ Expr.liftRen Nat.succ := by
    funext n
    cases n <;> rfl
  simpa only [heq, Expr.subst_var_rename] using h

theorem context_head_conversion {A A' b B : Expr S} {s t : S}
    (hb : HasType P (A :: Γ) b B) (hA : HasType P Γ A (.sort s))
    (hA' : HasType P Γ A' (.sort t)) (hc : Converts A A') :
    HasType P (A' :: Γ) b B := by
  have hσ : TypedSubstitution P (A :: Γ) (A' :: Γ) Expr.var := by
    intro n D hn
    rw [Expr.subst_var]
    cases hn with
    | zero =>
        exact .conversion (.var hA') (.weaken hA hA')
          (.symm _ _ (hc.rename Nat.succ))
    | succ _ hn => exact .weaken (lookup hA.valid hn) hA'
  simpa only [Expr.subst_var] using hb.subst (.cons hA'.valid hA') _ hσ

end

variable {S : Type u} {P : Specification S}

/-- Generation is stated up to conversion, without any functionality premise. -/
def Generation (P : Specification S) (Γ : List (Expr S))
    (M T : Expr S) : Prop :=
  match M with
  | .var n => ∃ A, Lookup Γ n A ∧ Converts T A
  | .sort s => ∃ t, P.axioms s t ∧ Converts T (.sort t)
  | .app f a => ∃ A B, HasType P Γ f (.pi A B) ∧ HasType P Γ a A ∧
      Converts T (B.instantiate a)
  | .lam A b => ∃ B s, HasType P (A :: Γ) b B ∧
      HasType P Γ (.pi A B) (.sort s) ∧ Converts T (.pi A B)
  | .pi A B => ∃ s₁ s₂ s₃, HasType P Γ A (.sort s₁) ∧
      HasType P (A :: Γ) B (.sort s₂) ∧ P.rule s₁ s₂ s₃ ∧
      Converts T (.sort s₃)

theorem generation {Γ : List (Expr S)} {M T : Expr S}
    (h : HasType P Γ M T) : Generation P Γ M T := by
  induction h with
  | ax h => exact ⟨_, h, .refl _⟩
  | var h ih => exact ⟨_, .zero _ _, .refl _⟩
  | @weaken Γ M T D s hM hD ihM ihD =>
      cases M with
      | var n =>
          obtain ⟨A, hA, hc⟩ := ihM
          exact ⟨_, .succ D hA, hc.rename Nat.succ⟩
      | sort t =>
          obtain ⟨t', ht, hc⟩ := ihM
          exact ⟨t', ht, hc.rename Nat.succ⟩
      | app f a =>
          obtain ⟨A, B, hf, ha, hc⟩ := ihM
          refine ⟨_, _, .weaken hf hD, .weaken ha hD, ?_⟩
          simpa only [Expr.instantiate_rename] using hc.rename Nat.succ
      | lam A b =>
          obtain ⟨B, t, hb, hPi, hc⟩ := ihM
          obtain ⟨r, hA⟩ := hPi.product_domain _ _ rfl
          exact ⟨_, t, hb.weaken_under hA hD, .weaken hPi hD,
            hc.rename Nat.succ⟩
      | pi A B =>
          obtain ⟨t₁, t₂, t₃, hA, hB, hr, hc⟩ := ihM
          exact ⟨t₁, t₂, t₃, .weaken hA hD, hB.weaken_under hA hD,
            hr, hc.rename Nat.succ⟩
  | product hA hB hr ihA ihB => exact ⟨_, _, _, hA, hB, hr, .refl _⟩
  | abstraction hb hPi ihb ihPi => exact ⟨_, _, hb, hPi, .refl _⟩
  | application hf ha ihf iha => exact ⟨_, _, hf, ha, .refl _⟩
  | @conversion Γ M A B s hM hB hc ihM ihB =>
      cases M with
      | var n =>
          obtain ⟨D, hD, hd⟩ := ihM
          exact ⟨D, hD, .trans _ _ _ (.symm _ _ hc) hd⟩
      | sort t =>
          obtain ⟨r, hr, hd⟩ := ihM
          exact ⟨r, hr, .trans _ _ _ (.symm _ _ hc) hd⟩
      | app f a =>
          obtain ⟨D, E, hf, ha, hd⟩ := ihM
          exact ⟨D, E, hf, ha, .trans _ _ _ (.symm _ _ hc) hd⟩
      | lam D b =>
          obtain ⟨E, r, hb, hPi, hd⟩ := ihM
          exact ⟨E, r, hb, hPi, .trans _ _ _ (.symm _ _ hc) hd⟩
      | pi D E =>
          obtain ⟨r₁, r₂, r₃, hD, hE, hr, hd⟩ := ihM
          exact ⟨r₁, r₂, r₃, hD, hE, hr, .trans _ _ _ (.symm _ _ hc) hd⟩

theorem generation_pi {Γ : List (Expr S)} {A B T : Expr S}
    (h : HasType P Γ (.pi A B) T) :
    ∃ s₁ s₂ s₃, HasType P Γ A (.sort s₁) ∧
      HasType P (A :: Γ) B (.sort s₂) ∧ P.rule s₁ s₂ s₃ ∧
      Converts T (.sort s₃) := h.generation

theorem generation_lam {Γ : List (Expr S)} {A b T : Expr S}
    (h : HasType P Γ (.lam A b) T) :
    ∃ B s, HasType P (A :: Γ) b B ∧ HasType P Γ (.pi A B) (.sort s) ∧
      Converts T (.pi A B) := h.generation

theorem generation_app {Γ : List (Expr S)} {f a T : Expr S}
    (h : HasType P Γ (.app f a) T) :
    ∃ A B, HasType P Γ f (.pi A B) ∧ HasType P Γ a A ∧
      Converts T (B.instantiate a) := h.generation

/-- Correctness of types, including the unsorted literal-sort alternative. -/
theorem regularity {Γ : List (Expr S)} {M A : Expr S} (h : HasType P Γ M A) :
    (∃ s, A = .sort s) ∨ (∃ s, HasType P Γ A (.sort s)) := by
  induction h with
  | ax h => exact .inl ⟨_, rfl⟩
  | var h ih => exact .inr ⟨_, .weaken h h⟩
  | weaken hM hD ihM ihD =>
      obtain ⟨s, rfl⟩ | ⟨s, hA⟩ := ihM
      · exact .inl ⟨s, rfl⟩
      · exact .inr ⟨s, .weaken hA hD⟩
  | product hA hB hr ihA ihB => exact .inl ⟨_, rfl⟩
  | abstraction hb hPi ihb ihPi => exact .inr ⟨_, hPi⟩
  | application hf ha ihf iha =>
      obtain ⟨s, heq⟩ | ⟨s, hPi⟩ := ihf
      · cases heq
      · obtain ⟨s₁, s₂, s₃, hA, hB, hr, hc⟩ := hPi.generation_pi
        exact .inr ⟨s₂, hB.instantiate ha⟩
  | conversion hM hA hc ihM ihA => exact .inr ⟨_, hA⟩

theorem product_type_sorted {Γ : List (Expr S)} {M A B : Expr S}
    (h : HasType P Γ M (.pi A B)) : ∃ s, HasType P Γ (.pi A B) (.sort s) := by
  obtain ⟨s, heq⟩ | hs := h.regularity
  · cases heq
  · exact hs

end HasType

namespace Converts

variable {S : Type u}

theorem pi {A A' B B' : Expr S} (hA : Converts A A') (hB : Converts B B') :
    Converts (.pi A B) (.pi A' B') := by
  obtain ⟨D, hD, hD'⟩ := hA.join
  obtain ⟨E, hE, hE'⟩ := hB.join
  exact .trans _ _ _ (hD.pi hE).converts (.symm _ _ (hD'.pi hE').converts)

theorem pi_not_sort {A B : Expr S} {s : S} : ¬ Converts (.pi A B) (.sort s) := by
  intro h
  obtain ⟨N, hN, hs⟩ := h.join
  have heq := (Normal.sort s).reduces_eq hs
  obtain ⟨D, E, hDE, _, _⟩ := hN.pi_inv
  cases heq.trans hDE

theorem sort_inj {s t : S} (h : Converts (Expr.sort s) (.sort t)) : s = t :=
  Expr.sort.inj ((Normal.sort s).eq_of_converts (Normal.sort t) h)

theorem instantiate_right {a a' : Expr S} (h : Converts a a') (B : Expr S) :
    Converts (B.instantiate a) (B.instantiate a') := by
  induction h with
  | rel a a' h =>
      exact (Parallel.instantiate (Parallel.refl B) (Parallel.of_beta h)).reduces.converts
  | refl a => exact .refl _
  | symm a b h ih => exact .symm _ _ ih
  | trans a b c hab hbc ih₁ ih₂ => exact .trans _ _ _ ih₁ ih₂

end Converts

namespace HasType

variable {S : Type u} {P : Specification S}

theorem application_type_sorted_aux {Γ : List (Expr S)} {M T : Expr S}
    (h : HasType P Γ M T) :
    ∀ f a, M = .app f a → ∃ s, HasType P Γ T (.sort s) := by
  induction h with
  | ax h => intro f a heq; cases heq
  | var h ih => intro f a heq; cases heq
  | @weaken Γ M T D s hM hD ihM ihD =>
      intro f a heq
      cases M with
      | var n => cases heq
      | sort t => cases heq
      | lam A b => cases heq
      | pi A B => cases heq
      | app g b =>
          obtain ⟨r, hr⟩ := ihM g b rfl
          exact ⟨r, .weaken hr hD⟩
  | product hA hB hr ihA ihB => intro f a heq; cases heq
  | abstraction hb hPi ihb ihPi => intro f a heq; cases heq
  | application hf ha ihf iha =>
      intro f a heq
      obtain ⟨s, hPi⟩ := hf.product_type_sorted
      obtain ⟨s₁, s₂, s₃, hA, hB, hr, hc⟩ := hPi.generation_pi
      exact ⟨s₂, hB.instantiate ha⟩
  | conversion hM hT hc ihM ihT => intro f a heq; exact ⟨_, hT⟩

theorem application_type_sorted {Γ : List (Expr S)} {f a T : Expr S}
    (h : HasType P Γ (.app f a) T) : ∃ s, HasType P Γ T (.sort s) :=
  h.application_type_sorted_aux f a rfl

theorem abstraction_type_sorted {Γ : List (Expr S)} {A b T : Expr S}
    (h : HasType P Γ (.lam A b) T) : ∃ s, HasType P Γ T (.sort s) := by
  obtain ⟨s, hT⟩ | hs := h.regularity
  · obtain ⟨B, t, hb, hPi, hc⟩ := h.generation_lam
    subst T
    exact False.elim (Converts.pi_not_sort (.symm _ _ hc))
  · exact hs

/-- Reconstructing a sorted expression at its original expected type does not
require a sorting of a terminal (unsorted) sort. -/
theorem conversion_from_sort {Γ : List (Expr S)} {M T : Expr S} {s : S}
    (h : HasType P Γ M (.sort s))
    (hT : (∃ t, T = .sort t) ∨ ∃ t, HasType P Γ T (.sort t))
    (hc : Converts T (.sort s)) : HasType P Γ M T := by
  obtain ⟨t, rfl⟩ | ⟨t, ht⟩ := hT
  · have heq := hc.sort_inj
    subst t
    exact h
  · exact .conversion h ht (.symm _ _ hc)

/-- Subject reduction at the exact original type, including binder annotations. -/
theorem subject_reduction {Γ : List (Expr S)} {M N T : Expr S}
    (h : HasType P Γ M T) (hr : Beta M N) : HasType P Γ N T := by
  induction hr generalizing Γ T with
  | head A b a =>
      obtain ⟨r, hT⟩ := h.application_type_sorted
      obtain ⟨D, E, hf, ha, hc⟩ := h.generation_app
      obtain ⟨B, s, hb, hPi, hp⟩ := hf.generation_lam
      obtain ⟨hDA, hEB⟩ := hp.product_compatibility
      obtain ⟨t, hA⟩ := hPi.product_domain A B rfl
      have haA := HasType.conversion ha hA hDA
      have hresult := hb.instantiate haA
      exact .conversion hresult hT (.trans _ _ _
        (.symm _ _ (hEB.subst (Expr.single a))) (.symm _ _ hc))
  | app_left hr ih =>
      obtain ⟨r, hT⟩ := h.application_type_sorted
      obtain ⟨A, B, hf, ha, hc⟩ := h.generation_app
      exact .conversion (.application (ih hf) ha) hT (.symm _ _ hc)
  | @app_right f a a' hr ih =>
      obtain ⟨r, hT⟩ := h.application_type_sorted
      obtain ⟨A, B, hf, ha, hc⟩ := h.generation_app
      exact .conversion (.application hf (ih ha)) hT (.trans _ _ _
        (.symm _ _ ((show Converts a a' from .rel _ _ hr).instantiate_right B)) (.symm _ _ hc))
  | @lam_domain A A' b hr ih =>
      obtain ⟨r, hT⟩ := h.abstraction_type_sorted
      obtain ⟨B, s, hb, hPi, hc⟩ := h.generation_lam
      obtain ⟨s₁, s₂, s₃, hA, hB, hrule, hs⟩ := hPi.generation_pi
      have hA' := ih hA
      have heq : Converts A A' := .rel _ _ hr
      have hb' := hb.context_head_conversion hA hA' heq
      have hB' := hB.context_head_conversion hA hA' heq
      have hp' := HasType.product hA' hB' hrule
      exact .conversion (.abstraction hb' hp') hT (.trans _ _ _
        (.symm _ _ (heq.pi (.refl B))) (.symm _ _ hc))
  | lam_body hr ih =>
      obtain ⟨r, hT⟩ := h.abstraction_type_sorted
      obtain ⟨B, s, hb, hPi, hc⟩ := h.generation_lam
      exact .conversion (.abstraction (ih hb) hPi) hT (.symm _ _ hc)
  | pi_domain hr ih =>
      obtain ⟨s₁, s₂, s₃, hA, hB, hrule, hc⟩ := h.generation_pi
      have hA' := ih hA
      have hB' := hB.context_head_conversion hA hA' (.rel _ _ hr)
      exact (HasType.product hA' hB' hrule).conversion_from_sort h.regularity hc
  | pi_body hr ih =>
      obtain ⟨s₁, s₂, s₃, hA, hB, hrule, hc⟩ := h.generation_pi
      exact (HasType.product hA (ih hB) hrule).conversion_from_sort h.regularity hc

theorem subject_reduces {Γ : List (Expr S)} {M N T : Expr S}
    (h : HasType P Γ M T) (hr : Reduces M N) : HasType P Γ N T := by
  induction hr with
  | refl => exact h
  | tail _ hr ih => exact ih.subject_reduction hr

end HasType

namespace Normal

variable {S : Type u} {M : Expr S}

theorem of_map {f : Expr S → Expr S}
    (hf : ∀ {a b}, Beta a b → Beta (f a) (f b)) (h : Normal (f M)) : Normal M :=
  fun N hN => h (f N) (hf hN)

theorem app_left {f a : Expr S} (h : Normal (.app f a)) : Normal f :=
  of_map Beta.app_left h

theorem app_right {f a : Expr S} (h : Normal (.app f a)) : Normal a :=
  of_map Beta.app_right h

theorem lam_domain {A b : Expr S} (h : Normal (.lam A b)) : Normal A :=
  of_map Beta.lam_domain h

theorem lam_body {A b : Expr S} (h : Normal (.lam A b)) : Normal b :=
  of_map Beta.lam_body h

theorem pi_domain {A B : Expr S} (h : Normal (.pi A B)) : Normal A :=
  of_map Beta.pi_domain h

theorem pi_body {A B : Expr S} (h : Normal (.pi A B)) : Normal B :=
  of_map Beta.pi_body h

theorem pi {A B : Expr S} (hA : Normal A) (hB : Normal B) : Normal (.pi A B) := by
  intro N h
  cases h with
  | pi_domain h => exact hA _ h
  | pi_body h => exact hB _ h

theorem lam {A b : Expr S} (hA : Normal A) (hb : Normal b) : Normal (.lam A b) := by
  intro N h
  cases h with
  | lam_domain h => exact hA _ h
  | lam_body h => exact hb _ h

end Normal

namespace Expr

variable {S : Type u}

/-- Choice of the unique full beta normal form when it exists. The fallback
is irrelevant on legal syntax under the standing system-wide WN hypothesis. -/
noncomputable def normalForm (M : Expr S) : Expr S := by
  classical
  exact if h : WeaklyNormalizing M then Classical.choose h else M

theorem normalForm_spec {M : Expr S} (h : WeaklyNormalizing M) :
    Reduces M M.normalForm ∧ Normal M.normalForm := by
  rw [normalForm, dite_eq_left h]
  exact Classical.choose_spec h

theorem normalForm_eq {M N : Expr S} (hr : Reduces M N) (hn : Normal N) :
    M.normalForm = N := by
  have h : WeaklyNormalizing M := ⟨N, hr, hn⟩
  obtain ⟨hm, hnm⟩ := normalForm_spec h
  exact hnm.eq_of_converts hn (.trans _ _ _ (.symm _ _ hm.converts) hr.converts)

@[simp] theorem normalForm_of_normal {M : Expr S} (h : Normal M) : M.normalForm = M :=
  normalForm_eq .refl h

theorem normalForm_converts {M N : Expr S} (hM : WeaklyNormalizing M)
    (hN : WeaklyNormalizing N) (hc : Converts M N) : M.normalForm = N.normalForm := by
  obtain ⟨hm, hnm⟩ := normalForm_spec hM
  obtain ⟨hn, hnn⟩ := normalForm_spec hN
  exact hnm.eq_of_converts hnn (.trans _ _ _ (.symm _ _ hm.converts)
    (.trans _ _ _ hc hn.converts))

theorem normalForm_pi {A B : Expr S}
    (hA : WeaklyNormalizing A) (hB : WeaklyNormalizing B) :
    (Expr.pi A B).normalForm = .pi A.normalForm B.normalForm :=
  normalForm_eq ((normalForm_spec hA).1.pi (normalForm_spec hB).1)
    ((normalForm_spec hA).2.pi (normalForm_spec hB).2)

end Expr

namespace HasType

variable {S : Type u} {P : Specification S} {Γ : List (Expr S)} {M A : Expr S}

theorem weaklyNormalizing (h : HasType P Γ M A) (hw : SystemWeaklyNormalizing P) :
    WeaklyNormalizing M := hw Γ h.valid M ⟨A, .inl h⟩

theorem type_weaklyNormalizing (h : HasType P Γ M A) (hw : SystemWeaklyNormalizing P) :
    WeaklyNormalizing A := hw Γ h.valid A ⟨M, .inr h⟩

theorem normalForm (h : HasType P Γ M A) (hw : SystemWeaklyNormalizing P) :
    HasType P Γ M.normalForm A :=
  h.subject_reduces (Expr.normalForm_spec (h.weaklyNormalizing hw)).1

theorem normalize_type (h : HasType P Γ M A) (hw : SystemWeaklyNormalizing P) :
    HasType P Γ M A.normalForm := by
  obtain ⟨s, rfl⟩ | ⟨s, hA⟩ := h.regularity
  · simpa only [Expr.normalForm_of_normal (Normal.sort s)] using h
  · exact .conversion h (hA.normalForm hw)
      (Expr.normalForm_spec (h.type_weaklyNormalizing hw)).1.converts

end HasType

/-- The variable-headed spines used by the manuscript. -/
inductive Neutral {S : Type u} : Expr S → Prop
  | var (n) : Neutral (.var n)
  | app {f a} : Neutral f → Neutral (.app f a)

namespace HasType

variable {S : Type u} {P : Specification S} {Γ : List (Expr S)}

theorem sort_cannot_have_product_type {s : S} {A B : Expr S}
    (h : HasType P Γ (.sort s) (.pi A B)) : False := by
  obtain ⟨t, ht, hc⟩ := h.generation
  exact Converts.pi_not_sort hc

theorem product_cannot_have_product_type {A B D E : Expr S}
    (h : HasType P Γ (.pi A B) (.pi D E)) : False := by
  obtain ⟨s₁, s₂, s₃, hA, hB, hr, hc⟩ := h.generation_pi
  exact Converts.pi_not_sort hc

theorem lambda_cannot_have_sort_type {A b : Expr S} {s : S}
    (h : HasType P Γ (.lam A b) (.sort s)) : False := by
  obtain ⟨B, t, hb, hPi, hc⟩ := h.generation_lam
  exact Converts.pi_not_sort (.symm _ _ hc)

/-- No functionality is needed for neutral uniqueness: the declaration fixes
its head type, and product compatibility fixes every successive codomain. -/
theorem neutral_unique {M A B : Expr S} (hn : Neutral M)
    (hA : HasType P Γ M A) (hB : HasType P Γ M B) : Converts A B := by
  induction hn generalizing A B with
  | var n =>
      obtain ⟨D, hD, hcD⟩ := hA.generation
      obtain ⟨E, hE, hcE⟩ := hB.generation
      have heq : D = E := by
        clear hA hB hcD hcE
        induction hD generalizing E with
        | zero A Γ => cases hE; rfl
        | succ C hD ih =>
            cases hE with
            | succ _ hE => exact congrArg (Expr.rename Nat.succ) (ih _ hE)
      subst E
      exact .trans _ _ _ hcD (.symm _ _ hcE)
  | @app f a hn ih =>
      obtain ⟨D, E, hf, ha, hc⟩ := hA.generation_app
      obtain ⟨D', E', hf', ha', hc'⟩ := hB.generation_app
      have he := (ih hf hf').product_compatibility.2
      exact .trans _ _ _ hc (.trans _ _ _ (he.subst (Expr.single a)) (.symm _ _ hc'))

theorem normal_shape {M T : Expr S} (h : HasType P Γ M T) (hn : Normal M) :
    (∃ s, M = .sort s) ∨ Neutral M ∨ (∃ A B, M = .pi A B) ∨
      (∃ A b, M = .lam A b) := by
  induction M generalizing T with
  | var n => exact .inr (.inl (.var n))
  | sort s => exact .inl ⟨s, rfl⟩
  | lam A b ihA ihb => exact .inr (.inr (.inr ⟨A, b, rfl⟩))
  | pi A B ihA ihB => exact .inr (.inr (.inl ⟨A, B, rfl⟩))
  | app f a ihf iha =>
      obtain ⟨D, E, hf, ha, hc⟩ := h.generation_app
      obtain ⟨s, rfl⟩ | hnf | ⟨A, B, rfl⟩ | ⟨A, b, rfl⟩ := ihf hf hn.app_left
      · exact False.elim hf.sort_cannot_have_product_type
      · exact .inr (.inl (.app hnf))
      · exact False.elim hf.product_cannot_have_product_type
      · exact False.elim (hn _ (.head A b a))

theorem sorted_normal_shape {M : Expr S} {s : S}
    (h : HasType P Γ M (.sort s)) (hn : Normal M) :
    (∃ t, M = .sort t) ∨ Neutral M ∨ (∃ A B, M = .pi A B) := by
  obtain h | h | h | ⟨A, b, rfl⟩ := h.normal_shape hn
  · exact .inl h
  · exact .inr (.inl h)
  · exact .inr (.inr h)
  · exact False.elim h.lambda_cannot_have_sort_type

end HasType

/-! Finite syntax-directed typing trees, with all generation witnesses
retained; no functionality or unique sort choices are imposed. -/

inductive TypingTree {S : Type u} (P : Specification S) :
    List (Expr S) → Expr S → Expr S → Type u
  | var {Γ n A T} (typing : HasType P Γ (.var n) T)
      (declaration : Lookup Γ n A) (convert : Converts T A) : TypingTree P Γ (.var n) T
  | sort {Γ s t T} (typing : HasType P Γ (.sort s) T)
      (axioms : P.axioms s t) (convert : Converts T (.sort t)) : TypingTree P Γ (.sort s) T
  | product {Γ A B a b c T} (typing : HasType P Γ (.pi A B) T)
      (domain : TypingTree P Γ A (.sort a)) (body : TypingTree P (A :: Γ) B (.sort b))
      (rule : P.rule a b c) (convert : Converts T (.sort c)) : TypingTree P Γ (.pi A B) T
  | abstraction {Γ A b B a s T} (typing : HasType P Γ (.lam A b) T)
      (annotation : TypingTree P Γ A (.sort a)) (body : TypingTree P (A :: Γ) b B)
      (product : HasType P Γ (.pi A B) (.sort s)) (convert : Converts T (.pi A B)) :
      TypingTree P Γ (.lam A b) T
  | application {Γ f a A B T} (typing : HasType P Γ (.app f a) T)
      (function : TypingTree P Γ f (.pi A B)) (argument : TypingTree P Γ a A)
      (convert : Converts T (B.instantiate a)) : TypingTree P Γ (.app f a) T

namespace TypingTree
variable {S : Type u} {P : Specification S} {Γ : List (Expr S)} {M T : Expr S}

/-- Root expected judgment, including the potentially unsorted final sort. -/
theorem typing (t : TypingTree P Γ M T) : HasType P Γ M T := by
  cases t with
  | var h _ _ => exact h
  | sort h _ _ => exact h
  | product h _ _ _ _ => exact h
  | abstraction h _ _ _ _ => exact h
  | application h _ _ _ => exact h

/-- Retarget only the root; all core data and all children are unchanged. -/
def retarget {T' : Expr S} (t : TypingTree P Γ M T)
    (ht : HasType P Γ M T') (hc : Converts T' T) : TypingTree P Γ M T' := by
  cases t with
  | var _ hd he => exact .var ht hd (.trans _ _ _ hc he)
  | sort _ ha he => exact .sort ht ha (.trans _ _ _ hc he)
  | product _ d b hr he => exact .product ht d b hr (.trans _ _ _ hc he)
  | abstraction _ d b hp he => exact .abstraction ht d b hp (.trans _ _ _ hc he)
  | application _ f a he => exact .application ht f a (.trans _ _ _ hc he)

/-- Generation proves existence of finite stored trees without eliminating a
Prop-valued typing derivation into data or assuming unique formation triples. -/
theorem nonempty (h : HasType P Γ M T) : Nonempty (TypingTree P Γ M T) := by
  induction M generalizing Γ T with
  | var n =>
      obtain ⟨A, hd, hc⟩ := h.generation
      exact ⟨.var h hd hc⟩
  | sort s =>
      obtain ⟨t, ha, hc⟩ := h.generation
      exact ⟨.sort h ha hc⟩
  | pi A B ihA ihB =>
      obtain ⟨a, b, c, hA, hB, hr, hc⟩ := h.generation_pi
      exact ⟨.product h (ihA hA).some (ihB hB).some hr hc⟩
  | lam A b ihA ihb =>
      obtain ⟨B, s, hb, hp, hc⟩ := h.generation_lam
      obtain ⟨a, a', c, hA, _, _, _⟩ := hp.generation_pi
      exact ⟨.abstraction h (ihA hA).some (ihb hb).some hp hc⟩
  | app f a ihf iha =>
      obtain ⟨A, B, hf, ha, hc⟩ := h.generation_app
      exact ⟨.application h (ihf hf).some (iha ha).some hc⟩

noncomputable def ofTyping (h : HasType P Γ M T) : TypingTree P Γ M T := (nonempty h).some

/-- A genuine variable renaming sends declarations to declarations, rather
than merely to terms that happen to have convertible types. -/
def DeclRenaming (Γ Δ : List (Expr S)) (ρ : Nat → Nat) : Prop :=
  ∀ n A, Lookup Γ n A → Lookup Δ (ρ n) (A.rename ρ)

namespace DeclRenaming
variable {Δ : List (Expr S)} {ρ : Nat → Nat}
theorem typed (h : DeclRenaming Γ Δ ρ) (hΔ : ValidContext P Δ) :
    ∀ n A, Lookup Γ n A → HasType P Δ (.var (ρ n)) (A.rename ρ) :=
  fun n A hn => HasType.lookup hΔ (h n A hn)

theorem lift (h : DeclRenaming Γ Δ ρ) (A : Expr S) :
    DeclRenaming (A :: Γ) (A.rename ρ :: Δ) (Expr.liftRen ρ) := by
  intro n B hn
  cases hn with
  | zero =>
      simpa only [Expr.liftRen, Expr.rename_comp, Function.comp_def] using Lookup.zero (A.rename ρ) Δ
  | succ _ hn =>
      have hh := Lookup.succ (A.rename ρ) (h _ _ hn)
      simpa only [Expr.liftRen, Expr.rename_comp, Function.comp_def] using hh
end DeclRenaming

/-- Thinning/reindexing transports every stored witness and preserves the
whole tree shape. Binder annotations are transported too. -/
noncomputable def rename (t : TypingTree P Γ M T) {Δ : List (Expr S)} (hΔ : ValidContext P Δ)
    (ρ : Nat → Nat) (hρ : DeclRenaming Γ Δ ρ) :
    TypingTree P Δ (M.rename ρ) (T.rename ρ) := by
  induction t generalizing Δ ρ with
  | var h hd hc => exact .var (h.rename hΔ ρ (hρ.typed hΔ)) (hρ _ _ hd) (hc.rename ρ)
  | sort h ha hc => exact .sort (h.rename hΔ ρ (hρ.typed hΔ)) ha (hc.rename ρ)
  | @product Γ A B a b c T h d e hr hc ihd ihe =>
      have hA : HasType P Δ (A.rename ρ) (.sort a) := d.typing.rename hΔ ρ (hρ.typed hΔ)
      exact .product (h.rename hΔ ρ (hρ.typed hΔ)) (ihd hΔ ρ hρ)
        (ihe (.cons hΔ hA) _ (hρ.lift A)) hr (hc.rename ρ)
  | @abstraction Γ A b B a s T h d e hp hc ihd ihe =>
      have hA : HasType P Δ (A.rename ρ) (.sort a) := d.typing.rename hΔ ρ (hρ.typed hΔ)
      exact .abstraction (h.rename hΔ ρ (hρ.typed hΔ)) (ihd hΔ ρ hρ)
        (ihe (.cons hΔ hA) _ (hρ.lift A)) (hp.rename hΔ ρ (hρ.typed hΔ)) (hc.rename ρ)
  | application h f a hc ihf iha =>
      apply TypingTree.application (h.rename hΔ ρ (hρ.typed hΔ)) (ihf hΔ ρ hρ) (iha hΔ ρ hρ)
      simpa only [Expr.instantiate_rename] using hc.rename ρ

namespace DeclRenaming
variable {Δ : List (Expr S)}
theorem weaken (A : Expr S) : DeclRenaming Γ (A :: Γ) Nat.succ :=
  fun _ _ h => .succ A h
end DeclRenaming

/-- Substitution carries stored trees at all declaration occurrences. -/
abbrev StoredSubstitution (P : Specification S) (Γ Δ : List (Expr S))
    (σ : Nat → Expr S) : Type u :=
  ∀ n A, Lookup Γ n A → TypingTree P Δ (σ n) (A.subst σ)

namespace StoredSubstitution
variable {Δ : List (Expr S)} {σ : Nat → Expr S}
theorem typed (ts : StoredSubstitution P Γ Δ σ) : TypedSubstitution P Γ Δ σ :=
  fun n A hn => (ts n A hn).typing

noncomputable def lift (ts : StoredSubstitution P Γ Δ σ) {A : Expr S} {s : S}
    (hA : HasType P Δ (A.subst σ) (.sort s)) :
    StoredSubstitution P (A :: Γ) (A.subst σ :: Δ) (Expr.liftSub σ) :=
  fun n => match n with
  | 0 => fun B hn => by
      have he : B = A.rename Nat.succ := by cases hn; rfl
      have he' : B.subst (Expr.liftSub σ) = (A.subst σ).rename Nat.succ := by
        rw [he,Expr.subst_rename,Expr.rename_subst]
        rfl
      exact .var (he'.symm ▸ HasType.var hA) (.zero _ _) (by rw [he']; exact .refl _)
  | n+1 => fun B hn => by
      let hex : ∃ B', Lookup Γ n B' ∧ B = B'.rename Nat.succ := by
        cases hn with
        | succ _ h => exact ⟨_, h, rfl⟩
      let tt := (ts _ _ hex.choose_spec.1).rename (.cons hA.valid hA) Nat.succ (DeclRenaming.weaken _)
      have he : B.subst (Expr.liftSub σ) = (hex.choose.subst σ).rename Nat.succ := by
        calc
          B.subst (Expr.liftSub σ) = (hex.choose.rename Nat.succ).subst (Expr.liftSub σ) :=
            congrArg (Expr.subst (Expr.liftSub σ)) hex.choose_spec.2
          _ = (hex.choose.subst σ).rename Nat.succ := by
            rw [Expr.subst_rename,Expr.rename_subst]
            rfl
      exact tt.retarget (he.symm ▸ tt.typing) (by rw [he]; exact .refl _)

end StoredSubstitution

/-- Capture-avoiding substitution grafts the given trees at variables. It
retains core choices and recurses through the annotation at each binder. -/
noncomputable def subst (t : TypingTree P Γ M T) {Δ : List (Expr S)}
    (hΔ : ValidContext P Δ) (σ : Nat → Expr S) (ts : StoredSubstitution P Γ Δ σ) :
    TypingTree P Δ (M.subst σ) (T.subst σ) := by
  induction t generalizing Δ σ with
  | var h hd hc => exact (ts _ _ hd).retarget (h.subst hΔ σ ts.typed) (hc.subst σ)
  | sort h ha hc => exact .sort (h.subst hΔ σ ts.typed) ha (hc.subst σ)
  | @product Γ A B a b c T h d e hr hc ihd ihe =>
      have hA : HasType P Δ (A.subst σ) (.sort a) := d.typing.subst hΔ σ ts.typed
      exact .product (h.subst hΔ σ ts.typed) (ihd hΔ σ ts)
        (ihe (.cons hΔ hA) _ (ts.lift hA)) hr (hc.subst σ)
  | @abstraction Γ A b B a s T h d e hp hc ihd ihe =>
      have hA : HasType P Δ (A.subst σ) (.sort a) := d.typing.subst hΔ σ ts.typed
      exact .abstraction (h.subst hΔ σ ts.typed) (ihd hΔ σ ts)
        (ihe (.cons hΔ hA) _ (ts.lift hA)) (hp.subst hΔ σ ts.typed) (hc.subst σ)
  | application h f a hc ihf iha =>
      apply TypingTree.application (h.subst hΔ σ ts.typed) (ihf hΔ σ ts) (iha hΔ σ ts)
      simpa only [Expr.instantiate_subst] using hc.subst σ

end TypingTree

namespace Expr
variable {S : Type u}
def ProperPart (N M : Expr S) : Prop := ∃ K, Child K M ∧ Subterm N K
namespace ProperPart
variable {N M L : Expr S}
theorem child (h : Child N M) : ProperPart N M := ⟨N,h,.refl N⟩
theorem subterm (h : ProperPart N M) : Subterm N M := by
  obtain ⟨K,hK,hN⟩ := h
  exact .tail hN hK
theorem trans_right (h : ProperPart N M) (hML : Subterm M L) : ProperPart N L := by
  induction hML with
  | refl => exact h
  | tail hML hL ih => exact ⟨_,hL,h.subterm.trans hML⟩
theorem trans_left (hNM : Subterm N M) (h : ProperPart M L) : ProperPart N L := by
  obtain ⟨K,hK,hM⟩ := h
  exact ⟨K,hK,hNM.trans hM⟩
end ProperPart
namespace Subterm
variable {M : Expr S}
theorem apps_head (ns : List (Expr S)) : Subterm M (M.apps ns) := by
  induction ns generalizing M with
  | nil => exact .refl M
  | cons n ns ih => exact (of_child (.app_left M n)).trans (ih (M := .app M n))
end Subterm
namespace ProperPart
variable {M n : Expr S} {ns : List (Expr S)}
theorem apps_arg (hn : n ∈ ns) : ProperPart n (M.apps ns) := by
  induction ns generalizing M with
  | nil => cases hn
  | cons a ns ih =>
    rcases List.mem_cons.mp hn with rfl | hn
    · exact (child (.app_right M n)).trans_right (Subterm.apps_head ns)
    · exact ih hn
end ProperPart
@[simp] theorem subst_apps (M : Expr S) (ns : List (Expr S)) (σ : Nat → Expr S) :
    (M.apps ns).subst σ = (M.subst σ).apps (ns.map (Expr.subst σ)) := by
  induction ns generalizing M with
  | nil => rfl
  | cons n ns ih => exact ih (.app M n)
end Expr

namespace HasType
variable {S : Type u} {P : Specification S} {Γ : List (Expr S)}
theorem spine_shape {M T : Expr S} (h : HasType P Γ M T) :
    (∃ s, M = .sort s) ∨ Neutral M ∨ (∃ A B, M = .pi A B) ∨
      (∃ A b ns, M = (Expr.lam A b).apps ns) := by
  induction M generalizing T with
  | var n => exact .inr (.inl (.var n))
  | sort s => exact .inl ⟨s,rfl⟩
  | lam A b => exact .inr (.inr (.inr ⟨A,b,[],rfl⟩))
  | pi A B => exact .inr (.inr (.inl ⟨A,B,rfl⟩))
  | app f a ihf iha =>
    obtain ⟨D,E,hf,_,_⟩ := h.generation_app
    rcases ihf hf with ⟨s,rfl⟩ | hn | ⟨A,B,rfl⟩ | ⟨A,b,ns,rfl⟩
    · exact False.elim hf.sort_cannot_have_product_type
    · exact .inr (.inl (.app hn))
    · exact False.elim hf.product_cannot_have_product_type
    · exact .inr (.inr (.inr ⟨A,b,ns ++ [a],by simp only [Expr.apps_append,Expr.apps]⟩))

theorem app_spine {f a T : Expr S} (h : HasType P Γ (.app f a) T) :
    Neutral f ∨ ∃ D b n ns, Expr.app f a = (Expr.app (.lam D b) n).apps ns := by
  obtain ⟨D,E,hf,_,_⟩ := h.generation_app
  rcases hf.spine_shape with ⟨s,rfl⟩ | hn | ⟨A,B,rfl⟩ | ⟨A,b,ns,rfl⟩
  · exact False.elim hf.sort_cannot_have_product_type
  · exact .inl hn
  · exact False.elim hf.product_cannot_have_product_type
  · right
    cases ns with
    | nil => exact ⟨A,b,a,[],rfl⟩
    | cons n ns => exact ⟨A,b,n,ns ++ [a],by simp only [Expr.apps_append,Expr.apps]⟩

theorem apps_head {M T : Expr S} {ns : List (Expr S)} (h : HasType P Γ (M.apps ns) T) :
    ∃ A, HasType P Γ M A := by
  induction ns generalizing M T with
  | nil => exact ⟨T,h⟩
  | cons n ns ih =>
    obtain ⟨A,hA⟩ := ih h
    obtain ⟨D,E,hf,_,_⟩ := hA.generation_app
    exact ⟨_,hf⟩

theorem apps_arg {M T n : Expr S} {ns : List (Expr S)}
    (h : HasType P Γ (M.apps ns) T) (hn : n ∈ ns) : ∃ A, HasType P Γ n A := by
  induction ns generalizing M T with
  | nil => cases hn
  | cons a ns ih =>
    rcases List.mem_cons.mp hn with rfl | hn
    · obtain ⟨T,hT⟩ := h.apps_head (M := .app M n) (ns := ns)
      obtain ⟨D,E,_,ha,_⟩ := hT.generation_app
      exact ⟨D,ha⟩
    · exact ih h hn
end HasType

/-- The syntactic application principle implying strong normalization.
This principle is proved from candidate interfaces, not assumed
on the PTS normalization theorem. -/
theorem stronglyNormalizing_of_application
    {S : Type u} {P : Specification S}
    (applySN : ∀ {Γ f a D E}, HasType P Γ f (.pi D E) → HasType P Γ a D →
      StronglyNormalizing f → StronglyNormalizing a → StronglyNormalizing (.app f a)) :
    SystemStronglyNormalizing P := by
  have typed : ∀ M : Expr S, ∀ {Γ A}, HasType P Γ M A → StronglyNormalizing M := by
    intro M
    induction M with
    | var n => intro Γ A h; exact (Normal.var n).stronglyNormalizing
    | sort s => intro Γ A h; exact (Normal.sort s).stronglyNormalizing
    | app f a ihf iha =>
        intro Γ A h
        obtain ⟨D, E, hf, ha, _⟩ := h.generation_app
        exact applySN hf ha (ihf hf) (iha ha)
    | lam D b ihD ihb =>
        intro Γ A h
        obtain ⟨E, s, hb, hpi, _⟩ := h.generation_lam
        obtain ⟨s₁, s₂, s₃, hD, _, _, _⟩ := hpi.generation_pi
        exact (ihD hD).lam (ihb hb)
    | pi D E ihD ihE =>
        intro Γ A h
        obtain ⟨s₁, s₂, s₃, hD, hE, _, _⟩ := h.generation_pi
        exact (ihD hD).pi (ihE hE)
  intro Γ _ M h
  obtain ⟨A, h | h⟩ := h
  · exact typed M h
  · obtain ⟨s, rfl⟩ | ⟨s, hs⟩ := h.regularity
    · exact (Normal.sort s).stronglyNormalizing
    · exact typed M hs

/-- A failed full-normalization theorem has an exact, well-typed application
counterexample whose two children are already strongly normalizing. -/
theorem exists_bad_application {S : Type u} {P : Specification S}
    (h : ¬ SystemStronglyNormalizing P) :
    ∃ Γ f a D E, HasType P Γ f (.pi D E) ∧ HasType P Γ a D ∧
      StronglyNormalizing f ∧ StronglyNormalizing a ∧ ¬ StronglyNormalizing (.app f a) := by
  classical
  by_contra hn
  apply h
  apply stronglyNormalizing_of_application
  intro Γ f a D E hf ha hfs has
  by_contra hb
  exact hn ⟨Γ, f, a, D, E, hf, ha, hfs, has, hb⟩

namespace Normal

variable {S : Type u}

theorem rename {M : Expr S} (h : Normal M) (ρ : Nat → Nat) :
    Normal (M.rename ρ) := by
  induction M generalizing ρ with
  | var n => exact Normal.var _
  | sort s => exact Normal.sort _
  | pi A B ihA ihB => exact (ihA h.pi_domain ρ).pi (ihB h.pi_body _)
  | lam A b ihA ihb => exact (ihA h.lam_domain ρ).lam (ihb h.lam_body _)
  | app f a ihf iha =>
      have hf := ihf h.app_left ρ
      have ha := iha h.app_right ρ
      cases f with
      | lam D b => exact False.elim (h _ (.head D b a))
      | var n | sort s | app f b | pi D B =>
          intro N hN
          cases hN with
          | app_left hr => exact hf _ hr
          | app_right hr => exact ha _ hr

end Normal

end PureTypeSystem

end OAI

/- Own independent candidate: IntendedPTS -/

/-!
Concrete intended PTS for the independent weak-normalization premise.
`false` is the base type and `true` its kind. This has actual product formation,
legal lambdas and beta reductions. The full system-wide WN proposition remains
unproved; these fixtures do not discharge it.
Human research direction and evaluation: grwtsk contributors.
Formal constructions and replay: Codex.
-/

namespace FormalResearch.TypeTheory.IntendedPTS

open OAI.PureTypeSystem

/-- The monomorphic literal-base arrow PTS with products `(true,true,true)`. -/
def monomorphicArrow : Specification Bool where
  axioms := fun source target => source = false ∧ target = true
  rule := fun domain codomain output => domain = true ∧ codomain = true ∧ output = true

/-- Exact missing premise, including all valid contexts and all legal expressions and types. -/
def WeakNormalizationGoal : Prop := SystemWeaklyNormalizing monomorphicArrow

/-- Its one source axiom is independently realized in the actual typing relation. -/
theorem base_has_type : HasType monomorphicArrow [] (.sort false) (.sort true) :=
  .ax ⟨rfl, rfl⟩

/-- A nonempty valid source context, with a declared variable of the actual base type. -/
theorem base_context_valid : ValidContext monomorphicArrow [.sort false] :=
  .cons .nil base_has_type

private theorem base_in_context :
    HasType monomorphicArrow [.sort false] (.sort false) (.sort true) :=
  .weaken base_has_type base_has_type

/-- The open source variable is typed by its actual newest-first de Bruijn declaration. -/
theorem variable_has_type : HasType monomorphicArrow [.sort false] (.var 0) (.sort false) :=
  .var base_has_type

/-- The actual annotated source identity lambda is legal in that nonempty context. -/
theorem identity_has_type :
    HasType monomorphicArrow [.sort false] (.lam (.sort false) (.var 0))
      (.pi (.sort false) (.sort false)) :=
  .abstraction (.var base_in_context)
    (.product base_in_context (.weaken base_in_context base_in_context) ⟨rfl, rfl, rfl⟩)

/-- A legal beta-redex of the intended system, rather than an empty/no-product instance. -/
theorem identity_application_has_type :
    HasType monomorphicArrow [.sort false]
      (.app (.lam (.sort false) (.var 0)) (.var 0)) (.sort false) :=
  .application identity_has_type variable_has_type

/-- Its actual directed annotated beta rule contracts to the source variable. -/
theorem identity_application_reduces :
    Beta (S := Bool) (.app (.lam (.sort false) (.var 0)) (.var 0)) (.var 0) :=
  .head (.sort false) (.var 0) (.var 0)

/-- Independent weak normalization of this particular legal beta-redex. -/
theorem identity_application_weakly_normalizing :
    WeaklyNormalizing (S := Bool) (.app (.lam (.sort false) (.var 0)) (.var 0)) :=
  ⟨.var 0, .single identity_application_reduces, Normal.var 0⟩

/-- The literal-base simple-arrow type grammar, with no bound-variable occurrence. -/
inductive BaseArrowType : Expr Bool → Prop
  | base : BaseArrowType (.sort false)
  | arrow {domain codomain} : BaseArrowType domain → BaseArrowType codomain →
      BaseArrowType (.pi domain codomain)

namespace BaseArrowType

/-- Every type in the intended grammar is independent of all variable indices. -/
theorem rename_eq {type : Expr Bool} (typed : BaseArrowType type) (rename : Nat → Nat) :
    type.rename rename = type := by
  induction typed generalizing rename with
  | base => rfl
  | arrow domain codomain ihDomain ihCodomain =>
      simp only [Expr.rename, ihDomain, ihCodomain]

/-- Substituting actual annotated terms leaves these literal-base types unchanged. -/
theorem subst_eq {type : Expr Bool} (typed : BaseArrowType type)
    (substitution : Nat → Expr Bool) : type.subst substitution = type := by
  induction typed generalizing substitution with
  | base => rfl
  | arrow domain codomain ihDomain ihCodomain =>
      simp only [Expr.subst, ihDomain, ihCodomain]

/-- These exact annotations already are beta-normal. -/
theorem normal {type : Expr Bool} (typed : BaseArrowType type) : Normal type := by
  induction typed with
  | base => exact Normal.sort false
  | arrow domain codomain ihDomain ihCodomain =>
      intro target reduced
      cases reduced with
      | pi_domain reduced => exact ihDomain _ reduced
      | pi_body reduced => exact ihCodomain _ reduced

/-- Formation of every grammar type in every actual valid source context. -/
theorem has_type {type : Expr Bool} (typed : BaseArrowType type)
    (context : List (Expr Bool)) (valid : ValidContext monomorphicArrow context) :
    HasType monomorphicArrow context type (.sort true) := by
  induction typed generalizing context with
  | base => exact HasType.sort_of_valid valid ⟨rfl, rfl⟩
  | @arrow domain codomain domainType codomainType ihDomain ihCodomain =>
      have formedDomain := ihDomain context valid
      exact .product formedDomain (ihCodomain (domain :: context) (.cons valid formedDomain))
        ⟨rfl, rfl, rfl⟩

end BaseArrowType

/-- A substantive next lemma, stated as a proposition rather than an assumed theorem. -/
def SortedTypeClassificationGoal : Prop :=
  ∀ context type, HasType monomorphicArrow context type (.sort true) → BaseArrowType type

/-- The system's top kind cannot itself be typed, by exact upstream generation. -/
theorem kind_not_typable (context : List (Expr Bool)) (type : Expr Bool) :
    ¬HasType monomorphicArrow context (.sort true) type := by
  intro typed
  obtain ⟨sort, sourceAxiom, _⟩ := typed.generation
  exact Bool.true_ne_false sourceAxiom.1

private theorem rename_sort_inv (term : Expr Bool) (rename : Nat → Nat) (sort : Bool)
    (equality : term.rename rename = .sort sort) : term = .sort sort := by
  cases term <;> cases equality <;> rfl

/-- Independent classification of all expressions sorted at the top kind.
The application case excludes a literal kind in the codomain or argument using
generation and subject syntax, rather than any system-normalization premise. -/
theorem sorted_type_classification {context : List (Expr Bool)} {term type : Expr Bool}
    (typed : HasType monomorphicArrow context term type) :
    type = .sort true → BaseArrowType term := by
  induction typed with
  | ax sourceAxiom =>
      intro _
      obtain ⟨rfl, rfl⟩ := sourceAxiom
      exact .base
  | @var context declared sort declaration ihDeclaration =>
      intro equality
      have declaredEquality := rename_sort_inv declared Nat.succ true equality
      subst declared
      exact False.elim (kind_not_typable context (.sort sort) declaration)
  | @weaken context term type declared sort source declaration ihSource ihDeclaration =>
      intro equality
      have sourceEquality := rename_sort_inv type Nat.succ true equality
      have sourceType := ihSource sourceEquality
      rw [sourceType.rename_eq Nat.succ]
      exact sourceType
  | product domain codomain sourceRule ihDomain ihCodomain =>
      intro _
      obtain ⟨rfl, rfl, rfl⟩ := sourceRule
      exact .arrow (ihDomain rfl) (ihCodomain rfl)
  | abstraction body product ihBody ihProduct =>
      intro equality
      cases equality
  | @application context function argument domain codomain functionTyped argumentTyped
        ihFunction ihArgument =>
      intro equality
      obtain ⟨sort, productTyped⟩ := functionTyped.product_type_sorted
      obtain ⟨domainSort, codomainSort, outputSort, domainTyped, codomainTyped,
        sourceRule, _⟩ := productTyped.generation_pi
      cases codomain with
      | var index =>
          cases index with
          | zero =>
              change argument = .sort true at equality
              subst argument
              exact False.elim (kind_not_typable context domain argumentTyped)
          | succ index => cases equality
      | sort sort =>
          change Expr.sort sort = .sort true at equality
          cases equality
          exact False.elim (kind_not_typable (domain :: context) (.sort codomainSort)
            codomainTyped)
      | app function argument => cases equality
      | lam annotation body => cases equality
      | pi annotation body => cases equality
  | @conversion context term sourceType targetType sort source target conversion
        ihSource ihTarget =>
      intro equality
      subst targetType
      exact False.elim (kind_not_typable context (.sort sort) target)

/-- The previously isolated smallest classification obligation is independently discharged. -/
theorem sorted_type_classification_goal : SortedTypeClassificationGoal :=
  fun _ _ typed => sorted_type_classification typed rfl

end FormalResearch.TypeTheory.IntendedPTS

/- Own independent candidate: IndependentWN -/

/-!
Independent weak-normalization construction for the actual Bool literal-base
arrow PTS. This scratch candidate contains no system-wide WN premise and no
admission. It does not count as proved until native replay succeeds.
Human research direction and evaluation: grwtsk contributors.
Formal construction: Codex.
-/

namespace FormalResearch.TypeTheory.IntendedPTS

open OAI.PureTypeSystem

inductive Arrow : Type
  | base
  | function (domain codomain : Arrow)
  deriving DecidableEq

def Arrow.expression : Arrow → Expr Bool
  | .base => .sort false
  | .function domain codomain => .pi domain.expression codomain.expression

def decodeArrow : Expr Bool → Arrow
  | .pi domain codomain => .function (decodeArrow domain) (decodeArrow codomain)
  | _ => .base

theorem Arrow.grammar (type : Arrow) : BaseArrowType type.expression := by
  induction type with
  | base => exact .base
  | function domain codomain ihDomain ihCodomain => exact .arrow ihDomain ihCodomain

theorem decode_expression (type : Expr Bool) (typed : BaseArrowType type) :
    (decodeArrow type).expression = type := by
  induction typed with
  | base => rfl
  | arrow domain codomain ihDomain ihCodomain =>
      simp only [decodeArrow, Arrow.expression, ihDomain, ihCodomain]

theorem decode_rename (term : Expr Bool) (rename : Nat → Nat) :
    decodeArrow (term.rename rename) = decodeArrow term := by
  induction term generalizing rename with
  | var index => rfl
  | sort sort => rfl
  | app function argument ihFunction ihArgument => rfl
  | lam annotation body ihAnnotation ihBody => rfl
  | pi domain codomain ihDomain ihCodomain =>
      simp only [Expr.rename, decodeArrow, ihDomain, ihCodomain]

private theorem wn_rename {term : Expr Bool} (normalizing : WeaklyNormalizing term)
    (rename : Nat → Nat) : WeaklyNormalizing (term.rename rename) := by
  obtain ⟨normal, reduces, normality⟩ := normalizing
  exact ⟨normal.rename rename, reduces.rename rename, normality.rename rename⟩

private theorem wn_prepend {term target : Expr Bool} (reduces : Reduces term target)
    (normalizing : WeaklyNormalizing target) : WeaklyNormalizing term := by
  obtain ⟨normal, tail, normality⟩ := normalizing
  exact ⟨normal, reduces.trans tail, normality⟩

private theorem wn_lam {annotation body : Expr Bool}
    (normalizingAnnotation : WeaklyNormalizing annotation)
    (normalizingBody : WeaklyNormalizing body) : WeaklyNormalizing (.lam annotation body) := by
  obtain ⟨annotation', annotationPath, annotationNormal⟩ := normalizingAnnotation
  obtain ⟨body', bodyPath, bodyNormal⟩ := normalizingBody
  exact ⟨.lam annotation' body', annotationPath.lam bodyPath, annotationNormal.lam bodyNormal⟩

private theorem wn_pi {domain codomain : Expr Bool}
    (normalizingDomain : WeaklyNormalizing domain)
    (normalizingCodomain : WeaklyNormalizing codomain) : WeaklyNormalizing (.pi domain codomain) := by
  obtain ⟨domain', domainPath, domainNormal⟩ := normalizingDomain
  obtain ⟨codomain', codomainPath, codomainNormal⟩ := normalizingCodomain
  exact ⟨.pi domain' codomain', domainPath.pi codomainPath, domainNormal.pi codomainNormal⟩

private theorem neutral_rename {term : Expr Bool} (neutral : Neutral term)
    (rename : Nat → Nat) : Neutral (term.rename rename) := by
  induction neutral with
  | var index => exact .var _
  | app source ih => exact .app ih

private theorem neutral_step {term target : Expr Bool} (neutral : Neutral term)
    (step : Beta term target) : Neutral target := by
  induction neutral generalizing target with
  | var index => cases step
  | app source ih =>
      cases step with
      | head => cases source
      | app_left step => exact .app (ih step)
      | app_right step => exact .app source

private theorem neutral_reduces {term target : Expr Bool} (neutral : Neutral term)
    (reduces : Reduces term target) : Neutral target := by
  induction reduces with
  | refl => exact neutral
  | tail prior step ih => exact neutral_step ih step

private theorem wn_neutral_app {function argument : Expr Bool} (neutral : Neutral function)
    (normalizingFunction : WeaklyNormalizing function)
    (normalizingArgument : WeaklyNormalizing argument) :
    WeaklyNormalizing (.app function argument) := by
  obtain ⟨function', functionPath, functionNormal⟩ := normalizingFunction
  obtain ⟨argument', argumentPath, argumentNormal⟩ := normalizingArgument
  have neutralFunction := neutral_reduces neutral functionPath
  refine ⟨.app function' argument', functionPath.app argumentPath, ?_⟩
  intro target step
  cases step with
  | head => cases neutralFunction
  | app_left step => exact functionNormal _ step
  | app_right step => exact argumentNormal _ step

/-- Weak Kripke reducibility: all renamings of a function consume actual reducible arguments. -/
def Reducible : Arrow → Expr Bool → Prop
  | .base, term => WeaklyNormalizing term
  | .function domain codomain, term => WeaklyNormalizing term ∧
      ∀ rename argument, Reducible domain argument →
        Reducible codomain (.app (term.rename rename) argument)

theorem reducible_wn {type : Arrow} {term : Expr Bool} (reducible : Reducible type term) :
    WeaklyNormalizing term := by
  cases type with
  | base => exact reducible
  | function domain codomain => exact reducible.1

theorem reducible_rename {type : Arrow} {term : Expr Bool}
    (reducible : Reducible type term) (rename : Nat → Nat) :
    Reducible type (term.rename rename) := by
  cases type with
  | base => exact wn_rename reducible rename
  | function domain codomain =>
      refine ⟨wn_rename reducible.1 rename, ?_⟩
      intro subsequent argument argumentReducible
      simpa only [Expr.rename_comp] using
        reducible.2 (subsequent ∘ rename) argument argumentReducible

/-- Weak reducibility is closed backwards along actual full annotated beta paths. -/
theorem reducible_prepend {type : Arrow} {term target : Expr Bool}
    (targetReducible : Reducible type target) (reduces : Reduces term target) :
    Reducible type term := by
  induction type generalizing term target with
  | base => exact wn_prepend reduces targetReducible
  | function domain codomain ihDomain ihCodomain =>
      refine ⟨wn_prepend reduces targetReducible.1, ?_⟩
      intro rename argument argumentReducible
      exact ihCodomain (targetReducible.2 rename argument argumentReducible)
        ((reduces.rename rename).app .refl)

theorem reducible_neutral (type : Arrow) {term : Expr Bool} (neutral : Neutral term)
    (normalizing : WeaklyNormalizing term) : Reducible type term := by
  induction type generalizing term with
  | base => exact normalizing
  | function domain codomain ihDomain ihCodomain =>
      refine ⟨normalizing, ?_⟩
      intro rename argument argumentReducible
      exact ihCodomain (.app (neutral_rename neutral rename))
        (wn_neutral_app (neutral_rename neutral rename) (wn_rename normalizing rename)
          (reducible_wn argumentReducible))

theorem reducible_var (type : Arrow) (index : Nat) :
    Reducible type (.var index) :=
  reducible_neutral type (.var index) ⟨.var index, .refl, Normal.var index⟩

/-- The annotation-preserving simple-arrow judgment used by the actual PTS bridge. -/
inductive ArrowTyping : List Arrow → Expr Bool → Arrow → Prop
  | var {context index type} : context[index]? = some type →
      ArrowTyping context (.var index) type
  | lam {context domain codomain body} : ArrowTyping (domain :: context) body codomain →
      ArrowTyping context (.lam domain.expression body) (.function domain codomain)
  | app {context function argument domain codomain} :
      ArrowTyping context function (.function domain codomain) →
      ArrowTyping context argument domain → ArrowTyping context (.app function argument) codomain

def ReducibleEnvironment (context : List Arrow) (substitution : Nat → Expr Bool) : Prop :=
  ∀ index type, context[index]? = some type → Reducible type (substitution index)

theorem reducible_environment_lift {context : List Arrow} {substitution : Nat → Expr Bool}
    (environment : ReducibleEnvironment context substitution) (domain : Arrow) :
    ReducibleEnvironment (domain :: context) (Expr.liftSub substitution) := by
  intro index type found
  cases index with
  | zero =>
      have equality : domain = type := Option.some.inj found
      subst type
      exact reducible_var domain 0
  | succ index =>
      change context[index]? = some type at found
      exact reducible_rename (environment index type found) Nat.succ

/-- The independent substitution/reducibility theorem has no PTS system-WN premise. -/
theorem ArrowTyping.reducible {context : List Arrow} {term : Expr Bool} {type : Arrow}
    (typed : ArrowTyping context term type) (substitution : Nat → Expr Bool)
    (environment : ReducibleEnvironment context substitution) :
    Reducible type (term.subst substitution) := by
  induction typed generalizing substitution with
  | var found => exact environment _ _ found
  | app function argument ihFunction ihArgument =>
      have functionReducible := ihFunction substitution environment
      have argumentReducible := ihArgument substitution environment
      simpa only [Expr.subst, Expr.rename_id] using
        functionReducible.2 id _ argumentReducible
  | @lam context domain codomain body typedBody ihBody =>
      have lifted := ihBody (Expr.liftSub substitution)
        (reducible_environment_lift environment domain)
      have annotationNormal := (Arrow.grammar domain).normal
      have annotationSubst := (Arrow.grammar domain).subst_eq substitution
      change Reducible (.function domain codomain)
        (.lam (domain.expression.subst substitution) (body.subst (Expr.liftSub substitution)))
      rw [annotationSubst]
      refine ⟨wn_lam ⟨domain.expression, .refl, annotationNormal⟩ (reducible_wn lifted), ?_⟩
      intro rename argument argumentReducible
      let theta : Nat → Expr Bool := fun index =>
        (Expr.liftSub substitution index).subst (Expr.single argument ∘ Expr.liftRen rename)
      have thetaZero : theta 0 = argument := rfl
      have thetaSucc (index : Nat) : theta (index + 1) = (substitution index).rename rename := by
        dsimp only [theta]
        rw [Expr.liftSub_succ, Expr.subst_rename]
        change (substitution index).subst (Expr.var ∘ rename) =
          (substitution index).rename rename
        exact Expr.subst_var_rename _ _
      have thetaEnvironment : ReducibleEnvironment (domain :: context) theta := by
        intro index type found
        cases index with
        | zero =>
            have equality : domain = type := Option.some.inj found
            subst type
            rw [thetaZero]
            exact argumentReducible
        | succ index =>
            change context[index]? = some type at found
            rw [thetaSucc]
            exact reducible_rename (environment index type found) rename
      have bodyReducible := ihBody theta thetaEnvironment
      have bodyEquality :
          ((body.subst (Expr.liftSub substitution)).rename (Expr.liftRen rename)).instantiate argument =
            body.subst theta := by
        rw [Expr.instantiate, Expr.subst_rename, Expr.subst_subst]
        rfl
      have renamedAnnotation := (Arrow.grammar domain).rename_eq rename
      change Reducible codomain (.app
        (.lam (domain.expression.rename rename)
          ((body.subst (Expr.liftSub substitution)).rename (Expr.liftRen rename))) argument)
      rw [renamedAnnotation]
      apply reducible_prepend (bodyEquality.symm ▸ bodyReducible)
      exact .single (.head _ _ _)

theorem ArrowTyping.weakly_normalizing {context : List Arrow} {term : Expr Bool} {type : Arrow}
    (typed : ArrowTyping context term type) : WeaklyNormalizing term := by
  have environment : ReducibleEnvironment context Expr.var :=
    fun index type _ => reducible_var type index
  have reducible := typed.reducible Expr.var environment
  simpa only [Expr.subst_var] using reducible_wn reducible

theorem BaseArrowType.ne_kind {type : Expr Bool} (typed : BaseArrowType type) :
    type ≠ .sort true := by
  cases typed with
  | base =>
      intro equality
      exact Bool.false_ne_true (Expr.sort.inj equality)
  | arrow domain codomain => intro equality; cases equality

/-- Grammar types have exactly the kind classifier in any actual source context. -/
theorem BaseArrowType.sort_unique {type : Expr Bool} (grammar : BaseArrowType type)
    {context : List (Expr Bool)} {sort : Bool}
    (typed : HasType monomorphicArrow context type (.sort sort)) : sort = true := by
  cases grammar with
  | base =>
      obtain ⟨target, sourceAxiom, conversion⟩ := typed.generation
      exact conversion.sort_inj.trans sourceAxiom.2
  | arrow domain codomain =>
      obtain ⟨domainSort, codomainSort, outputSort, domainTyped, codomainTyped,
        sourceRule, conversion⟩ := typed.generation_pi
      exact conversion.sort_inj.trans sourceRule.2.2

theorem lookup_sorted {context : List (Expr Bool)} {index : Nat} {type : Expr Bool}
    (lookup : Lookup context index type) (valid : ValidContext monomorphicArrow context) :
    ∃ sort, HasType monomorphicArrow context type (.sort sort) := by
  induction valid generalizing index type with
  | nil => cases lookup
  | cons tail typed ih =>
      cases lookup with
      | zero => exact ⟨_, .weaken typed typed⟩
      | succ declared lookup =>
          obtain ⟨sourceSort, sourceTyped⟩ := ih lookup
          exact ⟨sourceSort, .weaken sourceTyped typed⟩

theorem lookup_decoded {context : List (Expr Bool)} {index : Nat} {type : Expr Bool}
    (lookup : Lookup context index type) :
    (context.map decodeArrow)[index]? = some (decodeArrow type) := by
  induction lookup with
  | zero declared context => simp only [List.map_cons, List.getElem?_cons_zero, decode_rename]
  | succ declared lookup ih =>
      simpa only [List.map_cons, List.getElem?_cons_succ, decode_rename] using ih

/-- Conversion to a grammar type forces the actual valid-context declaration
to be that same grammar type, even for arbitrary source contexts. -/
theorem sorted_convert_to_grammar {context : List (Expr Bool)} {type grammarType : Expr Bool}
    {sort : Bool} (typed : HasType monomorphicArrow context type (.sort sort))
    (grammar : BaseArrowType grammarType) (conversion : Converts type grammarType) :
    type = grammarType := by
  obtain ⟨common, sourcePath, targetPath⟩ := conversion.join
  have equality := grammar.normal.reduces_eq targetPath
  subst common
  have grammarTyped := typed.subject_reduces sourcePath
  have sortEquality := grammar.sort_unique grammarTyped
  subst sort
  have sourceGrammar := sorted_type_classification typed rfl
  exact sourceGrammar.normal.eq_of_converts grammar.normal conversion

/-- Every actual source judgment at a literal-base arrow type has an
annotation-preserving simple-arrow typing in the complete mapped context. -/
theorem arrow_typing {term : Expr Bool} :
    ∀ {context type}, HasType monomorphicArrow context term type → BaseArrowType type →
      ArrowTyping (context.map decodeArrow) term (decodeArrow type) := by
  induction term with
  | var index =>
      intro context type typed grammar
      obtain ⟨declared, lookup, conversion⟩ := typed.generation
      obtain ⟨sort, declaredTyped⟩ := lookup_sorted lookup typed.valid
      have equality := sorted_convert_to_grammar declaredTyped grammar (.symm _ _ conversion)
      subst declared
      exact .var (lookup_decoded lookup)
  | sort sort =>
      intro context type typed grammar
      obtain ⟨target, sourceAxiom, conversion⟩ := typed.generation
      have equality := grammar.normal.eq_of_converts (Normal.sort target) conversion
      have targetEquality := sourceAxiom.2
      subst target
      exact False.elim (grammar.ne_kind equality)
  | pi domain codomain ihDomain ihCodomain =>
      intro context type typed grammar
      obtain ⟨domainSort, codomainSort, outputSort, domainTyped, codomainTyped,
        sourceRule, conversion⟩ := typed.generation_pi
      have equality := grammar.normal.eq_of_converts (Normal.sort outputSort) conversion
      have outputEquality := sourceRule.2.2
      subst outputSort
      exact False.elim (grammar.ne_kind equality)
  | lam annotation body ihAnnotation ihBody =>
      intro context type typed grammar
      obtain ⟨codomain, sort, bodyTyped, productTyped, conversion⟩ := typed.generation_lam
      obtain ⟨domainSort, codomainSort, outputSort, annotationTyped, codomainTyped,
        sourceRule, productConversion⟩ := productTyped.generation_pi
      obtain ⟨rfl, rfl, rfl⟩ := sourceRule
      have annotationGrammar := sorted_type_classification annotationTyped rfl
      have codomainGrammar := sorted_type_classification codomainTyped rfl
      have productGrammar : BaseArrowType (.pi annotation codomain) :=
        .arrow annotationGrammar codomainGrammar
      have equality := grammar.normal.eq_of_converts productGrammar.normal conversion
      subst type
      have simpleBody := ihBody bodyTyped codomainGrammar
      have annotationEquality := decode_expression annotation annotationGrammar
      change ArrowTyping (context.map decodeArrow) (.lam annotation body)
        (.function (decodeArrow annotation) (decodeArrow codomain))
      have result : ArrowTyping (context.map decodeArrow)
          (.lam (decodeArrow annotation).expression body)
          (.function (decodeArrow annotation) (decodeArrow codomain)) := .lam simpleBody
      simpa only [annotationEquality] using result
  | app function argument ihFunction ihArgument =>
      intro context type typed grammar
      obtain ⟨domain, codomain, functionTyped, argumentTyped, conversion⟩ := typed.generation_app
      obtain ⟨sort, productTyped⟩ := functionTyped.product_type_sorted
      obtain ⟨domainSort, codomainSort, outputSort, domainTyped, codomainTyped,
        sourceRule, productConversion⟩ := productTyped.generation_pi
      obtain ⟨rfl, rfl, rfl⟩ := sourceRule
      have domainGrammar := sorted_type_classification domainTyped rfl
      have codomainGrammar := sorted_type_classification codomainTyped rfl
      have instantiateEquality : codomain.instantiate argument = codomain :=
        codomainGrammar.subst_eq (Expr.single argument)
      rw [instantiateEquality] at conversion
      have equality := grammar.normal.eq_of_converts codomainGrammar.normal conversion
      subst type
      exact .app (ihFunction functionTyped (.arrow domainGrammar codomainGrammar))
        (ihArgument argumentTyped domainGrammar)

/-- All actual annotated typed expressions normalize independently of result245. -/
theorem typed_weakly_normalizing {term : Expr Bool} :
    ∀ {context type}, HasType monomorphicArrow context term type → WeaklyNormalizing term := by
  induction term with
  | var index => intro context type typed; exact ⟨.var index, .refl, Normal.var index⟩
  | sort sort => intro context type typed; exact ⟨.sort sort, .refl, Normal.sort sort⟩
  | lam annotation body ihAnnotation ihBody =>
      intro context type typed
      obtain ⟨codomain, sort, bodyTyped, productTyped, conversion⟩ := typed.generation_lam
      obtain ⟨domainSort, codomainSort, outputSort, annotationTyped, codomainTyped,
        sourceRule, productConversion⟩ := productTyped.generation_pi
      exact wn_lam (ihAnnotation annotationTyped) (ihBody bodyTyped)
  | pi domain codomain ihDomain ihCodomain =>
      intro context type typed
      obtain ⟨domainSort, codomainSort, outputSort, domainTyped, codomainTyped,
        sourceRule, conversion⟩ := typed.generation_pi
      exact wn_pi (ihDomain domainTyped) (ihCodomain codomainTyped)
  | app function argument ihFunction ihArgument =>
      intro context type typed
      obtain ⟨domain, codomain, functionTyped, argumentTyped, conversion⟩ := typed.generation_app
      obtain ⟨sort, productTyped⟩ := functionTyped.product_type_sorted
      obtain ⟨domainSort, codomainSort, outputSort, domainTyped, codomainTyped,
        sourceRule, productConversion⟩ := productTyped.generation_pi
      obtain ⟨rfl, rfl, rfl⟩ := sourceRule
      have domainGrammar := sorted_type_classification domainTyped rfl
      have codomainGrammar := sorted_type_classification codomainTyped rfl
      have simpleFunction := arrow_typing functionTyped (.arrow domainGrammar codomainGrammar)
      have simpleArgument := arrow_typing argumentTyped domainGrammar
      have functionReducible := simpleFunction.reducible Expr.var
        (fun index type _ => reducible_var type index)
      have argumentReducible := simpleArgument.reducible Expr.var
        (fun index type _ => reducible_var type index)
      simp only [Expr.subst_var] at functionReducible argumentReducible
      have applicationReducible := functionReducible.2 id argument argumentReducible
      simpa only [Expr.rename_id] using reducible_wn applicationReducible

/-- Independent system-wide WN of the nonvacuous actual monomorphic arrow PTS,
including every valid context and both alternatives of actual source legality. -/
theorem monomorphic_arrow_weakly_normalizing : SystemWeaklyNormalizing monomorphicArrow := by
  intro context valid term legal
  obtain ⟨type, typed | typed⟩ := legal
  · exact typed_weakly_normalizing typed
  · obtain ⟨sort, rfl⟩ | ⟨sort, typeTyped⟩ := typed.regularity
    · exact ⟨.sort sort, .refl, Normal.sort sort⟩
    · exact typed_weakly_normalizing typeTyped

end FormalResearch.TypeTheory.IntendedPTS

#print axioms FormalResearch.TypeTheory.IntendedPTS.monomorphic_arrow_weakly_normalizing

#print FormalResearch.TypeTheory.IntendedPTS.monomorphic_arrow_weakly_normalizing
#print axioms FormalResearch.TypeTheory.IntendedPTS.sorted_type_classification_goal
#print axioms FormalResearch.TypeTheory.IntendedPTS.ArrowTyping.reducible
