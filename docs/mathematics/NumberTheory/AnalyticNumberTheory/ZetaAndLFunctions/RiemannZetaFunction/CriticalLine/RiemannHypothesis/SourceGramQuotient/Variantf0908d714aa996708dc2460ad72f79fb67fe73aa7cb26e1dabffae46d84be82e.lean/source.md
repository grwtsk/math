# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceGramQuotient.Variantf0908d714aa996708dc2460ad72f79fb67fe73aa7cb26e1dabffae46d84be82e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2428fc8ad59a83a3765ce656e25d20092284ab6` · SHA-256 `f0908d714aa996708dc2460ad72f79fb67fe73aa7cb26e1dabffae46d84be82e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceOrbitCoordinates
import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
import Mathlib.Analysis.InnerProductSpace.Projection.Basic

/-!
# Positive source Gram quotient and compressed reflection

The metric is pulled back from the literal finite source orbit after synthesis
dependencies are removed. Reflection is compressed for arbitrary subspaces and
is an involution only under the explicit invariance hypothesis. Both signed
translate channels are already present in the maintained four-channel source.

Human direction and theorem selection: grwtsk contributors.
New proofs and checks: OpenAI Codex, QGL-ALL-20261007.
This module proves no uniform signed arithmetic estimate.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.QuantumLanglands.SourceGramQuotient

open scoped BigOperators InnerProductSpace
open FormalResearch.RiemannHypothesis
open SourceReflectionDuality SourceArithmeticOrbit SourceOrbitCoordinates
open SourceMangoldtInteraction SourceScaleL2Continuity SourceDualRotation SourcePrimeMomentScale
open MeasureTheory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- A separate type prevents the Gram norm from being confused with a coefficient norm. -/
def GramQuotient (q : ComplexL2) (I : Finset ℕ) :=
  (OrbitIndex I → ℂ) ⧸ LinearMap.ker (synthesis q I)

instance (q : ComplexL2) (I : Finset ℕ) : AddCommGroup (GramQuotient q I) :=
  inferInstanceAs (AddCommGroup ((OrbitIndex I → ℂ) ⧸ LinearMap.ker (synthesis q I)))

instance (q : ComplexL2) (I : Finset ℕ) : Module ℂ (GramQuotient q I) :=
  inferInstanceAs (Module ℂ ((OrbitIndex I → ℂ) ⧸ LinearMap.ker (synthesis q I)))

/-- The maintained first-isomorphism theorem identifies the quotient with the source range. -/
def sourceEquiv (q : ComplexL2) (I : Finset ℕ) :
    GramQuotient q I ≃ₗ[ℂ] finiteOrbit q I := synthesisQuotientEquivOrbit q I

instance (q : ComplexL2) (I : Finset ℕ) : NormedAddCommGroup (GramQuotient q I) :=
  NormedAddCommGroup.induced _ _ (sourceEquiv q I) (sourceEquiv q I).injective

instance (q : ComplexL2) (I : Finset ℕ) : InnerProductSpace ℂ (GramQuotient q I) :=
  InnerProductSpace.induced (sourceEquiv q I)

/-- This is an actual isometry for the Gram metric, without a independence assumption. -/
def sourceIsometry (q : ComplexL2) (I : Finset ℕ) :
    GramQuotient q I ≃ₗᵢ[ℂ] finiteOrbit q I where
  toLinearEquiv := sourceEquiv q I
  norm_map' _ := rfl

/-- Positive definiteness holds on classes, including dependent labelled inventories. -/
theorem gram_inner_self_eq_zero_iff (q : ComplexL2) (I : Finset ℕ)
    (x : GramQuotient q I) : ⟪x, x⟫_ℂ = 0 ↔ x = 0 := inner_self_eq_zero

/-- The quotient pairing recovers every mixed Gram entry of a representative. -/
theorem gram_inner_mk (q : ComplexL2) (I : Finset ℕ) (c d : OrbitIndex I → ℂ) :
    ⟪(Submodule.Quotient.mk c : GramQuotient q I),
      (Submodule.Quotient.mk d : GramQuotient q I)⟫_ℂ =
      ∑ i, ∑ j, star (c i) * d j * gramMatrix q I i j := synthesis_inner q I c d

/-- Signed data descend through the same kernel, separately from the positive metric. -/
def signedForm (q : ComplexL2) (I : Finset ℕ)
    (x y : GramQuotient q I) : ℂ :=
  ⟪(sourceEquiv q I x : ComplexL2), reflection (sourceEquiv q I y)⟫_ℂ

