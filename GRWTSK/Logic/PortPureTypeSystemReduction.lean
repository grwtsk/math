/-
Reduction metatheory adapted into the GRWTSK namespace from `openai/math`
revision `1581d4cbdd69a0faf34b2089614fe2a814316a6a`,
`lean/OAI/Computability/TypeSystem/Reduction.lean` (Apache-2.0).
-/
import GRWTSK.Logic.PortPureTypeSystemMetatheory

namespace GRWTSK.Logic.PortPureTypeSystem

universe u

/-- Local normality for the exact annotated beta relation. -/
abbrev Normal {S : Type u} (M : Expr S) : Prop :=
  ExternalPTSBridge.Normal Beta M

/-- Local weak normalization for the exact annotated beta relation. -/
abbrev WeaklyNormalizing {S : Type u} (M : Expr S) : Prop :=
  ExternalPTSBridge.WeaklyNormalizing Beta M

/-- Local strong normalization for the exact annotated beta relation. -/
abbrev StronglyNormalizing {S : Type u} (M : Expr S) : Prop :=
  ExternalPTSBridge.StronglyNormalizing Beta M

/-- Parallel reduction used to prove confluence of full annotated beta reduction. -/
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

@[refl]
theorem refl (M : Expr S) : Parallel M M := by
  induction M with
  | var n => exact .var n
  | sort s => exact .sort s
  | app _ _ ihf iha => exact .app ihf iha
  | lam _ _ ihA ihb => exact .lam ihA ihb
  | pi _ _ ihA ihB => exact .pi ihA ihB

/-- Every beta step is a parallel step. -/
theorem of_beta (h : Beta M N) : Parallel M N := by
  induction h with
  | head A b a => exact .head A (refl b) (refl a)
  | app_left _ ih => exact .app ih (refl _)
  | app_right _ ih => exact .app (refl _) ih
  | lam_domain _ ih => exact .lam ih (refl _)
  | lam_body _ ih => exact .lam (refl _) ih
  | pi_domain _ ih => exact .pi ih (refl _)
  | pi_body _ ih => exact .pi (refl _) ih

/-- Parallel reduction is stable under renaming. -/
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

/-- Parallel reduction is stable under simultaneous parallel substitution. -/
theorem subst (h : Parallel M N) (σ τ : Nat → Expr S)
    (hστ : ∀ n, Parallel (σ n) (τ n)) :
    Parallel (M.subst σ) (N.subst τ) := by
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

/-- Parallel reduction commutes with binder instantiation. -/
theorem instantiate {b b' a a' : Expr S}
    (hb : Parallel b b') (ha : Parallel a a') :
    Parallel (b.instantiate a) (b'.instantiate a') := by
  apply hb.subst
  intro n
  cases n with
  | zero => exact ha
  | succ n => exact .var n

end Parallel

namespace Expr

variable {S : Type u}

/-- Takahashi complete development, including annotations. -/
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

/-- Every parallel reduct reduces in parallel to the complete development. -/
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

/-- Parallel reduction has the diamond property. -/
theorem diamond {a b c : Expr S}
    (hab : Parallel a b) (hac : Parallel a c) :
    ∃ d, Parallel b d ∧ Parallel c d :=
  ⟨a.develop, hab.triangle, hac.triangle⟩

end Parallel

/-- Reflexive-transitive beta reduction. -/
abbrev Reduces {S : Type u} := Relation.ReflTransGen (@Beta S)

namespace Reduces

variable {S : Type u} {f f' a a' A A' b b' : Expr S}

