/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.NumberField.TotallyRealSignApproximation
import GRWTSK.AlgebraicGeometry.Hodge.CMArchimedeanPositivity

/-!
# Totally real rescaling interface for CM polarization

The archimedean sign problem reduces to the maximal totally real fixed field.
This file isolates the exact remaining identification: representatives of CM
conjugate Galois pairs must match the real embeddings of a totally real field
embedded in E.

Once that interface is supplied, finite totally-real weak approximation
constructs a conjugation-fixed rescaling factor with the required sign row,
and hence constructs a SignControlledXi.

No Riemann criterion or abelian-variety realization occurs here.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMRealRescaling

open CMNumberFieldIndex
open CMTracePolarization
open CMArchimedeanPositivity
open GRWTSK.NumberTheory.TotallyRealSignApproximation

noncomputable section

variable (E F : Type*)
  [Field E] [NumberField E] [IsCMField E] [IsGalois ℚ E]
  [Field F] [NumberField F] [NumberField.IsTotallyReal F]

/-- Exact interface between a totally real fixed-field model and the
conjugate-pair indexing of a Galois CM field.

The interface deliberately records only what the sign-selection proof uses.
Instantiating it canonically with E^+ is a separate theorem. -/
structure RealRescalingInterface where
  include : F →ₐ[ℚ] E
  fixed : ∀ x : F, galoisComplexConj E (include x) = include x
  order : EmbeddingOrder F (Module.finrank ℚ F)
  representative : Fin (Module.finrank ℚ F) → (E ≃ₐ[ℚ] E)
  covers : ∀ σ : E ≃ₐ[ℚ] E,
    ∃ i, σ = representative i ∨
      σ = (centralInvolution E).conj (representative i)
  real_eval : ∀ (i : Fin (Module.finrank ℚ F)) (x : F),
    (complexEmbeddingAt E (representative i) (include x)).re =
      orderedRealEmbedding order i x

/-- Pull the even CM rescaling row back to the selected representatives of
the totally real embedding coordinates. -/
def requiredSignPattern
    (R : RealRescalingInterface E F)
    (v : OddSignRow E)
    (P : TracePolarizationData E) :
    SignPattern (Module.finrank ℚ F) where
  value i := (requiredRescalingSign E v P).value (R.representative i)
  isSign i := (requiredRescalingSign E v P).isSign _

/-- The included totally real element is fixed by CM conjugation. -/
theorem included_fixed
    (R : RealRescalingInterface E F) (x : F) :
    galoisComplexConj E (R.include x) = R.include x :=
  R.fixed x

/-- Finite weak approximation on the totally real side constructs a fixed
CM-field element realizing the required even rescaling sign row on every
Galois label. -/
theorem exists_fixedElement_realizesRequiredSign
    (R : RealRescalingInterface E F)
    (v : OddSignRow E)
    (P : TracePolarizationData E) :
    ∃ f : E,
      galoisComplexConj E f = f ∧ f ≠ 0 ∧
        FixedElementRealizesRequiredSign E v P f := by
  let s := requiredSignPattern E F R v P
  obtain ⟨a, ha⟩ :=
    exists_realEmbeddingVector_realizesSigns
      (Module.finBasis ℚ F) R.order s
  have hn : 0 < Module.finrank ℚ F := Module.finrank_pos
  letI : Nonempty (Fin (Module.finrank ℚ F)) := ⟨⟨0, hn⟩⟩
  have ha0 : a ≠ 0 :=
    ne_zero_of_realizesSigns R.order s ha
  have hf0 : R.include a ≠ 0 :=
    (map_ne_zero R.include.toRingHom).mpr ha0
  refine ⟨R.include a, R.fixed a, hf0, ?_⟩
  intro σ
  obtain ⟨i, hσ | hσ⟩ := R.covers σ
  · subst σ
    constructor
    · intro hs
      have hp := (ha i).1 hs
      rw [R.real_eval]
      exact hp
    · intro hs
      have hn' := (ha i).2 hs
      rw [R.real_eval]
      exact hn'
  · subst σ
    have hrep :
        ((requiredRescalingSign E v P).value (R.representative i) = 1 →
          0 < (complexEmbeddingAt E (R.representative i) (R.include a)).re) ∧
        ((requiredRescalingSign E v P).value (R.representative i) = -1 →
          (complexEmbeddingAt E (R.representative i) (R.include a)).re < 0) := by
      constructor
      · intro hs
        have hp := (ha i).1 hs
        rw [R.real_eval]
        exact hp
      · intro hs
        have hn' := (ha i).2 hs
        rw [R.real_eval]
        exact hn'
    have hval := requiredRescalingSign_conj E v P (R.representative i)
    have hemb := complexEmbeddingAt_conj_eq_of_fixed E (R.fixed a)
      (R.representative i)
    constructor
    · intro hs
      rw [hval] at hs
      have hp := hrep.1 hs
      simpa [hemb] using hp
    · intro hs
      rw [hval] at hs
      have hn' := hrep.2 hs
      simpa [hemb] using hn'

/-- The real-rescaling interface plus finite weak approximation produces an
actual sign-controlled CM polarization parameter. -/
theorem exists_signControlledXi
    (R : RealRescalingInterface E F)
    (v : OddSignRow E)
    (P : TracePolarizationData E) :
    ∃ X : SignControlledXi E v, True := by
  obtain ⟨f, hf, hf0, hreal⟩ :=
    exists_fixedElement_realizesRequiredSign E F R v P
  have hsign : FixedRescalingSignCondition E v P f :=
    fixedRescalingSignCondition_of_realizesRequiredSign E v P f hreal
  exact ⟨signControlledXiOfFixedRescaling E v P f hf hf0 hsign, trivial⟩

/-- Cleaner existence formulation. -/
theorem nonempty_signControlledXi
    (R : RealRescalingInterface E F)
    (v : OddSignRow E)
    (P : TracePolarizationData E) :
    Nonempty (SignControlledXi E v) := by
  obtain ⟨X, _⟩ := exists_signControlledXi E F R v P
  exact ⟨X⟩

end

end GRWTSK.AlgebraicGeometry.Hodge.CMRealRescaling
