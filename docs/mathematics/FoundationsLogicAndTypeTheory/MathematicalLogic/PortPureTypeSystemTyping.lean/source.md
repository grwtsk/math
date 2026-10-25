# Complete source: GRWTSK.Logic.PortPureTypeSystemTyping

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `123376671267711f15d0ce0c559660ccdb930322` · SHA-256 `b16611d21e49467a5101656a36e7ceabbc37f6f781485f50857e93769f22be1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Typing metatheory adapted into the GRWTSK namespace from `openai/math`
revision `1581d4cbdd69a0faf34b2089614fe2a814316a6a`,
`lean/OAI/Computability/TypeSystem/Typing.lean` (Apache-2.0).
-/
import GRWTSK.Logic.PortPureTypeSystemMetatheory

namespace GRWTSK.Logic.PortPureTypeSystem

universe u

/-- A declaration's type viewed in the full newest-first context. -/
inductive Lookup {S : Type u} : List (Expr S) → Nat → Expr S → Prop
  | zero (A Γ) : Lookup (A :: Γ) 0 (A.rename Nat.succ)
  | succ {Γ n A} (B) : Lookup Γ n A → Lookup (B :: Γ) (n + 1) (A.rename Nat.succ)

namespace HasType

variable {S : Type u} {P : Specification S}

/-- A sort axiom can be weakened into any valid context. -/
theorem sort_of_valid {Γ : List (Expr S)} (hΓ : ValidContext P Γ)
    {s t : S} (hst : P.axioms s t) : HasType P Γ (.sort s) (.sort t) := by
  induction hΓ with
  | nil => exact .ax hst
  | cons _ hA ih => exact .weaken ih hA

/-- A typed product exposes a typed domain without any functionality premise. -/
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

/-- Conversion is stable under substitution. -/
theorem subst (h : Converts M N) (σ : Nat → Expr S) :
    Converts (M.subst σ) (N.subst σ) := by
  induction h with
  | rel a b h => exact .rel _ _ (h.subst σ)
  | refl a => exact .refl _
  | symm a b _ ih => exact .symm _ _ ih
  | trans a b c _ _ ih₁ ih₂ => exact .trans _ _ _ ih₁ ih₂

/-- Conversion is stable under renaming. -/
theorem rename (h : Converts M N) (ρ : Nat → Nat) :
    Converts (M.rename ρ) (N.rename ρ) := by
  induction h with
  | rel a b h => exact .rel _ _ (h.rename ρ)
  | refl a => exact .refl _
  | symm a b _ ih => exact .symm _ _ ih
  | trans a b c _ _ ih₁ ih₂ => exact .trans _ _ _ ih₁ ih₂

end Converts

/-- A simultaneous substitution respects each declared variable's exact type. -/
def TypedSubstitution {S : Type u} (P : Specification S)
    (Γ Δ : List (Expr S)) (σ : Nat → Expr S) : Prop :=
  ∀ n A, Lookup Γ n A → HasType P Δ (σ n) (A.subst σ)

namespace TypedSubstitution

variable {S : Type u} {P : Specification S} {Γ Δ : List (Expr S)}
    {σ : Nat → Expr S}

/-- Restrict a typed substitution to the tail context. -/
theorem tail {A : Expr S} (hσ : TypedSubstitution P (A :: Γ) Δ σ) :
    TypedSubstitution P Γ Δ (σ ∘ Nat.succ) := by
  intro n B hB
  have h := hσ (n + 1) (B.rename Nat.succ) (.succ A hB)
  simpa only [Expr.subst_rename, Function.comp_def] using h

/-- Lift a typed substitution under one binder. -/
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

/-- Fundamental substitution theorem. -/
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

/-- Substitution by variables agrees with renaming. -/
theorem subst_var_rename (M : Expr S) (ρ : Nat → Nat) :
    M.subst (var ∘ ρ) = M.rename ρ := by
  rw [← subst_rename, subst_var]

@[simp]
theorem subst_lift_single (M a : Expr S) :
    (M.rename Nat.succ).subst (single a) = M := by
  rw [subst_rename]
  exact subst_var M

end Expr

namespace HasType

variable {S : Type u} {P : Specification S}

/-- Lookup in a valid context yields a typing derivation. -/
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

/-- Identity substitution is typed in every valid context. -/
theorem identity {Γ : List (Expr S)} (hΓ : ValidContext P Γ) :
    TypedSubstitution P Γ Γ Expr.var := by
  intro n A hn
  simpa only [Expr.subst_var] using HasType.lookup hΓ hn

/-- Context weakening as a typed substitution. -/
theorem weaken {Γ : List (Expr S)} {A : Expr S} {s : S}
    (hA : HasType P Γ A (.sort s)) :
    TypedSubstitution P Γ (A :: Γ) (Expr.var ∘ Nat.succ) := by
  intro n B hn
  simpa only [Expr.subst_var_rename, Function.comp_apply, Expr.rename] using
    (HasType.weaken (HasType.lookup hA.valid hn) hA)

/-- Single typed substitution for the newest binder. -/
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

/-- Typed renaming theorem. -/
theorem rename {M A : Expr S} (h : HasType P Γ M A)
    (hΔ : ValidContext P Δ) (ρ : Nat → Nat)
    (hρ : ∀ n B, Lookup Γ n B → HasType P Δ (.var (ρ n)) (B.rename ρ)) :
    HasType P Δ (M.rename ρ) (A.rename ρ) := by
  have hσ : TypedSubstitution P Γ Δ (Expr.var ∘ ρ) := by
    intro n B hn
    simpa only [Expr.subst_var_rename, Function.comp_apply] using hρ n B hn
  simpa only [Expr.subst_var_rename] using h.subst hΔ (Expr.var ∘ ρ) hσ

/-- Typed binder instantiation. -/
theorem instantiate {A b B a : Expr S}
    (hb : HasType P (A :: Γ) b B) (ha : HasType P Γ a A) :
    HasType P Γ (b.instantiate a) (B.instantiate a) :=
  hb.subst ha.valid _ (TypedSubstitution.single ha)

/-- Weakening below an existing binder. -/
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

/-- Convert the head declaration of a context. -/
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

/-- Every typing derivation satisfies the corresponding generation statement. -/
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
          obtain ⟨E, t, hb, hPi, hd⟩ := ihM
          exact ⟨E, t, hb, hPi, .trans _ _ _ (.symm _ _ hc) hd⟩
      | pi D E =>
          obtain ⟨t₁, t₂, t₃, hD, hE, hr, hd⟩ := ihM
          exact ⟨t₁, t₂, t₃, hD, hE, hr,
            .trans _ _ _ (.symm _ _ hc) hd⟩

end HasType

end GRWTSK.Logic.PortPureTypeSystem
```