/-- Reduction is closed under application. -/
theorem app (hf : Reduces f f') (ha : Reduces a a') :
    Reduces (.app f a) (.app f' a') := by
  exact (hf.lift (fun x => Expr.app x a) (fun _ _ h => Beta.app_left h)).trans
    (ha.lift (fun x => Expr.app f' x) (fun _ _ h => Beta.app_right h))

/-- Reduction is closed under annotated lambda formation. -/
theorem lam (hA : Reduces A A') (hb : Reduces b b') :
    Reduces (.lam A b) (.lam A' b') := by
  exact (hA.lift (fun x => Expr.lam x b) (fun _ _ h => Beta.lam_domain h)).trans
    (hb.lift (fun x => Expr.lam A' x) (fun _ _ h => Beta.lam_body h))

/-- Reduction is closed under product formation. -/
theorem pi (hA : Reduces A A') (hb : Reduces b b') :
    Reduces (.pi A b) (.pi A' b') := by
  exact (hA.lift (fun x => Expr.pi x b) (fun _ _ h => Beta.pi_domain h)).trans
    (hb.lift (fun x => Expr.pi A' x) (fun _ _ h => Beta.pi_body h))

/-- Multi-step reduction is stable under renaming. -/
theorem rename {M N : Expr S} (h : Reduces M N) (ρ : Nat → Nat) :
    Reduces (M.rename ρ) (N.rename ρ) :=
  h.lift _ (fun _ _ h => h.rename ρ)

/-- Multi-step reduction is stable under substitution. -/
theorem subst {M N : Expr S} (h : Reduces M N) (σ : Nat → Expr S) :
    Reduces (M.subst σ) (N.subst σ) :=
  h.lift _ (fun _ _ h => h.subst σ)

end Reduces

namespace Parallel

variable {S : Type u} {M N : Expr S}

/-- Parallel reduction expands to beta reduction. -/
theorem reduces (h : Parallel M N) : Reduces M N := by
  induction h with
  | var n => exact .refl
  | sort s => exact .refl
  | app _ _ ihf iha => exact Reduces.app ihf iha
  | lam _ _ ihA ihb => exact Reduces.lam ihA ihb
  | pi _ _ ihA ihB => exact Reduces.pi ihA ihB
  | head A _ _ ihb iha =>
      exact (Reduces.app (Reduces.lam .refl ihb) iha).tail (.head _ _ _)

/-- A reflexive-transitive parallel reduction expands to beta reduction. -/
theorem rtc_reduces {M N : Expr S}
    (h : Relation.ReflTransGen Parallel M N) : Reduces M N :=
  Relation.reflTransGen_closed (fun _ _ h => h.reduces) _ _ h

end Parallel

namespace Reduces

variable {S : Type u} {M N : Expr S}

/-- Beta reduction embeds in reflexive-transitive parallel reduction. -/
theorem parallel (h : Reduces M N) : Relation.ReflTransGen Parallel M N :=
  Relation.ReflTransGen.mono (fun _ _ h => Parallel.of_beta h) _ _ h

/-- Full annotated beta reduction is confluent. -/
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

/-- Convertibility has a common beta reduct. -/
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

/-- A normal expression has no nontrivial reduct. -/
theorem reduces_eq (hM : Normal M) (h : Reduces M N) : M = N := by
  induction h with
  | refl => rfl
  | @tail N N' _ h ih => exact False.elim (hM N' (ih ▸ h))

/-- Convertible normal forms are equal. -/
theorem eq_of_converts (hM : Normal M) (hN : Normal N)
    (h : Converts M N) : M = N := by
  obtain ⟨K, hMK, hNK⟩ := h.join
  exact (hM.reduces_eq hMK).trans (hN.reduces_eq hNK).symm

end Normal

namespace Reduces

variable {S : Type u} {A B N : Expr S}

/-- A product can reduce only to a product with reduced children. -/
theorem pi_inv (h : Reduces (.pi A B) N) :
    ∃ A' B', N = .pi A' B' ∧ Reduces A A' ∧ Reduces B B' := by
  induction h with
  | refl => exact ⟨A, B, rfl, .refl, .refl⟩
  | tail _ h ih =>
      obtain ⟨A', B', rfl, hA, hB⟩ := ih
      cases h with
      | pi_domain h => exact ⟨_, _, rfl, hA.tail h, hB⟩
      | pi_body h => exact ⟨_, _, rfl, hA, hB.tail h⟩

/-- Reduction implies conversion. -/
theorem converts {M N : Expr S} (h : Reduces M N) : Converts M N :=
  Relation.EqvGen.reflTransGen_le_eqvGen _ _ _ h

end Reduces

namespace Converts

variable {S : Type u}

/-- Product conversion preserves both domain and codomain conversions. -/
theorem product_compatibility {A B A' B' : Expr S}
    (h : Converts (.pi A B) (.pi A' B')) :
    Converts A A' ∧ Converts B B' := by
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

/-- Variables are beta normal. -/
theorem var (n : Nat) : Normal (.var n : Expr S) := by
  intro N h
  cases h

/-- Literal sorts are beta normal. -/
theorem sort (s : S) : Normal (.sort s) := by
  intro N h
  cases h

/-- Normality implies strong normalization. -/
theorem stronglyNormalizing {M : Expr S} (h : Normal M) : StronglyNormalizing M :=
  .intro M (fun N hN => False.elim (h N hN))

end Normal

namespace StronglyNormalizing

variable {S : Type u} {M N : Expr S}

/-- Strong normalization descends along one step. -/
theorem step (hM : StronglyNormalizing M) (h : Beta M N) :
    StronglyNormalizing N :=
  hM.inv h

/-- Strong normalization descends along multi-step reduction. -/
theorem reduces (hM : StronglyNormalizing M) (h : Reduces M N) :
    StronglyNormalizing N := by
  induction h with
  | refl => exact hM
  | tail _ h ih => exact ih.step h

/-- Strong normalization of an image reflects through a step-preserving map. -/
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

/-- Strong normalization of an application reflects to its function. -/
theorem app_left {f a : Expr S} (h : StronglyNormalizing (.app f a)) :
    StronglyNormalizing f :=
  of_map (fun h => Beta.app_left h) h

/-- Strong normalization of an application reflects to its argument. -/
theorem app_right {f a : Expr S} (h : StronglyNormalizing (.app f a)) :
    StronglyNormalizing a :=
  of_map (fun h => Beta.app_right h) h

/-- Strong normalization of a lambda reflects to its annotation. -/
theorem lam_domain {A b : Expr S} (h : StronglyNormalizing (.lam A b)) :
    StronglyNormalizing A :=
  of_map (fun h => Beta.lam_domain h) h

/-- Strong normalization of a lambda reflects to its body. -/
theorem lam_body {A b : Expr S} (h : StronglyNormalizing (.lam A b)) :
    StronglyNormalizing b :=
  of_map (fun h => Beta.lam_body h) h

/-- Strong normalization of a product reflects to its domain. -/
theorem pi_domain {A B : Expr S} (h : StronglyNormalizing (.pi A B)) :
    StronglyNormalizing A :=
  of_map (fun h => Beta.pi_domain h) h

/-- Strong normalization of a product reflects to its codomain. -/
theorem pi_body {A B : Expr S} (h : StronglyNormalizing (.pi A B)) :
    StronglyNormalizing B :=
  of_map (fun h => Beta.pi_body h) h

end StronglyNormalizing

end GRWTSK.Logic.PortPureTypeSystem