theorem signedForm_mk (q : ComplexL2) (I : Finset ℕ) (c d : OrbitIndex I → ℂ) :
    signedForm q I (Submodule.Quotient.mk c) (Submodule.Quotient.mk d) =
      ∑ i, ∑ j, star (c i) * d j * reflectedMatrix q I i j :=
  synthesis_reflected_inner q I c d

/-- Actual geometric reflection is self-adjoint because its inverse is itself. -/
theorem reflection_inner_symmetric (u v : ComplexL2) :
    ⟪reflection u, v⟫_ℂ = ⟪u, reflection v⟫_ℂ := by
  have h := reflection.inner_map_map u (reflection v)
  simpa only [reflection_involutive] using h

/-- Compression is defined on the range; it need not preserve an involution law. -/
def compressedReflection (K : Submodule ℂ ComplexL2) [K.HasOrthogonalProjection] : K →L[ℂ] K :=
  K.orthogonalProjectionOnto.comp
    (reflection.toLinearIsometry.toContinuousLinearMap.comp K.subtypeL)

theorem compressedReflection_pairing (K : Submodule ℂ ComplexL2)
    [K.HasOrthogonalProjection] (u v : K) :
    ⟪u, compressedReflection K v⟫_ℂ = ⟪(u : ComplexL2), reflection v⟫_ℂ := by
  exact K.inner_orthogonalProjectionOnto_eq_of_mem_left u (reflection v)

theorem compressedReflection_symmetric (K : Submodule ℂ ComplexL2)
    [K.HasOrthogonalProjection] (u v : K) :
    ⟪compressedReflection K u, v⟫_ℂ = ⟪u, compressedReflection K v⟫_ℂ := by
  change ⟪K.orthogonalProjectionOnto (reflection u), v⟫_ℂ =
    ⟪u, K.orthogonalProjectionOnto (reflection v)⟫_ℂ
  rw [K.inner_orthogonalProjectionOnto_eq_of_mem_right,
    K.inner_orthogonalProjectionOnto_eq_of_mem_left, reflection_inner_symmetric]

theorem compressedReflection_norm_le (K : Submodule ℂ ComplexL2)
    [K.HasOrthogonalProjection] (v : K) : ‖compressedReflection K v‖ ≤ ‖v‖ := by
  exact (K.norm_orthogonalProjectionOnto_apply_le (reflection v)).trans_eq
    (reflection.norm_map v)

theorem compressedReflection_involutive_of_invariant (K : Submodule ℂ ComplexL2)
    [K.HasOrthogonalProjection] (hK : ∀ v ∈ K, reflection v ∈ K) (v : K) :
    compressedReflection K (compressedReflection K v) = v := by
  have hv : compressedReflection K v = ⟨reflection v, hK v v.property⟩ :=
    K.orthogonalProjectionOnto_mem_subspace_eq_self ⟨reflection v, hK v v.property⟩
  rw [hv]
  change K.orthogonalProjectionOnto (reflection (reflection v)) = v
  rw [reflection_involutive]
  exact K.orthogonalProjectionOnto_mem_subspace_eq_self v

/-- The descended signed form is represented by the literal compressed source operator. -/
theorem signedForm_eq_compression (q : ComplexL2) (I : Finset ℕ)
    (x y : GramQuotient q I) :
    signedForm q I x y =
      ⟪sourceEquiv q I x, compressedReflection (finiteOrbit q I) (sourceEquiv q I y)⟫_ℂ :=
  (compressedReflection_pairing _ _ _).symm

/-- Doubling by the reflected source produces a genuine positive Gram block. -/
theorem augmented_gram_nonneg (q : ComplexL2) (I : Finset ℕ)
    (x y : GramQuotient q I) :
    0 ≤ (⟪x, x⟫_ℂ + signedForm q I x y + signedForm q I y x + ⟪y, y⟫_ℂ).re := by
  let u : ComplexL2 := sourceEquiv q I x
  let v : ComplexL2 := sourceEquiv q I y
  have h : ⟪u + reflection v, u + reflection v⟫_ℂ =
      ⟪u, u⟫_ℂ + ⟪u, reflection v⟫_ℂ + ⟪v, reflection u⟫_ℂ + ⟪v, v⟫_ℂ := by
    rw [inner_add_left, inner_add_right, inner_add_right,
      reflection.inner_map_map, reflection_inner_symmetric]
    ring
  have hp := inner_self_nonneg (𝕜 := ℂ) (x := u + reflection v)
  change 0 ≤ (⟪u, u⟫_ℂ + ⟪u, reflection v⟫_ℂ +
    ⟪v, reflection u⟫_ℂ + ⟪v, v⟫_ℂ).re
  rw [← h]
  exact hp

