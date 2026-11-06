/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CharacterEulerSource
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CoreZeroInventories
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.FiniteLSeriesRouting

/-!
# One arithmetic root for zeta and every character readout

Keep all ZMod N residues, including nonunits and zero. The root is the vector of
actual continued Hurwitz functions times N^(-s), NOT divergent LSeries values.
A character is a complex-linear readout, not by itself an idempotent orthogonal
projection. The all-one readout is zeta at every positive modulus; the principal
Dirichlet character is a DIFFERENT readout and retains its Euler factors.

Reuse CharacterEuler.component and its proved-source candidate component error,
Mathlib ZMod.LFunction, and the existing exact RH/DirichletGRH core returns.
A complete linear split preserves the readout only when BOTH outputs are retained.
The squared readout includes its actual mixed term. An invertible coordinate
change requires contragredient readout transport; a large vector norm cannot
exclude cancellation in a character readout.

Primary argument: finite linearity, the zero additive-character specialization
of Mathlib's continued periodic L-function, and the triangle inequality applied
to the SAME complete source remainder. The final two results are CONDITIONAL:
their strict, whole-core, all-character gap hypotheses are NOT constructed.
No all-real-zero assertion, Weil positivity or RH/GRH proof is claimed.

Sources: Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612,
NumberTheory/LSeries/{ZMod,DirichletContinuation}; NIST DLMF 25.11.15,
25.15.3--25.15.5; Connes arXiv:2602.04022v1, Sections 4.1 and 6.6.
Local baseline: 83dcff3ccda15b1a3961140e8720c4eceddbddc5.
AI-assisted manual mathematical source. Novelty and independent review unassessed.
Elaboration, fresh kernel checking and transitive axiom audit: NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.Conditional.ArithmeticRootProjection

variable {N : ℕ} [NeZero N]

abbrev Root (N : ℕ) := ZMod N → ℂ

/-- All source residue components, with the source's exact modulus scaling. -/
def source (N : ℕ) [NeZero N] (s : ℂ) : Root N :=
  fun j => (N : ℂ) ^ (-s) * HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s

/-- Reuse the existing arithmetic approximation rather than fit a new waveform. -/
def model (N : ℕ) [NeZero N] (M : ℕ) (s : ℂ) : Root N :=
  fun j => (N : ℂ) ^ (-s) * CharacterEuler.component M j s

def tail (N : ℕ) [NeZero N] (M : ℕ) (s : ℂ) : Root N :=
  fun j => (N : ℂ) ^ (-s) *
    HurwitzEuler.analyticTail (EulerApproximation.positiveShift j) M s

/-- No conjugation: these are coefficient weights, as in the arithmetic L-function. -/
def readout (w : Root N) : Root N →ₗ[ℂ] ℂ where
  toFun x := ∑ j, w j * x j
  map_add' x y := by simp [mul_add, Finset.sum_add_distrib]
  map_smul' a x := by
    simp only [Pi.smul_apply, smul_eq_mul]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j _
    ring

