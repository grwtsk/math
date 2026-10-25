# Complete source: GRWTSK.Logic.PortPureTypeSystemSubjectReduction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fb802df8c418fb24ae8fa5988ce7074bdcba5d0` · SHA-256 `27f679fc30d48ce73e0f35a144c2ac40f38888df39794845edb6f16645689cee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Subject-reduction metatheory adapted into the GRWTSK namespace from `openai/math`
revision `1581d4cbdd69a0faf34b2089614fe2a814316a6a`,
`lean/OAI/Computability/TypeSystem/Typing.lean` (Apache-2.0).
-/
import GRWTSK.Logic.PortPureTypeSystemReduction
import GRWTSK.Logic.PortPureTypeSystemTyping

namespace GRWTSK.Logic.PortPureTypeSystem

universe u

namespace HasType

variable {S : Type u} {P : Specification S}

/-- Product generation specialized from the generic generation theorem. -/
theorem generation_pi {Γ : List (Expr S)} {A B T : Expr S}
    (h : HasType P Γ (.pi A B) T) :
    ∃ s₁ s₂ s₃, HasType P Γ A (.sort s₁) ∧
      HasType P (A :: Γ) B (.sort s₂) ∧ P.rule s₁ s₂ s₃ ∧
      Converts T (.sort s₃) :=
  h.generation

/-- Lambda generation specialized from the generic generation theorem. -/
theorem generation_lam {Γ : List (Expr S)} {A b T : Expr S}
    (h : HasType P Γ (.lam A b) T) :
    ∃ B s, HasType P (A :: Γ) b B ∧
      HasType P Γ (.pi A B) (.sort s) ∧ Converts T (.pi A B) :=
  h.generation

/-- Application generation specialized from the generic generation theorem. -/
theorem generation_app {Γ : List (Expr S)} {f a T : Expr S}
    (h : HasType P Γ (.app f a) T) :
    ∃ A B, HasType P Γ f (.pi A B) ∧ HasType P Γ a A ∧
      Converts T (B.instantiate a) :=
  h.generation

/-- Correctness of types, including the unsorted literal-sort alternative. -/
theorem regularity {Γ : List (Expr S)} {M A : Expr S}
    (h : HasType P Γ M A) :
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

/-- A product appearing as a type is itself sorted. -/
theorem product_type_sorted {Γ : List (Expr S)} {M A B : Expr S}
    (h : HasType P Γ M (.pi A B)) :
    ∃ s, HasType P Γ (.pi A B) (.sort s) := by
  obtain ⟨s, heq⟩ | hs := h.regularity
  · cases heq
  · exact hs

end HasType

namespace Converts

variable {S : Type u}

/-- Product conversion can be constructed componentwise. -/
theorem pi {A A' B B' : Expr S}
    (hA : Converts A A') (hB : Converts B B') :
    Converts (.pi A B) (.pi A' B') := by
  obtain ⟨D, hD, hD'⟩ := hA.join
  obtain ⟨E, hE, hE'⟩ := hB.join
  exact .trans _ _ _ (hD.pi hE).converts
    (.symm _ _ (hD'.pi hE').converts)

/-- A product cannot be convertible to a literal sort. -/
theorem pi_not_sort {A B : Expr S} {s : S} :
    ¬ Converts (.pi A B) (.sort s) := by
  intro h
  obtain ⟨N, hN, hs⟩ := h.join
  have heq := (Normal.sort s).reduces_eq hs
  obtain ⟨D, E, hDE, _, _⟩ := hN.pi_inv
  cases heq.trans hDE

/-- Convertible literal sorts are identical. -/
theorem sort_inj {s t : S}
    (h : Converts (Expr.sort s) (.sort t)) : s = t :=
  Expr.sort.inj ((Normal.sort s).eq_of_converts (Normal.sort t) h)

/-- Instantiating one fixed codomain preserves conversion of its argument. -/
theorem instantiate_right {a a' : Expr S}
    (h : Converts a a') (B : Expr S) :
    Converts (B.instantiate a) (B.instantiate a') := by
  induction h with
  | rel a a' h =>
      exact (Parallel.instantiate (Parallel.refl B)
        (Parallel.of_beta h)).reduces.converts
  | refl a => exact .refl _
  | symm a b h ih => exact .symm _ _ ih
  | trans a b c hab hbc ih₁ ih₂ => exact .trans _ _ _ ih₁ ih₂

end Converts

namespace HasType

variable {S : Type u} {P : Specification S}

/-- An application's expected type is sorted. -/
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

/-- An application's expected type is sorted. -/
theorem application_type_sorted {Γ : List (Expr S)} {f a T : Expr S}
    (h : HasType P Γ (.app f a) T) :
    ∃ s, HasType P Γ T (.sort s) :=
  h.application_type_sorted_aux f a rfl

/-- An abstraction's expected type is sorted. -/
theorem abstraction_type_sorted {Γ : List (Expr S)} {A b T : Expr S}
    (h : HasType P Γ (.lam A b) T) :
    ∃ s, HasType P Γ T (.sort s) := by
  obtain ⟨s, hT⟩ | hs := h.regularity
  · obtain ⟨B, t, hb, hPi, hc⟩ := h.generation_lam
    subst T
    exact False.elim (Converts.pi_not_sort (.symm _ _ hc))
  · exact hs

/-- Reconstruct a sorted expression at its original expected type. -/
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
        (.symm _ _
          ((show Converts a a' from .rel _ _ hr).instantiate_right B))
        (.symm _ _ hc))
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
      exact (HasType.product hA' hB' hrule).conversion_from_sort
        h.regularity hc
  | pi_body hr ih =>
      obtain ⟨s₁, s₂, s₃, hA, hB, hrule, hc⟩ := h.generation_pi
      exact (HasType.product hA (ih hB) hrule).conversion_from_sort
        h.regularity hc

/-- Multi-step subject reduction at the exact original type. -/
theorem subject_reduces {Γ : List (Expr S)} {M N T : Expr S}
    (h : HasType P Γ M T) (hr : Reduces M N) : HasType P Γ N T := by
  induction hr with
  | refl => exact h
  | tail _ hr ih => exact ih.subject_reduction hr

end HasType

end GRWTSK.Logic.PortPureTypeSystem
```