/-- Both signs of the reflected diagonal are controlled by the positive Gram metric. -/
theorem gram_plus_minus_reflection_nonneg (q : ComplexL2) (I : Finset ℕ)
    (x : GramQuotient q I) :
    0 ≤ (⟪x, x⟫_ℂ + signedForm q I x x).re ∧
    0 ≤ (⟪x, x⟫_ℂ - signedForm q I x x).re := by
  have hp := augmented_gram_nonneg q I x x
  have hm := augmented_gram_nonneg q I x (-x)
  simp only [signedForm, map_neg, inner_neg_left, inner_neg_right,
    inner_neg_neg, Complex.add_re, Complex.sub_re, Complex.neg_re] at hp hm ⊢
  constructor <;> linarith

/-- Common-source comparison supplies uniqueness before any cocycle assertion. -/
theorem common_source_uniqueness (q : ComplexL2) (I : Finset ℕ)
    (x y : GramQuotient q I) (h : (sourceEquiv q I x : ComplexL2) = sourceEquiv q I y) :
    x = y := (sourceEquiv q I).injective (Subtype.ext h)

/-- Fixed-source refinements preserve the new quotient metric. -/
theorem gram_refinement_isometry (q : ComplexL2) {I K : Finset ℕ} (hIK : I ⊆ K)
    (x y : GramQuotient q I) :
    ⟪(quotientRefinement q hIK x : GramQuotient q K),
      (quotientRefinement q hIK y : GramQuotient q K)⟫_ℂ = ⟪x, y⟫_ℂ :=
  quotientRefinement_inner q hIK x y

/-- On the actual normalized source and the actual closed prime-power inventory,
the compressed signed operator is an involution. -/
theorem actual_source_compression_involutive {A : ℝ} (hA : 0 < A)
    (v : finiteOrbit (originalSourceState A) (primePowerInventory (2 * A))) :
    compressedReflection _ (compressedReflection _ v) = v := by
  apply compressedReflection_involutive_of_invariant
  intro u hu
  exact reflection_mem_finiteOrbit
    (actual_source_even hA _ (originalSourceState_coe_ae hA)) _ hu

/-- The actual real representative makes the full complex coefficient real. -/
theorem actual_source_correlation_complex {A : ℝ} (hA : 0 < A) (s : ℝ) :
    ⟪originalSourceState A, translation s (originalSourceState A)⟫_ℂ =
      (sourceCorrelation explicitSecondDerivative A s : ℂ) := by
  have ht : translation s (originalSourceState A) =ᵐ[volume]
      fun x => (normalizedTest explicitSecondDerivative A (x - s) : ℂ) := by
    filter_upwards [translation_coe_ae s (originalSourceState A),
      (measurePreserving_sub_right volume s).quasiMeasurePreserving.ae
        (originalSourceState_coe_ae hA)] with x hx hy
    exact hx.trans hy
  rw [L2.inner_def]
  calc
    _ = ∫ x : ℝ, ((normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x - s) : ℝ) : ℂ) := by
      apply integral_congr_ae
      filter_upwards [originalSourceState_coe_ae hA, ht] with x hx hy
      rw [hx, hy, RCLike.inner_apply']
      simp
    _ = _ := integral_complex_ofReal

/-- The native forward Gram entry has the difference of the logarithmic shifts. -/
theorem actual_source_gram_entry {A : ℝ} (hA : 0 < A) (m n : ℕ) :
    ⟪translation (Real.log m) (originalSourceState A),
      translation (Real.log n) (originalSourceState A)⟫_ℂ =
      (sourceCorrelation explicitSecondDerivative A (Real.log m - Real.log n) : ℂ) := by
  rw [translation_inner_stationary, actual_source_correlation_complex hA]
  have h := sourceCorrelation_even A (Real.log m - Real.log n)
  rw [show -(Real.log m - Real.log n) = Real.log n - Real.log m by ring] at h
  exact congrArg Complex.ofReal h

/-- The native reflected entry has the sum, with the actual physical reflection. -/
theorem actual_source_reflected_entry {A : ℝ} (hA : 0 < A) (m n : ℕ) :
    ⟪translation (Real.log m) (originalSourceState A),
      reflection (translation (Real.log n) (originalSourceState A))⟫_ℂ =
      (sourceCorrelation explicitSecondDerivative A (Real.log m + Real.log n) : ℂ) := by
  rw [reflection_translation_reverse,
    actual_source_even hA _ (originalSourceState_coe_ae hA),
    translation_inner_stationary, actual_source_correlation_complex hA]
  have h := sourceCorrelation_even A (Real.log m + Real.log n)
  rw [show -(Real.log m + Real.log n) = -Real.log n - Real.log m by ring] at h
  exact congrArg Complex.ofReal h

end FormalResearch.QuantumLanglands.SourceGramQuotient
```