/-- The same source supports every periodic coefficient functional. -/
theorem readout_source (w : Root N) (s : ℂ) :
    readout w (source N s) = ZMod.LFunction w s := by
  change (∑ j, w j * ((N : ℂ) ^ (-s) *
    HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s)) = _
  rw [ZMod.LFunction, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  ring

theorem character_source (χ : DirichletCharacter ℂ N) (s : ℂ) :
    readout (fun j => χ j) (source N s) = χ.LFunction s :=
  readout_source (fun j => χ j) s

/-- Unlike the principal character modulo N, this row retains every nonunit. -/
theorem zeta_source (s : ℂ) (pole : s ≠ 1) :
    readout (fun _ : ZMod N => (1 : ℂ)) (source N s) = riemannZeta s := by
  rw [readout_source]
  simpa [HurwitzZeta.expZeta_zero] using
    (ZMod.LFunction_stdAddChar_eq_expZeta (N := N) (0 : ZMod N) s (Or.inr pole))

/-- The historical principal-character Euler factors are preserved explicitly. -/
theorem principal_source (s : ℂ) (pole : s ≠ 1) :
    readout (fun j => (1 : DirichletCharacter ℂ N) j) (source N s) =
      CharacterApproximation.eulerFactor N s * riemannZeta s := by
  rw [character_source]
  exact DirichletCharacter.LFunctionTrivChar_eq_mul_riemannZeta pole

theorem character_model (χ : DirichletCharacter ℂ N) (M : ℕ) (s : ℂ) :
    readout (fun j => χ j) (model N M s) = CharacterEuler.model χ M s := by
  change (∑ j, χ j * ((N : ℂ) ^ (-s) * CharacterEuler.component M j s)) = _
  unfold CharacterEuler.model CharacterApproximation.combine
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Complete signed equality at the root, before applying any observer. -/
theorem source_sub_model (M : ℕ) (s : ℂ)
    (halfPlane : -2 < s.re) (pole : s ≠ 1) :
    source N s - model N M s = tail N M s := by
  funext j
  change (N : ℂ) ^ (-s) * _ - (N : ℂ) ^ (-s) * _ = _
  rw [← mul_sub, CharacterEuler.component_identity M j s halfPlane pole]
  rfl

theorem readout_complete_tail (w : Root N) (M : ℕ) (s : ℂ)
    (halfPlane : -2 < s.re) (pole : s ≠ 1) :
    readout w (source N s) - readout w (model N M s) =
      readout w (tail N M s) := by
  rw [← map_sub, source_sub_model M s halfPlane pole]

/-- Both root components and projections consume the same component allowance. -/
theorem root_component_error (M : ℕ) (s : ℂ) {R : ℝ}
    (halfPlane : 0 ≤ s.re) (pole : s ≠ 1) (size : ‖s‖ ≤ R) (j : ZMod N) :
    ‖source N s j - model N M s j‖ ≤ CubicApproximation.radiusBudget R M := by
  have hB := CubicApproximation.radiusBudget_nonneg ((norm_nonneg s).trans size) M
  change ‖(N : ℂ) ^ (-s) * _ - (N : ℂ) ^ (-s) * _‖ ≤ _
  rw [← mul_sub, norm_mul]
  calc
    _ ≤ ‖(N : ℂ) ^ (-s)‖ * CubicApproximation.radiusBudget R M :=
      mul_le_mul_of_nonneg_left
        (CharacterEuler.component_bound M j s halfPlane pole size) (norm_nonneg _)
    _ ≤ CubicApproximation.radiusBudget R M :=
      mul_le_of_le_one_left hB (CharacterEuler.modulus_factor_le_one s halfPlane)

/-- Weighted projection error, without dropping signs from the source identity. -/
theorem readout_error (w x y : Root N) (B : ℝ)
    (components : ∀ j, ‖x j - y j‖ ≤ B) :
    ‖readout w x - readout w y‖ ≤ (∑ j, ‖w j‖) * B := by
  rw [← map_sub]
  change ‖∑ j, w j * (x j - y j)‖ ≤ _
  calc
    _ ≤ ∑ j, ‖w j * (x j - y j)‖ := norm_sum_le _ _
    _ ≤ ∑ j, ‖w j‖ * B := by
      apply Finset.sum_le_sum
      intro j _
      rw [norm_mul]
      exact mul_le_mul_of_nonneg_left (components j) (norm_nonneg _)
    _ = _ := by rw [Finset.sum_mul]

theorem projected_source_error (w : Root N) (M : ℕ) (s : ℂ) {R : ℝ}
    (halfPlane : 0 ≤ s.re) (pole : s ≠ 1) (size : ‖s‖ ≤ R) :
    ‖readout w (source N s) - readout w (model N M s)‖ ≤
      (∑ j, ‖w j‖) * CubicApproximation.radiusBudget R M :=
  readout_error w _ _ _ (root_component_error M s halfPlane pole size)

/-- Each coordinate of a matrix projection inherits a proved root-derived allowance.
No contractivity is assumed merely because the matrix is called a filter. -/
theorem projected_root_component_error
    (P : Matrix (ZMod N) (ZMod N) ℂ) (M : ℕ) (s : ℂ) {R : ℝ}
    (halfPlane : 0 ≤ s.re) (pole : s ≠ 1) (size : ‖s‖ ≤ R) (i : ZMod N) :
    ‖P.mulVec (source N s) i - P.mulVec (model N M s) i‖ ≤
      (∑ j, ‖P i j‖) * CubicApproximation.radiusBudget R M := by
  exact projected_source_error (P i) M s halfPlane pole size

theorem zeta_model_error (M : ℕ) (s : ℂ) {R : ℝ}
    (halfPlane : 0 ≤ s.re) (pole : s ≠ 1) (size : ‖s‖ ≤ R) :
    ‖riemannZeta s - readout (fun _ : ZMod N => (1 : ℂ)) (model N M s)‖ ≤
      (N : ℝ) * CubicApproximation.radiusBudget R M := by
  simpa [zeta_source s pole, ZMod.card] using
    projected_source_error (fun _ : ZMod N => (1 : ℂ)) M s halfPlane pole size

/-- A complete split, not merely the retained projection, returns every readout. -/
theorem split_readout (w : Root N) (P : Root N →ₗ[ℂ] Root N) (x : Root N) :
    readout w (P x) + readout w ((LinearMap.id - P) x) = readout w x := by
  rw [← map_add]
  congr 1
  simp

/-- Coherent recombination carries a mixed term, even for orthogonal source ports. -/
theorem split_readout_square (w : Root N) (P : Root N →ₗ[ℂ] Root N) (x : Root N) :
    Complex.normSq (readout w x) =
      Complex.normSq (readout w (P x)) +
      Complex.normSq (readout w ((LinearMap.id - P) x)) +
      2 * (readout w (P x) * conj (readout w ((LinearMap.id - P) x))).re := by
  rw [← split_readout w P x, Complex.normSq_add]

/-- Coordinate mixing is harmless only when the observer is transported too. -/
theorem transported_readout (w : Root N) (U : Root N ≃ₗ[ℂ] Root N) (x : Root N) :
    ((readout w).comp U.symm.toLinearMap) (U x) = readout w x := by simp

/-- The original finite L-series interface is consumed, not independently redefined. -/
theorem readout_finite (w : Root N) (S : Finset ℕ) (a : ℕ → Root N) (s : ℂ) :
    readout w (GRWTSK.NumberTheory.LSeriesRouting.finite S a s) =
      GRWTSK.NumberTheory.LSeriesRouting.finite S (fun n => readout w (a n)) s :=
  GRWTSK.NumberTheory.LSeriesRouting.map_finite (readout w) S a s

/-- A strict scalar projected margin, not root norm positivity, excludes its zero. -/
theorem nonzero_of_projected_margin (w x y : Root N) {B : ℝ}
    (error : ‖readout w x - readout w y‖ ≤ B)
    (margin : B < ‖readout w y‖) : readout w x ≠ 0 := by
  intro hz
  rw [hz, zero_sub, norm_neg] at error
  exact (not_lt_of_ge error) margin

/-- CONDITIONAL actual DirichletGRH return. No universal margins are supplied. -/
theorem grh_of_shared_root_margins
    (margins : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q) (n : ℕ),
      ∃ k : ℕ, ∀ s ∈ offCore n,
        CubicApproximation.errorRate k <
          ‖readout (fun j => χ j) (model q (CharacterEuler.coreCutoff q n k) s)‖) :
    DirichletGRH := by
  apply SourceInventories.grh_iff_all_characterCore_empty.mpr
  intro q hq χ n
  apply (SourceInventories.characterCore_empty_iff χ n).mpr
  intro s hs
  obtain ⟨k, hk⟩ := margins q χ n
  have he := CharacterEuler.offCore_error χ n k s hs
  have hm := hk s hs
  rw [character_model] at hm
  intro hz
  rw [hz, zero_sub, norm_neg] at he
  exact (not_lt_of_ge he) hm

/-- CONDITIONAL actual RH return from the all-residue row at one fixed modulus.
This reuses the original right-core exhaustion and exterior/reflection theorems. -/
theorem rh_of_shared_root_margins
    (margins : ∀ n : ℕ, ∃ M : ℕ, ∀ s ∈ rightCore n,
      (N : ℝ) * CubicApproximation.radiusBudget (n : ℝ) M <
        ‖readout (fun _ : ZMod N => (1 : ℂ)) (model N M s)‖) :
    _root_.RiemannHypothesis := by
  apply rh_iff_nonzero_rightStrip.mpr
  intro s hs
  obtain ⟨n, hn⟩ := exists_rightCore hs
  obtain ⟨M, hM⟩ := margins n
  have hnonnegative : 0 ≤ s.re := by linarith [hs.1]
  have hsize : ‖s‖ ≤ (n : ℝ) := by
    simpa only [Metric.mem_closedBall, dist_zero_right] using hn.1
  have he := zeta_model_error (N := N) M s hnonnegative (strip_ne_one hs.2) hsize
  have hm := hM s hn
  intro hz
  rw [hz, zero_sub, norm_neg] at he
  exact (not_lt_of_ge he) hm

end GRWTSK.NumberTheory.Conditional.ArithmeticRootProjection
