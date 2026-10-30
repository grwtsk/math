/- Copyright (c) 2026 grwtsk contributors. MIT.

Mathematical source/proof adaptation: OpenAI (2026), Apache-2.0,
"Finite-rank gap and determinant perturbations", in
"Stationary instability and nonuniqueness for axisymmetric swirl-free Navier–Stokes":
https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/MathematicalPhysics/NavierStokes/FiniteRankGap.lean
Upstream source blob: f1ebe2af6bb031e2a524b613f8f07d2033072c83.
Original upstream author and license are retained here as provenance; the local
GRWTSK bridge declarations are by grwtsk contributors.
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteObservationGap
import GRWTSK.AlgebraicTopology.SurfacePolygonPolarComplexPhase
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSpectralHeatGap
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.WeilPolarization
import GRWTSK.FunctionalAnalysis.NormedLinearSpacesAndBanachSpacesBanachLattices.LinearRelaxation
import Mathlib.Analysis.Normed.Module.FiniteDimension
import Mathlib.Topology.Order.IntermediateValue
import Mathlib.Tactic.Abel
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesMomentGap

/-!
# Finite-rank gap and determinant perturbations

The coercivity argument for the moment matrix in *Stationary instability and nonuniqueness
for axisymmetric swirl-free Navier–Stokes*, Section 2, gives a lower norm bound in terms of
the residual map. Perturbations smaller than this bound preserve injectivity and, in finite
dimensions over the reals, the sign of the determinant.
-/

noncomputable section


variable {E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-- The moment matrix `I + BC`, expressed without choosing coordinates. -/
def momentMatrix (B : E →L[ℝ] F) (C : F →L[ℝ] E) : F →L[ℝ] F :=
  ContinuousLinearMap.id ℝ F + B.comp C

/-- The algebraic least-singular-value estimate for the moment matrix. The residual map `R`
and the coercivity hypothesis give a lower norm bound without a finite-dimensional assumption. -/
theorem finite_rank_gap (B : E →L[ℝ] F) (C : F →L[ℝ] E)
    (R : F →L[ℝ] E →L[ℝ] ℝ) {ε β δ : ℝ}
    (hε : 0 < ε) (hB : ‖B‖ ≤ β) (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y, ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y)) (y : F) :
    ε / (ε + β * δ) * ‖y‖ ≤ ‖momentMatrix B C y‖ := by
  have hβ : 0 ≤ β := (norm_nonneg B).trans hB
  have hδ : 0 ≤ δ := (norm_nonneg R).trans hR
  have hpair : R (momentMatrix B C y) (C y) ≤
      δ * ‖momentMatrix B C y‖ * ‖C y‖ := by
    calc
      R (momentMatrix B C y) (C y) ≤ |R (momentMatrix B C y) (C y)| := le_abs_self _
      _ = ‖R (momentMatrix B C y) (C y)‖ := (Real.norm_eq_abs _).symm
      _ ≤ ‖R (momentMatrix B C y)‖ * ‖C y‖ := (R _).le_opNorm _
      _ ≤ (‖R‖ * ‖momentMatrix B C y‖) * ‖C y‖ := by
        gcongr
        exact R.le_opNorm _
      _ ≤ δ * ‖momentMatrix B C y‖ * ‖C y‖ := by gcongr
  have hC : ε * ‖C y‖ ≤ δ * ‖momentMatrix B C y‖ := by
    by_cases hz : ‖C y‖ = 0
    · simp only [hz, mul_zero]
      positivity
    · have hp : 0 < ‖C y‖ := lt_of_le_of_ne (norm_nonneg _) (Ne.symm hz)
      apply (mul_le_mul_iff_of_pos_right hp).mp
      nlinarith [hcoercive y]
  have htriangle : ‖y‖ ≤ ‖momentMatrix B C y‖ + β * ‖C y‖ := by
    have hid : y = momentMatrix B C y - B (C y) := by
      simp [momentMatrix]
    calc
      ‖y‖ = ‖momentMatrix B C y - B (C y)‖ := congrArg norm hid
      _ ≤ ‖momentMatrix B C y‖ + ‖B (C y)‖ := norm_sub_le _ _
      _ ≤ ‖momentMatrix B C y‖ + β * ‖C y‖ :=
        add_le_add_right ((B.le_opNorm _).trans
          (mul_le_mul_of_nonneg_right hB (norm_nonneg _))) _
  have hden : 0 < ε + β * δ := add_pos_of_pos_of_nonneg hε (mul_nonneg hβ hδ)
  rw [div_mul_eq_mul_div]
  apply (div_le_iff₀ hden).mpr
  nlinarith [mul_le_mul_of_nonneg_left htriangle hε.le,
    mul_le_mul_of_nonneg_left hC hβ]

/-- A perturbation smaller than a lower norm bound is injective, in any dimension. -/
theorem injective_of_perturbation (J P : E →L[ℝ] E) {γ : ℝ}
    (hgap : ∀ x, γ * ‖x‖ ≤ ‖J x‖) (hpert : ‖P - J‖ < γ) :
    Function.Injective P := by
  intro x y hxy
  have hz : P (x - y) = 0 := by simp only [map_sub, hxy, sub_self]
  have hdiff : ‖(P - J) (x - y)‖ = ‖J (x - y)‖ := by
    simp only [sub_apply, hz, zero_sub, norm_neg]
  have hupper : ‖J (x - y)‖ ≤ ‖P - J‖ * ‖x - y‖ := by
    simpa only [hdiff] using (P - J).le_opNorm (x - y)
  have hnorm : ‖x - y‖ = 0 := by
    nlinarith [hgap (x - y), norm_nonneg (x - y)]
  exact sub_eq_zero.mp (norm_eq_zero.mp hnorm)

/-- The straight segment to a perturbation smaller than a lower norm bound remains injective. -/
theorem injective_segment (J P : E →L[ℝ] E) {γ : ℝ}
    (hgap : ∀ x, γ * ‖x‖ ≤ ‖J x‖) (hpert : ‖P - J‖ < γ)
    {t : ℝ} (ht : t ∈ Set.Icc (0 : ℝ) 1) :
    Function.Injective (J + t • (P - J)) := by
  apply injective_of_perturbation J _ hgap
  calc
    ‖J + t • (P - J) - J‖ = ‖t • (P - J)‖ := by congr 1; abel
    _ = t * ‖P - J‖ := by rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg ht.1]
    _ ≤ ‖P - J‖ := by nlinarith [norm_nonneg (P - J), ht.2]
    _ < γ := hpert

/-- A continuous real function that never vanishes on the unit interval has the same strict
sign at its endpoints. -/
theorem same_sign_endpoints {f : ℝ → ℝ}
    (hcont : ContinuousOn f (Set.Icc 0 1))
    (hne : ∀ t ∈ Set.Icc (0 : ℝ) 1, f t ≠ 0) : 0 < f 0 * f 1 := by
  have hzero : f 0 ≠ 0 := hne 0 (by norm_num)
  rcases lt_or_gt_of_ne hzero with hneg | hpos
  · have hneg1 : f 1 < 0 := by
      by_contra hn
      have hnonneg : 0 ≤ f 1 := le_of_not_gt hn
      obtain ⟨t, ht, hft⟩ := intermediate_value_Icc (by norm_num : (0 : ℝ) ≤ 1)
        hcont (show 0 ∈ Set.Icc (f 0) (f 1) from ⟨hneg.le, hnonneg⟩)
      exact hne t ht hft
    exact mul_pos_of_neg_of_neg hneg hneg1
  · have hpos1 : 0 < f 1 := by
      by_contra hn
      have hnonpos : f 1 ≤ 0 := le_of_not_gt hn
      obtain ⟨t, ht, hft⟩ := intermediate_value_Icc' (by norm_num : (0 : ℝ) ≤ 1)
        hcont (show 0 ∈ Set.Icc (f 1) (f 0) from ⟨hnonpos, hpos.le⟩)
      exact hne t ht hft
    exact mul_pos hpos hpos1

/-- Finite-dimensional real determinant signs are preserved by perturbations smaller than
a lower norm bound. -/
theorem determinant_sign_of_perturbation [FiniteDimensional ℝ E]
    (J P : E →L[ℝ] E) {γ : ℝ}
    (hgap : ∀ x, γ * ‖x‖ ≤ ‖J x‖) (hpert : ‖P - J‖ < γ) :
    0 < J.det * P.det := by
  let f : ℝ → ℝ := fun t => (J + t • (P - J)).det
  have hcont : Continuous f :=
    ContinuousLinearMap.continuous_det.comp (continuous_const.add
      (continuous_id.smul continuous_const))
  have hne : ∀ t ∈ Set.Icc (0 : ℝ) 1, f t ≠ 0 := by
    intro t ht hzero
    have hker : (J + t • (P - J)).toLinearMap.ker = ⊥ :=
      LinearMap.ker_eq_bot.mpr (injective_segment J P hgap hpert ht)
    exact (LinearMap.det_eq_zero_iff_ker_ne_bot.mp hzero) hker
  have hsign := same_sign_endpoints hcont.continuousOn hne
  simpa [f] using hsign



/-!
## Connections to GRWTSK's finite observation certificates

The bounds below apply to the *same* moment matrix and residual coercivity
certificate. The source theorem alone supplies no identification with a fluid
solution, a Schur complement, a transfer cocycle, or a Hodge heat operator.
-/

/-- Positivity of the explicit uniform spectral gap. This uses no finiteness assumption. -/
theorem moment_gap_pos (B : E →L[ℝ] F)
    (R : F →L[ℝ] E →L[ℝ] ℝ) {ε β δ : ℝ}
    (hε : 0 < ε) (hB : ‖B‖ ≤ β) (hR : ‖R‖ ≤ δ) :
    0 < ε / (ε + β * δ) := by
  have hβ : 0 ≤ β := (norm_nonneg B).trans hB
  have hδ : 0 ≤ δ := (norm_nonneg R).trans hR
  exact div_pos hε (add_pos_of_pos_of_nonneg hε (mul_nonneg hβ hδ))

/-- A coercive moment matrix is injective: no finite-dimensionality or
matrix coordinate identification is assumed. -/
theorem certified_moment_injective (B : E →L[ℝ] F) (C : F →L[ℝ] E)
    (R : F →L[ℝ] E →L[ℝ] ℝ) {ε β δ : ℝ}
    (hε : 0 < ε) (hB : ‖B‖ ≤ β) (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y, ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y)) :
    Function.Injective (momentMatrix B C) := by
  exact injective_of_perturbation (momentMatrix B C) (momentMatrix B C)
    (fun y => finite_rank_gap B C R hε hB hR hcoercive y)
    (by simpa using moment_gap_pos B R hε hB hR)

/-- The source gap supplies an explicit positive constant and therefore
satisfies the input requirements of GRWTSK's finite observation-gap theorem.
The finite-source theorem is consumed here with the exact observation E=‖y‖,
O=‖(I+BC)y‖; this makes no assertion about other physical observations. -/
theorem finite_observation_gap_of_coercivity (B : E →L[ℝ] F)
    (C : F →L[ℝ] E) (R : F →L[ℝ] E →L[ℝ] ℝ)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y, ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    {S : Set F} (hS : S.Finite) :
    ∃ a : ℝ, 0 < a ∧ ∀ y ∈ S, a * ‖y‖ ≤ ‖momentMatrix B C y‖ := by
  exact GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteObservationGap.finite_gap hS
    (fun y : F => ‖y‖) (fun y : F => ‖momentMatrix B C y‖)
    (fun _ => norm_nonneg _) (fun _ => norm_nonneg _)
    (by
      intro y _ hy
      exact lt_of_lt_of_le (mul_pos (moment_gap_pos B R hε hB hR) hy)
        (finite_rank_gap B C R hε hB hR hcoercive y))

/-- Uniform coercivity gives a *perturbation-stable orientation conclusion*.
The determinant requires finite dimensionality over ℝ; the coercivity,
residual, and perturbation margins remain explicit assumptions. -/
theorem certified_moment_determinant_sign [FiniteDimensional ℝ F]
    (B : E →L[ℝ] F) (C : F →L[ℝ] E)
    (R : F →L[ℝ] E →L[ℝ] ℝ) (P : F →L[ℝ] F)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y, ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (hpert : ‖P - momentMatrix B C‖ < ε / (ε + β * δ)) :
    0 < (momentMatrix B C).det * P.det := by
  exact determinant_sign_of_perturbation (momentMatrix B C) P
    (fun y => finite_rank_gap B C R hε hB hR hcoercive y) hpert



/-!
## Explicit moment-matrix supplier for finite adjoint descent

The finite-coordinate operator is required to intertwine with the specific
coercive moment matrix `I + B.comp C` through an energy-preserving encoding.
These hypotheses identify actual operators; they are not consequences of a
shared subject label. No fluid-solution or PDE identification is asserted.
-/

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent

/-- Global residual coercivity supplies the finite adjoint observability
constant when an actual energy-preserving coordinate intertwining is given.
No finite-dimensionality of the moment operator's spaces is assumed. -/
theorem certified_moment_adjoint_observability
    {κ : Type*} (s : Finset κ) (A : κ → κ → ℝ)
    (B : E →L[ℝ] F) (C : F →L[ℝ] E)
    (R : F →L[ℝ] E →L[ℝ] ℝ)
    (encode : (κ → ℝ) → F)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : F,
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (henergy : ∀ w : κ → ℝ, energy s w = ‖encode w‖ ^ 2)
    (hintertwines : ∀ w : κ → ℝ,
      encode (applyMatrix s A w) = momentMatrix B C (encode w))
    (v : κ → ℝ) :
    (ε / (ε + β * δ)) ^ 2 * energy s v ≤
      energy s (applyMatrix s A v) := by
  exact observability_of_intertwining s A (momentMatrix B C) encode
    (ε / (ε + β * δ))
    (moment_gap_pos B R hε hB hR).le
    (fun y => finite_rank_gap B C R hε hB hR hcoercive y)
    henergy hintertwines v

/-- An identified finite matrix representation of the certified moment matrix
has a strictly contracting finite-adjoint reconstruction step. The quantified
coercivity hypothesis and the two coordinate-compatibility premises remain
visible, and no physical Navier–Stokes conclusion is inferred. -/
theorem certified_moment_adjoint_strict_contraction
    {κ : Type*} (s : Finset κ) (A : κ → κ → ℝ)
    (B : E →L[ℝ] F) (C : F →L[ℝ] E)
    (R : F →L[ℝ] E →L[ℝ] ℝ)
    (encode : (κ → ℝ) → F)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : F,
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (henergy : ∀ w : κ → ℝ, energy s w = ‖encode w‖ ^ 2)
    (hintertwines : ∀ w : κ → ℝ,
      encode (applyMatrix s A w) = momentMatrix B C (encode w))
    (v : κ → ℝ) :
    energy s (fun c => v c - reconstruction s s A (applyMatrix s A v) c) ≤
      (1 - damping s s A * (ε / (ε + β * δ)) ^ 2) * energy s v ∧
      1 - damping s s A * (ε / (ε + β * δ)) ^ 2 < 1 := by
  exact residual_relative_contraction_of_intertwining
    s A (momentMatrix B C) encode (ε / (ε + β * δ))
    (moment_gap_pos B R hε hB hR)
    (fun y => finite_rank_gap B C R hε hB hR hcoercive y)
    henergy hintertwines v



/-!
## Quantitative margin under operator perturbation

The earlier injectivity theorem gives only a qualitative conclusion. The next
estimate retains the entire remaining lower-bound margin. It applies to a
perturbed represented operator and separates the perturbation norm from the
coercivity supplier.
-/

/-- The least-norm lower bound degrades by at most the operator-norm error.
This is meaningful even when the remaining signed margin is nonpositive. -/
theorem perturbation_lower_bound
    (J P : F →L[ℝ] F) {γ : ℝ}
    (hgap : ∀ x : F, γ * ‖x‖ ≤ ‖J x‖)
    (x : F) :
    (γ - ‖P - J‖) * ‖x‖ ≤ ‖P x‖ := by
  have hJ : J x = P x - (P - J) x := by
    simp only [sub_apply]
    abel
  have htri : ‖J x‖ ≤ ‖P x‖ + ‖(P - J) x‖ := by
    calc
      ‖J x‖ = ‖P x - (P - J) x‖ := congrArg norm hJ
      _ ≤ ‖P x‖ + ‖(P - J) x‖ := norm_sub_le _ _
  have hnorm := (P - J).le_opNorm x
  nlinarith [hgap x]

/-- The Navier–Stokes-derived moment gap retains an explicit quantitative
margin under arbitrary continuous-linear perturbations. No injectivity or
positivity is claimed unless the perturbation is strictly below the gap. -/
theorem certified_moment_perturbed_lower_bound
    (B : E →L[ℝ] F) (C : F →L[ℝ] E)
    (R : F →L[ℝ] E →L[ℝ] ℝ) (P : F →L[ℝ] F)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : F,
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (y : F) :
    (ε / (ε + β * δ) - ‖P - momentMatrix B C‖) * ‖y‖ ≤ ‖P y‖ := by
  exact perturbation_lower_bound (momentMatrix B C) P
    (fun x => finite_rank_gap B C R hε hB hR hcoercive x) y

/-- If a square finite matrix exactly represents a perturbation of the coercive
moment operator, strict relative contraction persists with the reduced positive
margin. The energy-preserving encoding and intertwining remain explicit. -/
theorem certified_perturbed_moment_adjoint_strict_contraction
    {κ : Type*} (s : Finset κ) (A : κ → κ → ℝ)
    (B : E →L[ℝ] F) (C : F →L[ℝ] E)
    (R : F →L[ℝ] E →L[ℝ] ℝ) (P : F →L[ℝ] F)
    (encode : (κ → ℝ) → F)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : F,
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (hpert : ‖P - momentMatrix B C‖ < ε / (ε + β * δ))
    (henergy : ∀ w : κ → ℝ, energy s w = ‖encode w‖ ^ 2)
    (hintertwines : ∀ w : κ → ℝ,
      encode (applyMatrix s A w) = P (encode w))
    (v : κ → ℝ) :
    energy s (fun c => v c - reconstruction s s A (applyMatrix s A v) c) ≤
      (1 - damping s s A *
        (ε / (ε + β * δ) - ‖P - momentMatrix B C‖) ^ 2) * energy s v ∧
      1 - damping s s A *
        (ε / (ε + β * δ) - ‖P - momentMatrix B C‖) ^ 2 < 1 := by
  exact residual_relative_contraction_of_intertwining
    s A P encode (ε / (ε + β * δ) - ‖P - momentMatrix B C‖)
    (sub_pos.mpr hpert)
    (fun y => certified_moment_perturbed_lower_bound
      B C R P hε hB hR hcoercive y)
    henergy hintertwines v



/-!
## Concrete one-coordinate moment realization

When the moment operator acts on `ℝ`, its coordinate matrix has one entry,
the image of `1`. The coordinate encoding is evaluation at `0 : Fin 1`.
Both the energy identity and the intertwining identity are proved here, rather
than supplied as premises. The intermediate space `E` need not be finite
dimensional. This is a scalar specialization, not a representation of a
general fluid PDE or an infinite-dimensional moment operator.
-/

/-- The unique coordinate of a real one-dimensional vector. -/
def scalarEncode (v : Fin 1 → ℝ) : ℝ := v 0

/-- The literal one-by-one matrix representing a continuous real-linear
endomorphism of `ℝ`. -/
def scalarOperatorMatrix (J : ℝ →L[ℝ] ℝ) : Fin 1 → Fin 1 → ℝ :=
  fun _ _ => J 1

/-- The full one-coordinate energy is exactly the squared real norm. -/
theorem scalarEncode_energy (v : Fin 1 → ℝ) :
    energy (Finset.univ : Finset (Fin 1)) v = ‖scalarEncode v‖ ^ 2 := by
  simp [energy, scalarEncode, Real.norm_eq_abs, sq_abs, Fin.sum_univ_one]

/-- A continuous real-linear map on `ℝ` is multiplication by its image of
`1`; the scalar coordinate matrix therefore intertwines exactly. -/
theorem scalarOperatorMatrix_intertwines (J : ℝ →L[ℝ] ℝ)
    (v : Fin 1 → ℝ) :
    scalarEncode (applyMatrix (Finset.univ : Finset (Fin 1))
      (scalarOperatorMatrix J) v) = J (scalarEncode v) := by
  have hmul (x : ℝ) : J x = J 1 * x := by
    calc
      J x = J (x • (1 : ℝ)) := by simp [smul_eq_mul]
      _ = x • J 1 := by rw [map_smul]
      _ = J 1 * x := by simp [smul_eq_mul, mul_comm]
  calc
    scalarEncode (applyMatrix (Finset.univ : Finset (Fin 1))
        (scalarOperatorMatrix J) v) = J 1 * v 0 := by
      simp [scalarEncode, applyMatrix, scalarOperatorMatrix, Fin.sum_univ_one]
    _ = J (scalarEncode v) := by
      simpa only [scalarEncode] using (hmul (v 0)).symm

/-- The scalar moment matrix has a concrete one-coordinate energy
observability estimate, without abstract coordinate-compatibility assumptions. -/
theorem scalar_moment_adjoint_observability
    (B : E →L[ℝ] ℝ) (C : ℝ →L[ℝ] E)
    (R : ℝ →L[ℝ] E →L[ℝ] ℝ)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : ℝ,
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (v : Fin 1 → ℝ) :
    (ε / (ε + β * δ)) ^ 2 *
        energy (Finset.univ : Finset (Fin 1)) v ≤
      energy (Finset.univ : Finset (Fin 1))
        (applyMatrix Finset.univ (scalarOperatorMatrix (momentMatrix B C)) v) := by
  exact certified_moment_adjoint_observability
    (Finset.univ : Finset (Fin 1))
    (scalarOperatorMatrix (momentMatrix B C))
    B C R scalarEncode hε hB hR hcoercive
    scalarEncode_energy
    (scalarOperatorMatrix_intertwines (momentMatrix B C)) v

/-- A genuine one-coordinate realization of the coercive scalar moment matrix
has a strict relative finite-adjoint contraction factor. The only analytical
supplier is the original global coercivity inequality. -/
theorem scalar_moment_adjoint_strict_contraction
    (B : E →L[ℝ] ℝ) (C : ℝ →L[ℝ] E)
    (R : ℝ →L[ℝ] E →L[ℝ] ℝ)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : ℝ,
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (v : Fin 1 → ℝ) :
    let A := scalarOperatorMatrix (momentMatrix B C)
    energy (Finset.univ : Finset (Fin 1))
        (fun c => v c - reconstruction Finset.univ Finset.univ A
          (applyMatrix Finset.univ A v) c) ≤
        (1 - damping Finset.univ Finset.univ A *
          (ε / (ε + β * δ)) ^ 2) * energy Finset.univ v ∧
      1 - damping Finset.univ Finset.univ A *
        (ε / (ε + β * δ)) ^ 2 < 1 := by
  dsimp only
  exact certified_moment_adjoint_strict_contraction
    (Finset.univ : Finset (Fin 1))
    (scalarOperatorMatrix (momentMatrix B C))
    B C R scalarEncode hε hB hR hcoercive
    scalarEncode_energy
    (scalarOperatorMatrix_intertwines (momentMatrix B C)) v

/-- The scalar coordinate realization also gives the quantitative contraction
for an arbitrary scalar perturbation `P` lying strictly inside the certified
moment gap. No separate coordinate intertwining hypotheses are needed. -/
theorem scalar_perturbed_moment_adjoint_strict_contraction
    (B : E →L[ℝ] ℝ) (C : ℝ →L[ℝ] E)
    (R : ℝ →L[ℝ] E →L[ℝ] ℝ) (P : ℝ →L[ℝ] ℝ)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : ℝ,
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (hpert : ‖P - momentMatrix B C‖ < ε / (ε + β * δ))
    (v : Fin 1 → ℝ) :
    let A := scalarOperatorMatrix P
    energy (Finset.univ : Finset (Fin 1))
        (fun c => v c - reconstruction Finset.univ Finset.univ A
          (applyMatrix Finset.univ A v) c) ≤
        (1 - damping Finset.univ Finset.univ A *
          (ε / (ε + β * δ) - ‖P - momentMatrix B C‖) ^ 2) *
          energy Finset.univ v ∧
      1 - damping Finset.univ Finset.univ A *
        (ε / (ε + β * δ) - ‖P - momentMatrix B C‖) ^ 2 < 1 := by
  dsimp only
  exact certified_perturbed_moment_adjoint_strict_contraction
    (Finset.univ : Finset (Fin 1)) (scalarOperatorMatrix P)
    B C R P scalarEncode hε hB hR hcoercive hpert
    scalarEncode_energy (scalarOperatorMatrix_intertwines P) v



/-!
## Concrete finite-dimensional Euclidean moment realization

The Euclidean coordinate encoding and its operator matrix are constructed in
FiniteAdjointDescent. For the Navier–Stokes-derived moment gap, these concrete
objects discharge all finite-coordinate energy and intertwining hypotheses.
This applies to any finite n, but still requires the original global residual
coercivity premise. It does not identify arbitrary physical PDE operators.
-/

/-- A moment operator acting on EuclideanSpace ℝ (Fin n) has an explicit
finite matrix whose observation energy inherits the coercivity gap. -/
theorem euclidean_moment_adjoint_observability {n : ℕ}
    (B : E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (R : EuclideanSpace ℝ (Fin n) →L[ℝ] E →L[ℝ] ℝ)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : EuclideanSpace ℝ (Fin n),
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (v : Fin n → ℝ) :
    (ε / (ε + β * δ)) ^ 2 *
        energy (Finset.univ : Finset (Fin n)) v ≤
      energy (Finset.univ : Finset (Fin n))
        (applyMatrix Finset.univ (euclideanOperatorMatrix (momentMatrix B C)) v) := by
  exact certified_moment_adjoint_observability
    (Finset.univ : Finset (Fin n))
    (euclideanOperatorMatrix (momentMatrix B C))
    B C R euclideanEncode hε hB hR hcoercive
    euclideanEncode_energy
    (euclideanOperatorMatrix_intertwines (momentMatrix B C)) v

/-- Every finite Euclidean coercive moment operator supplies a concrete
strict-relative-contraction estimate for the adjoint residual iteration,
without assumed coordinate-energy or intertwining lemmas. -/
theorem euclidean_moment_adjoint_strict_contraction {n : ℕ}
    (B : E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (R : EuclideanSpace ℝ (Fin n) →L[ℝ] E →L[ℝ] ℝ)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : EuclideanSpace ℝ (Fin n),
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (v : Fin n → ℝ) :
    let A := euclideanOperatorMatrix (momentMatrix B C)
    energy (Finset.univ : Finset (Fin n))
        (fun c => v c - reconstruction Finset.univ Finset.univ A
          (applyMatrix Finset.univ A v) c) ≤
        (1 - damping Finset.univ Finset.univ A *
          (ε / (ε + β * δ)) ^ 2) * energy Finset.univ v ∧
      1 - damping Finset.univ Finset.univ A *
        (ε / (ε + β * δ)) ^ 2 < 1 := by
  dsimp only
  exact certified_moment_adjoint_strict_contraction
    (Finset.univ : Finset (Fin n))
    (euclideanOperatorMatrix (momentMatrix B C))
    B C R euclideanEncode hε hB hR hcoercive
    euclideanEncode_energy
    (euclideanOperatorMatrix_intertwines (momentMatrix B C)) v

/-- A perturbed finite Euclidean moment operator retains a concrete
strict-relative-contraction bound with the exact remaining operator-norm
margin; only the strict perturbation and original coercivity are assumed. -/
theorem euclidean_perturbed_moment_adjoint_strict_contraction {n : ℕ}
    (B : E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (R : EuclideanSpace ℝ (Fin n) →L[ℝ] E →L[ℝ] ℝ)
    (P : EuclideanSpace ℝ (Fin n) →L[ℝ] EuclideanSpace ℝ (Fin n))
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : EuclideanSpace ℝ (Fin n),
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (hpert : ‖P - momentMatrix B C‖ < ε / (ε + β * δ))
    (v : Fin n → ℝ) :
    let A := euclideanOperatorMatrix P
    energy (Finset.univ : Finset (Fin n))
        (fun c => v c - reconstruction Finset.univ Finset.univ A
          (applyMatrix Finset.univ A v) c) ≤
        (1 - damping Finset.univ Finset.univ A *
          (ε / (ε + β * δ) - ‖P - momentMatrix B C‖) ^ 2) *
          energy Finset.univ v ∧
      1 - damping Finset.univ Finset.univ A *
        (ε / (ε + β * δ) - ‖P - momentMatrix B C‖) ^ 2 < 1 := by
  dsimp only
  exact certified_perturbed_moment_adjoint_strict_contraction
    (Finset.univ : Finset (Fin n))
    (euclideanOperatorMatrix P)
    B C R P euclideanEncode hε hB hR hcoercive hpert
    euclideanEncode_energy
    (euclideanOperatorMatrix_intertwines P) v



/-!
## Coercive moment gaps transferred to existing finite spectral and Hodge models

The spectralFiniteMatrix is an actual diagonal model from FiniteSpectralHeat.
The operator-identification hypothesis below is an equality of its coordinate
matrix with the matrix of the coercive moment operator, rather than a
restatement of the desired spectral gap. Only after this exact equality and
the original global coercivity certificate are supplied does the quantitative
moment gap exclude each zero spectral coefficient and control Hodge heat.
No physical Navier--Stokes or zeta operator identification is inferred.
-/

/-- A coercive Euclidean moment operator whose coordinate matrix is the
specified diagonal spectral matrix has a squared gap in every eigenmode. -/
theorem certified_spectral_coefficient_gap {n : ℕ}
    (B : E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (R : EuclideanSpace ℝ (Fin n) →L[ℝ] E →L[ℝ] ℝ)
    (a : Fin n → ℝ)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : EuclideanSpace ℝ (Fin n),
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (hdiag : euclideanOperatorMatrix (momentMatrix B C) =
      GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat.spectralFiniteMatrix a)
    (i : Fin n) :
    (ε / (ε + β * δ)) ^ 2 ≤ (a i) ^ 2 := by
  apply GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat.spectralFiniteMatrix_coefficient_gap
    a (γ := ε / (ε + β * δ))
  intro v
  simpa only [hdiag] using
    (euclidean_moment_adjoint_observability
      B C R hε hB hR hcoercive v)

/-- The exact diagonal spectral matrix of a coercive Euclidean moment
operator has a strictly contracting finite-adjoint residual step. -/
theorem certified_spectral_adjoint_strict_contraction {n : ℕ}
    (B : E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (R : EuclideanSpace ℝ (Fin n) →L[ℝ] E →L[ℝ] ℝ)
    (a : Fin n → ℝ)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : EuclideanSpace ℝ (Fin n),
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (hdiag : euclideanOperatorMatrix (momentMatrix B C) =
      GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat.spectralFiniteMatrix a)
    (v : Fin n → ℝ) :
    let A := GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat.spectralFiniteMatrix a
    energy (Finset.univ : Finset (Fin n))
        (fun c => v c - reconstruction Finset.univ Finset.univ A
          (applyMatrix Finset.univ A v) c) ≤
        (1 - damping Finset.univ Finset.univ A *
          (ε / (ε + β * δ)) ^ 2) * energy Finset.univ v ∧
      1 - damping Finset.univ Finset.univ A *
        (ε / (ε + β * δ)) ^ 2 < 1 := by
  simpa only [hdiag] using
    (euclidean_moment_adjoint_strict_contraction
      B C R hε hB hR hcoercive v)

/-- The Navier--Stokes-derived finite-rank gap forces exponential decay
of the named positive diagonal Hodge heat model, once its coefficients
are identified with the actual moment operator's diagonal coordinates. -/
theorem certified_spectral_hodge_heat_decay {n : ℕ}
    (B : E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (R : EuclideanSpace ℝ (Fin n) →L[ℝ] E →L[ℝ] ℝ)
    (a : Fin n → ℝ)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : EuclideanSpace ℝ (Fin n),
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (hdiag : euclideanOperatorMatrix (momentMatrix B C) =
      GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat.spectralFiniteMatrix a)
    {t : ℝ} (ht : 0 ≤ t) (x : Fin n → ℝ) :
    GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.dot
      (GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.heat a t x)
      (GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.heat a t x) ≤
      Real.exp (-2 * t * (ε / (ε + β * δ)) ^ 2) *
        GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.dot x x := by
  exact GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat.spectralFiniteMatrix_hodge_heat_gap
    a (γ := ε / (ε + β * δ)) (t := t)
    (by
      intro v
      simpa only [hdiag] using
        (euclidean_moment_adjoint_observability
          B C R hε hB hR hcoercive v))
    ht x

/-- Under the same typed diagonal identification and global coercivity,
the degree-zero harmonic space of the positive diagonal Hodge model is
trivial. The hypothesis does not assert that an unrelated Hodge operator is
this particular moment model. -/
theorem certified_spectral_hodge_harmonic_trivial {n : ℕ}
    (B : E →L[ℝ] EuclideanSpace ℝ (Fin n))
    (C : EuclideanSpace ℝ (Fin n) →L[ℝ] E)
    (R : EuclideanSpace ℝ (Fin n) →L[ℝ] E →L[ℝ] ℝ)
    (a : Fin n → ℝ)
    {ε β δ : ℝ} (hε : 0 < ε) (hB : ‖B‖ ≤ β)
    (hR : ‖R‖ ≤ δ)
    (hcoercive : ∀ y : EuclideanSpace ℝ (Fin n),
      ε * ‖C y‖ ^ 2 ≤ R (momentMatrix B C y) (C y))
    (hdiag : euclideanOperatorMatrix (momentMatrix B C) =
      GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat.spectralFiniteMatrix a)
    (x : Fin n → ℝ) :
    (GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.positiveDiagonalHodge a).IsHarmonic0 x
      ↔ x = 0 := by
  apply GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.harmonic0_iff_eq_zero
  intro i hai
  have hgap := certified_spectral_coefficient_gap
    B C R a hε hB hR hcoercive hdiag i
  have hpos : 0 < (ε / (ε + β * δ)) ^ 2 :=
    sq_pos_of_pos (moment_gap_pos B R hε hB hR)
  rw [hai] at hgap
  nlinarith



/-!
## A concrete global coercivity supplier from positive-semidefinite operators

For a positive-semidefinite continuous real Hilbert-space operator B, choose
C = id and R = the actual real inner-product pairing. Then
R ((I+B)y) (Cy) = ‖y‖² + ⟪B y, y⟫, so the original global residual
coercivity is obtained with ε=1, rather than being assumed.
This supplies the coercivity *for this operator class*, not for arbitrary
Navier--Stokes PDE solutions or unrelated spectral operators.
-/

section PositiveOperators

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H]

/-- Real Hilbert-space positivity constructs the full global coercivity
certificate for the moment operator I+B, with C=id and residual pairing
equal to the real inner product. -/
theorem positive_operator_residual_coercivity
    (B : H →L[ℝ] H)
    (hBpos : ∀ y : H, 0 ≤ inner ℝ (B y) y)
    (y : H) :
    (1 : ℝ) * ‖(ContinuousLinearMap.id ℝ H) y‖ ^ 2 ≤
      (innerSL ℝ : H →L[ℝ] H →L[ℝ] ℝ)
        (momentMatrix B (ContinuousLinearMap.id ℝ H) y)
        ((ContinuousLinearMap.id ℝ H) y) := by
  have hJ : momentMatrix B (ContinuousLinearMap.id ℝ H) y =
      y + B y := by
    simp [momentMatrix, add_comm]
  simp only [one_mul, ContinuousLinearMap.id_apply, innerSL_apply_apply]
  rw [hJ, inner_add_left, real_inner_self_eq_norm_sq]
  exact le_add_of_nonneg_right (hBpos y)

/-- The actual positivity certificate discharges the global coercivity
hypothesis of the adapted OpenAI finite-rank gap, with explicit operator
norm choices β=‖B‖ and δ=‖innerSL ℝ‖. -/
theorem positive_operator_moment_gap
    (B : H →L[ℝ] H)
    (hBpos : ∀ y : H, 0 ≤ inner ℝ (B y) y)
    (y : H) :
    (1 / (1 + ‖B‖ *
      ‖(innerSL ℝ : H →L[ℝ] H →L[ℝ] ℝ)‖) * ‖y‖ ≤
      ‖momentMatrix B (ContinuousLinearMap.id ℝ H) y‖ := by
  exact finite_rank_gap B (ContinuousLinearMap.id ℝ H)
    (innerSL ℝ : H →L[ℝ] H →L[ℝ] ℝ)
    (by norm_num) (le_refl _) (le_refl _)
    (fun x => positive_operator_residual_coercivity B hBpos x) y

/-- A positive-semidefinite continuous real Hilbert-space operator has an
injective identity shift. Here the result is supplied by the global
coercivity certificate, not merely by a finite numerical observation. -/
theorem positive_operator_moment_injective
    (B : H →L[ℝ] H)
    (hBpos : ∀ y : H, 0 ≤ inner ℝ (B y) y) :
    Function.Injective (momentMatrix B (ContinuousLinearMap.id ℝ H)) := by
  exact certified_moment_injective B (ContinuousLinearMap.id ℝ H)
    (innerSL ℝ : H →L[ℝ] H →L[ℝ] ℝ)
    (by norm_num) (le_refl _) (le_refl _)
    (fun x => positive_operator_residual_coercivity B hBpos x)


/-!
## Sharp unit norm gap for shifted positive operators

The upstream-derived quantitative moment gap has a norm-dependent factor.
For the more specific case C=id and a positive-semidefinite real Hilbert
operator B, expanding the squared norm gives the stronger unit lower
bound. This estimate is sharp when B has a nonzero kernel.
-/

/-- Positivity supplies the norm-independent unit lower bound
for I+B, stronger than the generic finite-rank constant. -/
theorem positive_operator_moment_sharp_gap
    (B : H →L[ℝ] H)
    (hBpos : ∀ y : H, 0 ≤ inner ℝ (B y) y)
    (y : H) :
    ‖y‖ ≤ ‖momentMatrix B (ContinuousLinearMap.id ℝ H) y‖ := by
  have hJ : momentMatrix B (ContinuousLinearMap.id ℝ H) y = y + B y := by
    simp [momentMatrix, add_comm]
  rw [hJ]
  have hsquare : ‖y‖ ^ 2 ≤ ‖y + B y‖ ^ 2 := by
    rw [norm_add_sq_real, real_inner_comm (B y) y]
    nlinarith [hBpos y, sq_nonneg (‖B y‖)]
  exact (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).mp hsquare

/-- The norm margin of a perturbation of I+B is bounded below by
one minus the perturbation operator norm, without a positivity
assumption on the perturbing operator. -/
theorem positive_operator_perturbed_sharp_gap
    (B P : H →L[ℝ] H)
    (hBpos : ∀ y : H, 0 ≤ inner ℝ (B y) y)
    (y : H) :
    (1 - ‖P - momentMatrix B (ContinuousLinearMap.id ℝ H)‖) * ‖y‖ ≤
      ‖P y‖ := by
  exact perturbation_lower_bound
    (momentMatrix B (ContinuousLinearMap.id ℝ H)) P
    (fun x => by
      simpa only [one_mul] using positive_operator_moment_sharp_gap B hBpos x)
    y

/-- Any perturbation inside the unit margin preserves injectivity. -/
theorem positive_operator_perturbed_injective
    (B P : H →L[ℝ] H)
    (hBpos : ∀ y : H, 0 ≤ inner ℝ (B y) y)
    (hpert : ‖P - momentMatrix B (ContinuousLinearMap.id ℝ H)‖ < 1) :
    Function.Injective P := by
  exact injective_of_perturbation
    (momentMatrix B (ContinuousLinearMap.id ℝ H)) P
    (fun x => by
      simpa only [one_mul] using positive_operator_moment_sharp_gap B hBpos x)
    hpert

/-- In finite dimensions a perturbation inside the unit norm
margin has the same strict determinant sign as I+B. -/
theorem positive_operator_perturbed_det_sign [FiniteDimensional ℝ H]
    (B P : H →L[ℝ] H)
    (hBpos : ∀ y : H, 0 ≤ inner ℝ (B y) y)
    (hpert : ‖P - momentMatrix B (ContinuousLinearMap.id ℝ H)‖ < 1) :
    0 < (momentMatrix B (ContinuousLinearMap.id ℝ H)).det * P.det := by
  exact determinant_sign_of_perturbation
    (momentMatrix B (ContinuousLinearMap.id ℝ H)) P
    (fun x => by
      simpa only [one_mul] using positive_operator_moment_sharp_gap B hBpos x)
    hpert

/-- The literal Euclidean representation of I+B has a squared
observation constant of one, without the generic norm-dependent loss. -/
theorem positive_euclidean_moment_sharp_observability {n : ℕ}
    (B : EuclideanSpace ℝ (Fin n) →L[ℝ] EuclideanSpace ℝ (Fin n))
    (hBpos : ∀ y : EuclideanSpace ℝ (Fin n), 0 ≤ inner ℝ (B y) y)
    (v : Fin n → ℝ) :
    energy (Finset.univ : Finset (Fin n)) v ≤
      energy (Finset.univ : Finset (Fin n))
        (applyMatrix Finset.univ
          (euclideanOperatorMatrix
            (momentMatrix B
              (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))))) v) := by
  have hgap : ∀ y : EuclideanSpace ℝ (Fin n),
      (1 : ℝ) * ‖y‖ ≤
        ‖momentMatrix B (ContinuousLinearMap.id ℝ _) y‖ := by
    intro y
    simpa only [one_mul] using positive_operator_moment_sharp_gap B hBpos y
  have h := observability_of_intertwining
    (Finset.univ : Finset (Fin n))
    (euclideanOperatorMatrix
      (momentMatrix B (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))))
    (momentMatrix B (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))))
    euclideanEncode (1 : ℝ) (by norm_num) hgap
    euclideanEncode_energy
    (euclideanOperatorMatrix_intertwines
      (momentMatrix B (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))))) v
  simpa only [one_pow, one_mul] using h

/-- In any finite Euclidean dimension the strict finite-adjoint
relative residual factor is 1-damping for the positive shifted
operator, with the literal Frobenius damping unchanged. -/
theorem positive_euclidean_moment_sharp_contraction {n : ℕ}
    (B : EuclideanSpace ℝ (Fin n) →L[ℝ] EuclideanSpace ℝ (Fin n))
    (hBpos : ∀ y : EuclideanSpace ℝ (Fin n), 0 ≤ inner ℝ (B y) y)
    (v : Fin n → ℝ) :
    let A := euclideanOperatorMatrix
      (momentMatrix B (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))))
    energy (Finset.univ : Finset (Fin n))
        (fun c => v c - reconstruction Finset.univ Finset.univ A
          (applyMatrix Finset.univ A v) c) ≤
      (1 - damping Finset.univ Finset.univ A) * energy Finset.univ v ∧
    1 - damping Finset.univ Finset.univ A < 1 := by
  dsimp only
  have hgap : ∀ y : EuclideanSpace ℝ (Fin n),
      (1 : ℝ) * ‖y‖ ≤
        ‖momentMatrix B (ContinuousLinearMap.id ℝ _) y‖ := by
    intro y
    simpa only [one_mul] using positive_operator_moment_sharp_gap B hBpos y
  have h := residual_relative_contraction_of_intertwining
    (Finset.univ : Finset (Fin n))
    (euclideanOperatorMatrix
      (momentMatrix B (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))))
    (momentMatrix B (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))))
    euclideanEncode (1 : ℝ) (by norm_num) hgap
    euclideanEncode_energy
    (euclideanOperatorMatrix_intertwines
      (momentMatrix B (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))))) v
  simpa only [one_pow, mul_one] using h

end PositiveOperators


/-!
## Exact radial-shell source split for Fourier-side consumers

This source-exact layer keeps a finite radial shell and its omitted tail as two
separate functions whose pointwise sum is the original source. Nonzero
frequencies also have an exact radius/unit-direction factorization.

IsTransverse is deliberately parameterized by an actual additive pairing.
Thus a later Fourier Navier--Stokes bridge can instantiate transversality with
the divergence-free pairing while retaining the same source split. No Fourier
transform, Leray projector, helical frame, nonlinear triad convolution, fluid
solution, or identification with the finite moment operator is asserted here.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

section RadialShellSource

variable {Ξ U K : Type*}
variable [NormedAddCommGroup Ξ] [NormedSpace ℝ Ξ]
variable [AddCommGroup U] [AddCommGroup K]

/-- Unit-direction candidate for a nonzero frequency. At the zero frequency
this definition is left at the scalar-zero convention; consumers that require
a unit direction must retain the explicit ξ ≠ 0 premise. -/
def radialDirection (ξ : Ξ) : Ξ := ‖ξ‖⁻¹ • ξ

/-- Every nonzero frequency is reconstructed exactly from its norm and radial
direction. This is the source-preserving radial blow-up identity. -/
theorem radialDirection_reconstruct {ξ : Ξ} (hξ : ξ ≠ 0) :
    ‖ξ‖ • radialDirection ξ = ξ := by
  rw [radialDirection]
  exact smul_inv_smul₀ (norm_ne_zero_iff.mpr hξ) ξ

/-- The radial direction of a nonzero frequency lies on the unit sphere. -/
theorem radialDirection_norm {ξ : Ξ} (hξ : ξ ≠ 0) :
    ‖radialDirection ξ‖ = 1 := by
  simpa [radialDirection] using (norm_smul_inv_norm (𝕜 := ℝ) hξ)

/-- The retained radial shell. No frequency labels are quotiented or merged. -/
def shellPart (R : ℝ) (u : Ξ → U) : Ξ → U :=
  fun ξ => if ‖ξ‖ ≤ R then u ξ else 0

/-- The full omitted radial tail. It remains a typed source function rather
than an unrestricted error term. -/
def tailPart (R : ℝ) (u : Ξ → U) : Ξ → U :=
  fun ξ => if R < ‖ξ‖ then u ξ else 0

/-- Pointwise visible-plus-tail reconstruction is exact at every cutoff,
including negative cutoffs. -/
theorem shell_add_tail (R : ℝ) (u : Ξ → U) (ξ : Ξ) :
    shellPart R u ξ + tailPart R u ξ = u ξ := by
  by_cases h : ‖ξ‖ ≤ R
  · have hnot : ¬ R < ‖ξ‖ := not_lt_of_ge h
    simp [shellPart, tailPart, h, hnot]
  · have hlt : R < ‖ξ‖ := lt_of_not_ge h
    simp [shellPart, tailPart, h, hlt]

/-- The exact reconstruction is an equality of the complete source functions,
not only of a finite observation. -/
theorem shell_add_tail_fun (R : ℝ) (u : Ξ → U) :
    (fun ξ => shellPart R u ξ + tailPart R u ξ) = u := by
  funext ξ
  exact shell_add_tail R u ξ

/-- Frequencies outside the retained shell contribute exactly zero to the
shell component. -/
theorem shellPart_eq_zero_of_lt {R : ℝ} (u : Ξ → U) {ξ : Ξ}
    (h : R < ‖ξ‖) :
    shellPart R u ξ = 0 := by
  simp [shellPart, not_le_of_gt h]

/-- Frequencies inside the retained shell contribute exactly zero to the tail
component. -/
theorem tailPart_eq_zero_of_le {R : ℝ} (u : Ξ → U) {ξ : Ξ}
    (h : ‖ξ‖ ≤ R) :
    tailPart R u ξ = 0 := by
  simp [tailPart, not_lt_of_ge h]

/-- For a nonnegative cutoff the zero frequency stays in the retained source. -/
theorem shellPart_zero {R : ℝ} (u : Ξ → U) (hR : 0 ≤ R) :
    shellPart R u 0 = u 0 := by
  simp [shellPart, hR]

/-- For a nonnegative cutoff the retained tail contains no zero-frequency
contribution. -/
theorem tailPart_zero {R : ℝ} (u : Ξ → U) (hR : 0 ≤ R) :
    tailPart R u 0 = 0 := by
  simp [tailPart, hR]

/-- A source is transverse when its coefficient at every frequency is killed
by the supplied additive frequency-dependent pairing. This abstracts the
actual divergence-free pairing without assuming an unproved Fourier bridge. -/
def IsTransverse (pairing : Ξ → U →+ K) (u : Ξ → U) : Prop :=
  ∀ ξ, pairing ξ (u ξ) = 0

/-- Radial shell restriction preserves any supplied transverse source
identity exactly. -/
theorem shellPart_transverse (pairing : Ξ → U →+ K)
    (u : Ξ → U) (R : ℝ) (hu : IsTransverse pairing u) :
    IsTransverse pairing (shellPart R u) := by
  intro ξ
  by_cases h : ‖ξ‖ ≤ R
  · simpa [shellPart, h] using hu ξ
  · simp [shellPart, h]

/-- The retained tail preserves the same transverse source identity exactly. -/
theorem tailPart_transverse (pairing : Ξ → U →+ K)
    (u : Ξ → U) (R : ℝ) (hu : IsTransverse pairing u) :
    IsTransverse pairing (tailPart R u) := by
  intro ξ
  by_cases h : R < ‖ξ‖
  · simpa [tailPart, h] using hu ξ
  · simp [tailPart, h]

/-- Both components of the exact source split inherit transversality. -/
theorem shell_tail_transverse (pairing : Ξ → U →+ K)
    (u : Ξ → U) (R : ℝ) (hu : IsTransverse pairing u) :
    IsTransverse pairing (shellPart R u) ∧
      IsTransverse pairing (tailPart R u) :=
  ⟨shellPart_transverse pairing u R hu,
    tailPart_transverse pairing u R hu⟩


end RadialShellSource


/-!
## Concrete three-dimensional Fourier transversality and genuine phase quotient

This adapter instantiates the abstract radial-shell source with the literal
three-dimensional Fourier frequency type and complex vector coefficients.
The divergence pairing is the algebraic Fourier incompressibility expression
sum_i ξ_i u_i.  For every nonzero frequency, exact radial reconstruction
shows that vanishing against ξ is equivalent to vanishing against its unit
direction.  Thus a divergence-free coefficient is carried into the transverse
fiber over the actual spherical direction, without quotienting frequencies.

Complex scalar phases are stored in the genuine Mathlib UnitAddCircle quotient
using the repository's normalized complex argument.  The reconstruction lemma
below is representative-independent: every real angle in the same quotient
class produces the same nonzero complex coefficient after restoring amplitude.
No continuous global argument, helical frame, Leray projector, nonlinear
triad transport, PDE solution, or moment-operator identification is asserted.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

section FourierSphericalAdapter

open scoped BigOperators
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarAddCircleKernel
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarComplexPhase

/-- Physical three-dimensional Fourier frequencies. -/
abbrev FourierFrequency3 := EuclideanSpace ℝ (Fin 3)

/-- A complex Fourier velocity coefficient with three physical components. -/
abbrev FourierVelocity3 := Fin 3 → ℂ

/-- The literal algebraic Fourier-divergence pairing at frequency ξ. -/
def fourierDivergencePairing (ξ : FourierFrequency3) : FourierVelocity3 →+ ℂ where
  toFun v := ∑ i : Fin 3, (ξ i : ℂ) * v i
  map_zero' := by simp
  map_add' := by
    intro u v
    simp [mul_add, Finset.sum_add_distrib]

/-- Fourier-side incompressibility, stated without assuming that a supplied
source is actually the Fourier transform of a fluid solution. -/
def IsFourierDivergenceFree (u : FourierFrequency3 → FourierVelocity3) : Prop :=
  ∀ ξ, fourierDivergencePairing ξ (u ξ) = 0

/-- The concrete Fourier-divergence predicate is exactly the abstract
transversality interface already preserved by the shell/tail split. -/
theorem isFourierDivergenceFree_iff_isTransverse
    (u : FourierFrequency3 → FourierVelocity3) :
    IsFourierDivergenceFree u ↔
      IsTransverse fourierDivergencePairing u := by
  rfl

/-- The divergence pairing scales exactly with radial reconstruction. -/
theorem fourierDivergencePairing_radialDirection
    {ξ : FourierFrequency3} (hξ : ξ ≠ 0) (v : FourierVelocity3) :
    fourierDivergencePairing ξ v =
      (‖ξ‖ : ℂ) *
        fourierDivergencePairing (radialDirection ξ) v := by
  rw [← radialDirection_reconstruct hξ]
  simp [fourierDivergencePairing, Finset.mul_sum, mul_assoc]

/-- At every nonzero frequency, the Fourier divergence constraint is
equivalent to transversality against the corresponding unit sphere direction. -/
theorem fourierDivergencePairing_zero_iff_radialDirection
    {ξ : FourierFrequency3} (hξ : ξ ≠ 0) (v : FourierVelocity3) :
    fourierDivergencePairing ξ v = 0 ↔
      fourierDivergencePairing (radialDirection ξ) v = 0 := by
  rw [fourierDivergencePairing_radialDirection hξ]
  simp [norm_ne_zero_iff.mpr hξ]

/-- A divergence-free Fourier source is pointwise tangent/transverse to the
unit spherical direction at every nonzero frequency.  The coefficient remains
the original source coefficient u ξ; only its frequency address is normalized. -/
theorem fourierDivergenceFree_radial_fiber
    {u : FourierFrequency3 → FourierVelocity3}
    (hu : IsFourierDivergenceFree u)
    {ξ : FourierFrequency3} (hξ : ξ ≠ 0) :
    fourierDivergencePairing (radialDirection ξ) (u ξ) = 0 := by
  exact (fourierDivergencePairing_zero_iff_radialDirection hξ (u ξ)).mp (hu ξ)

/-- Exact shell restriction preserves the actual three-dimensional Fourier
divergence constraint. -/
theorem shellPart_fourierDivergenceFree
    (u : FourierFrequency3 → FourierVelocity3) (R : ℝ)
    (hu : IsFourierDivergenceFree u) :
    IsFourierDivergenceFree (shellPart R u) := by
  apply (isFourierDivergenceFree_iff_isTransverse (shellPart R u)).mpr
  exact shellPart_transverse fourierDivergencePairing u R
    ((isFourierDivergenceFree_iff_isTransverse u).mp hu)

/-- The retained omitted tail preserves the same actual Fourier divergence
constraint, so truncation does not manufacture a longitudinal source. -/
theorem tailPart_fourierDivergenceFree
    (u : FourierFrequency3 → FourierVelocity3) (R : ℝ)
    (hu : IsFourierDivergenceFree u) :
    IsFourierDivergenceFree (tailPart R u) := by
  apply (isFourierDivergenceFree_iff_isTransverse (tailPart R u)).mpr
  exact tailPart_transverse fourierDivergencePairing u R
    ((isFourierDivergenceFree_iff_isTransverse u).mp hu)

/-- Visible shell plus retained tail reconstruct the complete Fourier source,
and both pieces remain divergence-free. -/
theorem shell_tail_fourierDivergenceFree
    (u : FourierFrequency3 → FourierVelocity3) (R : ℝ)
    (hu : IsFourierDivergenceFree u) :
    (fun ξ => shellPart R u ξ + tailPart R u ξ) = u ∧
      IsFourierDivergenceFree (shellPart R u) ∧
      IsFourierDivergenceFree (tailPart R u) := by
  exact ⟨shell_add_tail_fun R u,
    shellPart_fourierDivergenceFree u R hu,
    tailPart_fourierDivergenceFree u R hu⟩

/-- Genuine quotient-valued phase address for a complex Fourier scalar.
At zero this address carries no reconstruction significance; consumers must
retain the explicit nonzero premise when interpreting it as a phase. -/
def fourierPhaseClass (z : ℂ) : UnitAddCircle :=
  (normalizedComplexAngle z : UnitAddCircle)

/-- Every real representative of the same genuine circle class reconstructs
the same nonzero complex coefficient after restoring its exact amplitude.
This avoids choosing a discontinuous global real-angle branch. -/
theorem complex_reconstruct_of_phaseClass
    {z : ℂ} (hz : z ≠ 0) {θ : ℝ}
    (hθ : (θ : UnitAddCircle) = fourierPhaseClass z) :
    z = (‖z‖ : ℂ) *
      Complex.exp ((2 * Real.pi * θ : ℝ) * Complex.I) := by
  have hphase :
      Complex.exp ((2 * Real.pi * θ : ℝ) * Complex.I) =
        Complex.exp
          ((2 * Real.pi * normalizedComplexAngle z : ℝ) * Complex.I) := by
    apply (polar_phase_eq_iff_unitAddCircle_eq θ (normalizedComplexAngle z)).mpr
    simpa [fourierPhaseClass] using hθ
  have hzpolar := complex_realAnglePolar_representation z hz
  unfold GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk.realAnglePolar at hzpolar
  rw [hphase]
  exact hzpolar

/-- Each nonzero scalar component of a Fourier velocity coefficient therefore
has a source-exact amplitude plus genuine quotient-phase reconstruction.
This is component phase only; it is not yet a global helical polarization. -/
theorem fourierVelocity_component_phase_reconstruction
    (v : FourierVelocity3) {i : Fin 3} (hi : v i ≠ 0)
    {θ : ℝ} (hθ : (θ : UnitAddCircle) = fourierPhaseClass (v i)) :
    v i = (‖v i‖ : ℂ) *
      Complex.exp ((2 * Real.pi * θ : ℝ) * Complex.I) :=
  complex_reconstruct_of_phaseClass hi hθ


end FourierSphericalAdapter


/-!
## Source-labelled bilinear triad shell/tail decomposition

Before selecting a Fourier normalization, convolution measure, Leray projector,
or helical frame, the quadratic source bookkeeping can already be made exact.
A triad source keeps the two input frequencies as distinct labels and records
their additive output frequency.  Any genuinely biadditive interaction then
splits into the four shell/tail sectors without losing mixed terms.

This is the algebraic source identity that a later Fourier Navier--Stokes
convolution must consume.  It is deliberately not itself a convolution theorem
and supplies no smallness estimate.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

section SourceLabeledTriadSplit

variable {Ξ U V : Type*}
variable [NormedAddCommGroup Ξ] [NormedSpace ℝ Ξ]
variable [AddCommGroup U] [AddCommGroup V]

/-- Two actual source-frequency labels participating in one additive triad.
The labels remain distinct even when their values happen to coincide. -/
structure TriadSource (Ξ : Type*) where
  left : Ξ
  right : Ξ

/-- Additive output frequency attached to the source-labelled pair. -/
def TriadSource.outputFrequency (t : TriadSource Ξ) : Ξ :=
  t.left + t.right

/-- Evaluate a biadditive coefficient interaction on the two labelled source
frequencies.  No summation over equal output frequencies occurs here. -/
def triadInteraction
    (B : U →+ U →+ V) (u : Ξ → U) (t : TriadSource Ξ) : V :=
  B (u t.left) (u t.right)

/-- Exact four-sector expansion of one source-labelled quadratic interaction.
The two mixed shell/tail terms are retained explicitly. -/
theorem triadInteraction_shell_tail_split
    (B : U →+ U →+ V) (u : Ξ → U) (R : ℝ) (t : TriadSource Ξ) :
    triadInteraction B u t =
      (B (shellPart R u t.left) (shellPart R u t.right) +
        B (shellPart R u t.left) (tailPart R u t.right)) +
      (B (tailPart R u t.left) (shellPart R u t.right) +
        B (tailPart R u t.left) (tailPart R u t.right)) := by
  unfold triadInteraction
  rw [← shell_add_tail R u t.left, ← shell_add_tail R u t.right]
  simp only [map_add]

/-- The exact split keeps the additive triad output address unchanged; changing
shell/tail sector does not change or quotient the two source frequency labels. -/
theorem triadOutputFrequency_shell_tail_invariant
    (t : TriadSource Ξ) :
    t.outputFrequency = t.left + t.right := rfl

/-- If both source frequencies lie in the retained shell, the three sectors
containing a tail coefficient vanish exactly. -/
theorem triadInteraction_eq_shellShell_of_both_le
    (B : U →+ U →+ V) (u : Ξ → U) {R : ℝ} (t : TriadSource Ξ)
    (hl : ‖t.left‖ ≤ R) (hr : ‖t.right‖ ≤ R) :
    triadInteraction B u t =
      B (shellPart R u t.left) (shellPart R u t.right) := by
  rw [triadInteraction_shell_tail_split B u R t,
    tailPart_eq_zero_of_le u hl, tailPart_eq_zero_of_le u hr]
  simp

/-- If the left source is outside and the right source is inside the shell,
the exact interaction is the tail--shell sector; it is not discarded. -/
theorem triadInteraction_eq_tailShell_of_left_lt_right_le
    (B : U →+ U →+ V) (u : Ξ → U) {R : ℝ} (t : TriadSource Ξ)
    (hl : R < ‖t.left‖) (hr : ‖t.right‖ ≤ R) :
    triadInteraction B u t =
      B (tailPart R u t.left) (shellPart R u t.right) := by
  rw [triadInteraction_shell_tail_split B u R t,
    shellPart_eq_zero_of_lt u hl, tailPart_eq_zero_of_le u hr]
  simp

/-- If the left source is inside and the right source is outside the shell,
the exact interaction is the shell--tail sector; it is not discarded. -/
theorem triadInteraction_eq_shellTail_of_left_le_right_lt
    (B : U →+ U →+ V) (u : Ξ → U) {R : ℝ} (t : TriadSource Ξ)
    (hl : ‖t.left‖ ≤ R) (hr : R < ‖t.right‖) :
    triadInteraction B u t =
      B (shellPart R u t.left) (tailPart R u t.right) := by
  rw [triadInteraction_shell_tail_split B u R t,
    tailPart_eq_zero_of_le u hl, shellPart_eq_zero_of_lt u hr]
  simp

/-- If both sources lie outside the retained shell, the full interaction is
the tail--tail sector.  High-frequency pairs that return to a low output
frequency therefore remain visible to later convolution consumers. -/
theorem triadInteraction_eq_tailTail_of_both_lt
    (B : U →+ U →+ V) (u : Ξ → U) {R : ℝ} (t : TriadSource Ξ)
    (hl : R < ‖t.left‖) (hr : R < ‖t.right‖) :
    triadInteraction B u t =
      B (tailPart R u t.left) (tailPart R u t.right) := by
  rw [triadInteraction_shell_tail_split B u R t,
    shellPart_eq_zero_of_lt u hl, shellPart_eq_zero_of_lt u hr]
  simp


end SourceLabeledTriadSplit


/-!
## Fourier Navier--Stokes convective triad and Leray projection

We now choose the Fourier convention

  f-hat(ξ) = ∫ exp(-2π i x·ξ) f(x) dx,

so a spatial derivative contributes the multiplier 2π i ξ.  For one
source-labelled pair (η, ζ) with output ξ = η + ζ, the unprojected
convective coefficient used below is

  (2π i) (ζ · a) b.

The Leray map is written explicitly as subtraction of the longitudinal
component.  The zero output frequency is treated by a separate branch.
The key transverse-output theorem is source-local: it does not sum or
integrate over equal output frequencies and therefore does not erase the
two input labels.

The exact shell/tail expansion is proved before any finite spherical or
helical approximation.  No norm-smallness, PDE solution, global regularity,
or identification with the finite moment operator is asserted here.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

section FourierNavierStokesTriad

open scoped BigOperators

/-- Complexification of a real Fourier frequency, used as the longitudinal
direction in the Leray correction. -/
def complexFrequency (ξ : FourierFrequency3) : FourierVelocity3 :=
  fun i => (ξ i : ℂ)

/-- The scalar denominator of the longitudinal correction.  It is defined
source-exactly through the already fixed divergence pairing. -/
def lerayDenominator (ξ : FourierFrequency3) : ℂ :=
  fourierDivergencePairing ξ (complexFrequency ξ)

/-- The Fourier-divergence pairing is complex-linear in the velocity
coefficient, even though the source-level transversality interface only
needed its additive structure. -/
theorem fourierDivergencePairing_smul
    (ξ : FourierFrequency3) (c : ℂ) (v : FourierVelocity3) :
    fourierDivergencePairing ξ (c • v) =
      c * fourierDivergencePairing ξ v := by
  simp [fourierDivergencePairing, Finset.mul_sum, mul_assoc, mul_left_comm,
    mul_comm]

/-- Explicit Leray correction.  At zero output frequency we keep the
coefficient unchanged; away from zero the longitudinal component is removed.
The denominator is retained literally rather than hidden in an error term. -/
def lerayProject (ξ : FourierFrequency3) (v : FourierVelocity3) :
    FourierVelocity3 :=
  if ξ = 0 then v
  else v - (fourierDivergencePairing ξ v / lerayDenominator ξ) • complexFrequency ξ

/-- The zero Fourier mode uses the explicit identity branch. -/
theorem lerayProject_zero (v : FourierVelocity3) :
    lerayProject 0 v = v := by
  simp [lerayProject]

/-- Whenever the explicit longitudinal denominator is nonzero, the Leray
correction is exactly transverse at the output frequency.  A separate source
lemma below identifies that denominator with the Euclidean squared norm. -/
theorem lerayProject_transverse_of_denominator_ne_zero
    {ξ : FourierFrequency3} (hξ : ξ ≠ 0)
    (hden : lerayDenominator ξ ≠ 0) (v : FourierVelocity3) :
    fourierDivergencePairing ξ (lerayProject ξ v) = 0 := by
  rw [lerayProject, if_neg hξ]
  rw [map_sub, fourierDivergencePairing_smul]
  simp only [lerayDenominator]
  field_simp

/-- Under the chosen exp(-2π i x·ξ) Fourier convention, one unprojected
source-labelled convective interaction is (2π i) (ζ·a) b. -/
def navierStokesConvectiveTriad
    (t : TriadSource FourierFrequency3)
    (a b : FourierVelocity3) : FourierVelocity3 :=
  fun i =>
    ((2 * Real.pi : ℂ) * Complex.I) *
      fourierDivergencePairing t.right a * b i

/-- The projected source-labelled Navier--Stokes triad.  Projection is taken
at the actual additive output frequency η + ζ. -/
def navierStokesLerayTriad
    (t : TriadSource FourierFrequency3)
    (a b : FourierVelocity3) : FourierVelocity3 :=
  lerayProject t.outputFrequency (navierStokesConvectiveTriad t a b)

/-- If the explicit Leray denominator at the nonzero output frequency is
nonzero, every projected source-labelled convective triad is transverse at
that exact output frequency. -/
theorem navierStokesLerayTriad_transverse
    (t : TriadSource FourierFrequency3)
    (hout : t.outputFrequency ≠ 0)
    (hden : lerayDenominator t.outputFrequency ≠ 0)
    (a b : FourierVelocity3) :
    fourierDivergencePairing t.outputFrequency
      (navierStokesLerayTriad t a b) = 0 := by
  exact lerayProject_transverse_of_denominator_ne_zero
    hout hden (navierStokesConvectiveTriad t a b)

/-- The unprojected convective source is exactly biadditive in the two
velocity inputs. -/
theorem navierStokesConvectiveTriad_add_add
    (t : TriadSource FourierFrequency3)
    (a₁ a₂ b₁ b₂ : FourierVelocity3) :
    navierStokesConvectiveTriad t (a₁ + a₂) (b₁ + b₂) =
      navierStokesConvectiveTriad t a₁ b₁ +
      navierStokesConvectiveTriad t a₁ b₂ +
      navierStokesConvectiveTriad t a₂ b₁ +
      navierStokesConvectiveTriad t a₂ b₂ := by
  funext i
  simp [navierStokesConvectiveTriad, fourierDivergencePairing, mul_add]
  ring

/-- Exact four-sector source decomposition for the actual chosen convective
triad kernel.  In particular the tail--tail sector is retained even when its
two high-frequency inputs add to a low output frequency. -/
theorem navierStokesConvectiveTriad_shell_tail_split
    (u : FourierFrequency3 → FourierVelocity3)
    (R : ℝ) (t : TriadSource FourierFrequency3) :
    navierStokesConvectiveTriad t (u t.left) (u t.right) =
      navierStokesConvectiveTriad t
          (shellPart R u t.left) (shellPart R u t.right) +
      navierStokesConvectiveTriad t
          (shellPart R u t.left) (tailPart R u t.right) +
      navierStokesConvectiveTriad t
          (tailPart R u t.left) (shellPart R u t.right) +
      navierStokesConvectiveTriad t
          (tailPart R u t.left) (tailPart R u t.right) := by
  rw [← shell_add_tail R u t.left, ← shell_add_tail R u t.right]
  exact navierStokesConvectiveTriad_add_add t _ _ _ _

/-- The same four-sector identity survives any additive output operator,
including the explicit Leray projection once its additivity is supplied.
This form isolates the exact remaining API obligation instead of silently
assuming it. -/
theorem navierStokesProjected_shell_tail_split
    (P : FourierVelocity3 →+ FourierVelocity3)
    (u : FourierFrequency3 → FourierVelocity3)
    (R : ℝ) (t : TriadSource FourierFrequency3) :
    P (navierStokesConvectiveTriad t (u t.left) (u t.right)) =
      P (navierStokesConvectiveTriad t
          (shellPart R u t.left) (shellPart R u t.right)) +
      P (navierStokesConvectiveTriad t
          (shellPart R u t.left) (tailPart R u t.right)) +
      P (navierStokesConvectiveTriad t
          (tailPart R u t.left) (shellPart R u t.right)) +
      P (navierStokesConvectiveTriad t
          (tailPart R u t.left) (tailPart R u t.right)) := by
  rw [navierStokesConvectiveTriad_shell_tail_split u R t]
  simp only [map_add]


/-- The explicit Leray denominator is the real Euclidean squared norm,
embedded in the complex scalars.  This is the source identity needed to
remove the provisional denominator premise from the transverse-output theorem. -/
theorem lerayDenominator_eq_norm_sq (ξ : FourierFrequency3) :
    lerayDenominator ξ = ((‖ξ‖ ^ 2 : ℝ) : ℂ) := by
  simp [lerayDenominator, fourierDivergencePairing, complexFrequency,
    EuclideanSpace.norm_eq, Real.norm_eq_abs]
  norm_num [sq_abs]

/-- Every nonzero real Fourier frequency has a nonzero Leray denominator. -/
theorem lerayDenominator_ne_zero {ξ : FourierFrequency3} (hξ : ξ ≠ 0) :
    lerayDenominator ξ ≠ 0 := by
  rw [lerayDenominator_eq_norm_sq]
  exact_mod_cast (sq_ne_zero.mpr (norm_ne_zero_iff.mpr hξ))

/-- The explicit Leray correction is unconditionally transverse at every
nonzero output frequency. -/
theorem lerayProject_transverse
    {ξ : FourierFrequency3} (hξ : ξ ≠ 0) (v : FourierVelocity3) :
    fourierDivergencePairing ξ (lerayProject ξ v) = 0 :=
  lerayProject_transverse_of_denominator_ne_zero
    hξ (lerayDenominator_ne_zero hξ) v

/-- At a fixed Fourier frequency the explicit Leray correction is additive.
The zero-frequency identity branch and the nonzero longitudinal correction
are handled separately rather than conflated. -/
theorem lerayProject_add
    (ξ : FourierFrequency3) (u v : FourierVelocity3) :
    lerayProject ξ (u + v) = lerayProject ξ u + lerayProject ξ v := by
  by_cases hξ : ξ = 0
  · subst ξ
    simp [lerayProject]
  · rw [lerayProject, lerayProject, lerayProject]
    simp only [if_neg hξ, map_add]
    funext i
    simp [div_eq_mul_inv, add_mul, mul_add]
    ring

/-- At a fixed Fourier frequency the explicit Leray correction sends zero
to zero. -/
theorem lerayProject_zero_fixed (ξ : FourierFrequency3) :
    lerayProject ξ 0 = 0 := by
  by_cases hξ : ξ = 0
  · subst ξ
    simp [lerayProject]
  · rw [lerayProject, if_neg hξ]
    simp

/-- Package the exact fixed-frequency Leray correction as the additive map
required by the source-labelled four-sector consumer. -/
def lerayProjectAddMonoidHom (ξ : FourierFrequency3) :
    FourierVelocity3 →+ FourierVelocity3 where
  toFun := lerayProject ξ
  map_zero' := lerayProject_zero_fixed ξ
  map_add' := lerayProject_add ξ

/-- The actual projected Navier--Stokes triad inherits the exact shell/tail
four-sector decomposition.  No mixed or tail--tail source sector is erased. -/
theorem navierStokesLerayTriad_shell_tail_split
    (u : FourierFrequency3 → FourierVelocity3)
    (R : ℝ) (t : TriadSource FourierFrequency3) :
    navierStokesLerayTriad t (u t.left) (u t.right) =
      navierStokesLerayTriad t
          (shellPart R u t.left) (shellPart R u t.right) +
      navierStokesLerayTriad t
          (shellPart R u t.left) (tailPart R u t.right) +
      navierStokesLerayTriad t
          (tailPart R u t.left) (shellPart R u t.right) +
      navierStokesLerayTriad t
          (tailPart R u t.left) (tailPart R u t.right) := by
  unfold navierStokesLerayTriad
  exact navierStokesProjected_shell_tail_split
    (lerayProjectAddMonoidHom t.outputFrequency) u R t

/-- The projected source-labelled convective interaction is transverse at
every nonzero additive output frequency, with no separate denominator premise. -/
theorem navierStokesLerayTriad_transverse_of_output_ne_zero
    (t : TriadSource FourierFrequency3)
    (hout : t.outputFrequency ≠ 0)
    (a b : FourierVelocity3) :
    fourierDivergencePairing t.outputFrequency
      (navierStokesLerayTriad t a b) = 0 := by
  exact lerayProject_transverse hout (navierStokesConvectiveTriad t a b)


/-!
### Finite source-labelled convolution consumer

The first convolution bridge is deliberately finite.  A finite set of labelled
pairs is summed without quotienting by output frequency, so multiplicity and
the identity of both input frequencies remain present in the source index.
This avoids assuming summability or Bochner-integrability that has not yet
been established for the full Fourier source.
-/

/-- Finite projected Navier--Stokes convolution over an explicit set of
source-labelled pairs.  Distinct labels with the same additive output are
counted separately. -/
def finiteNavierStokesLerayConvolution
    (S : Finset (TriadSource FourierFrequency3))
    (u : FourierFrequency3 → FourierVelocity3) : FourierVelocity3 :=
  ∑ t ∈ S, navierStokesLerayTriad t (u t.left) (u t.right)

/-- Sector-specific finite convolution.  Keeping the two source functions
separate lets the exact shell/tail expansion retain all four sectors. -/
def finiteNavierStokesLerayConvolution₂
    (S : Finset (TriadSource FourierFrequency3))
    (u v : FourierFrequency3 → FourierVelocity3) : FourierVelocity3 :=
  ∑ t ∈ S, navierStokesLerayTriad t (u t.left) (v t.right)

/-- The finite source-labelled projected convolution is exactly the sum of
shell--shell, shell--tail, tail--shell, and tail--tail convolutions. -/
theorem finiteNavierStokesLerayConvolution_shell_tail_split
    (S : Finset (TriadSource FourierFrequency3))
    (u : FourierFrequency3 → FourierVelocity3) (R : ℝ) :
    finiteNavierStokesLerayConvolution S u =
      finiteNavierStokesLerayConvolution₂ S
        (shellPart R u) (shellPart R u) +
      finiteNavierStokesLerayConvolution₂ S
        (shellPart R u) (tailPart R u) +
      finiteNavierStokesLerayConvolution₂ S
        (tailPart R u) (shellPart R u) +
      finiteNavierStokesLerayConvolution₂ S
        (tailPart R u) (tailPart R u) := by
  classical
  simp only [finiteNavierStokesLerayConvolution,
    finiteNavierStokesLerayConvolution₂]
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib,
    ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro t ht
  exact navierStokesLerayTriad_shell_tail_split u R t

/-- Restrict an explicit finite labelled source to one additive output
frequency.  This is a filter, not a quotient: every matching pair remains a
separate member and therefore retains its multiplicity. -/
def triadsAtOutput
    (S : Finset (TriadSource FourierFrequency3))
    (ξ : FourierFrequency3) : Finset (TriadSource FourierFrequency3) :=
  S.filter (fun t => t.outputFrequency = ξ)

/-- Finite projected convolution at one output frequency, obtained by
filtering the source-labelled set rather than identifying equal-output pairs. -/
def finiteNavierStokesLerayConvolutionAt
    (S : Finset (TriadSource FourierFrequency3))
    (ξ : FourierFrequency3)
    (u : FourierFrequency3 → FourierVelocity3) : FourierVelocity3 :=
  finiteNavierStokesLerayConvolution (triadsAtOutput S ξ) u

/-- Every summand contributing to a nonzero fixed output is transverse at
that same output frequency, hence so is the complete finite convolution.
No cancellation between different source labels is needed for this fact. -/
theorem finiteNavierStokesLerayConvolutionAt_transverse
    (S : Finset (TriadSource FourierFrequency3))
    {ξ : FourierFrequency3} (hξ : ξ ≠ 0)
    (u : FourierFrequency3 → FourierVelocity3) :
    fourierDivergencePairing ξ
      (finiteNavierStokesLerayConvolutionAt S ξ u) = 0 := by
  classical
  unfold finiteNavierStokesLerayConvolutionAt
  unfold finiteNavierStokesLerayConvolution
  rw [map_sum]
  apply Finset.sum_eq_zero
  intro t ht
  simp only [triadsAtOutput, Finset.mem_filter] at ht
  have hout : t.outputFrequency = ξ := ht.2
  rw [← hout]
  exact navierStokesLerayTriad_transverse_of_output_ne_zero
    t (hout.symm ▸ hξ) (u t.left) (u t.right)

/-- The four-sector identity remains exact after restricting to one output
frequency.  In particular high--high pairs returning to a low output remain
inside the tail--tail summand of that low-output convolution. -/
theorem finiteNavierStokesLerayConvolutionAt_shell_tail_split
    (S : Finset (TriadSource FourierFrequency3))
    (ξ : FourierFrequency3)
    (u : FourierFrequency3 → FourierVelocity3) (R : ℝ) :
    finiteNavierStokesLerayConvolutionAt S ξ u =
      finiteNavierStokesLerayConvolution₂ (triadsAtOutput S ξ)
        (shellPart R u) (shellPart R u) +
      finiteNavierStokesLerayConvolution₂ (triadsAtOutput S ξ)
        (shellPart R u) (tailPart R u) +
      finiteNavierStokesLerayConvolution₂ (triadsAtOutput S ξ)
        (tailPart R u) (shellPart R u) +
      finiteNavierStokesLerayConvolution₂ (triadsAtOutput S ξ)
        (tailPart R u) (tailPart R u) := by
  exact finiteNavierStokesLerayConvolution_shell_tail_split
    (triadsAtOutput S ξ) u R

end FourierNavierStokesTriad


namespace ContinuousDyadicObservation

open Set
open GRWTSK.RiemannHypothesis

/-!
### Continuous dyadic splitting of an observation

This layer acts on an already-constructed observation.  It does not interpolate
or manufacture missing Fourier source coefficients.  The path is an exact
two-piece decomposition of the same observation at every parameter value.
-/

variable {V : Type*} [NormedAddCommGroup V] [NormedSpace ℂ V]

/-- The line parameter used for a continuous two-way split. -/
abbrev SplitParameter := Set.Icc (0 : ℝ) 1

/-- Left branch of the straight continuous dyadic split. -/
def leftPart (x : V) (θ : SplitParameter) : V :=
  (1 - θ.1 : ℂ) • x

/-- Right branch of the straight continuous dyadic split. -/
def rightPart (x : V) (θ : SplitParameter) : V :=
  (θ.1 : ℂ) • x

/-- Every point on the line is an exact decomposition of the same source
observation. -/
theorem left_add_right (x : V) (θ : SplitParameter) :
    leftPart x θ + rightPart x θ = x := by
  simp only [leftPart, rightPart, ← add_smul]
  norm_num

/-- The split begins entirely on the left branch. -/
@[simp] theorem leftPart_zero (x : V) :
    leftPart x ⟨0, by constructor <;> norm_num⟩ = x := by
  simp [leftPart]

/-- The split begins with an empty right branch. -/
@[simp] theorem rightPart_zero (x : V) :
    rightPart x ⟨0, by constructor <;> norm_num⟩ = 0 := by
  simp [rightPart]

/-- The split ends with an empty left branch. -/
@[simp] theorem leftPart_one (x : V) :
    leftPart x ⟨1, by constructor <;> norm_num⟩ = 0 := by
  simp [leftPart]

/-- The split ends entirely on the right branch. -/
@[simp] theorem rightPart_one (x : V) :
    rightPart x ⟨1, by constructor <;> norm_num⟩ = x := by
  simp [rightPart]

/-- The two branches vary continuously along the interpolation line. -/
theorem continuous_leftPart (x : V) :
    Continuous (leftPart x) := by
  fun_prop

theorem continuous_rightPart (x : V) :
    Continuous (rightPart x) := by
  fun_prop

/-- Exact quadratic expansion along the continuous split for any complex
sesquilinear observation.  The mixed terms remain explicit. -/
theorem sesquilinear_split
    (B : V → V → ℂ)
    (haddL : ∀ a b c, B (a + b) c = B a c + B b c)
    (haddR : ∀ a b c, B a (b + c) = B a b + B a c)
    (x : V) (θ : SplitParameter) :
    B x x =
      B (leftPart x θ) (leftPart x θ) +
      B (leftPart x θ) (rightPart x θ) +
      B (rightPart x θ) (leftPart x θ) +
      B (rightPart x θ) (rightPart x θ) := by
  rw [← left_add_right x θ, haddL, haddR, haddR]
  ring

/-- For a real diagonal quadratic observation, the left-right interference
term at every point of the continuous split is reconstructed by the existing
Weil four-diagonal polarization formula. -/
theorem polarized_cross_along_split
    (B : V → V → ℂ) (q : V → ℝ)
    (haddL : ∀ x y z, B (x + y) z = B x z + B y z)
    (hsmulL : ∀ c x y, B (c • x) y = star c * B x y)
    (haddR : ∀ x y z, B x (y + z) = B x y + B x z)
    (hsmulR : ∀ c x y, B x (c • y) = c * B x y)
    (hdiag : ∀ x, (q x : ℂ) = B x x)
    (x : V) (θ : SplitParameter) :
    B (leftPart x θ) (rightPart x θ) =
      WeilPolarization.combine
        (q (leftPart x θ + rightPart x θ))
        (q (leftPart x θ - rightPart x θ))
        (q (leftPart x θ + Complex.I • rightPart x θ))
        (q (leftPart x θ - Complex.I • rightPart x θ)) := by
  exact WeilPolarization.of_real_diagonal
    B q haddL hsmulL haddR hsmulR hdiag
    (leftPart x θ) (rightPart x θ)

/-- Apply the continuous dyadic split to the finite projected Navier--Stokes
observation at one output frequency.  This is observation-level relaxation:
the underlying source-labelled convolution remains unchanged. -/
def finiteConvolutionLeft
    (S : Finset (FourierNavierStokesTriad.TriadSource FourierNavierStokesTriad.FourierFrequency3))
    (ξ : FourierNavierStokesTriad.FourierFrequency3)
    (u : FourierNavierStokesTriad.FourierFrequency3 → FourierNavierStokesTriad.FourierVelocity3)
    (θ : SplitParameter) : FourierNavierStokesTriad.FourierVelocity3 :=
  leftPart (FourierNavierStokesTriad.finiteNavierStokesLerayConvolutionAt S ξ u) θ

def finiteConvolutionRight
    (S : Finset (FourierNavierStokesTriad.TriadSource FourierNavierStokesTriad.FourierFrequency3))
    (ξ : FourierNavierStokesTriad.FourierFrequency3)
    (u : FourierNavierStokesTriad.FourierFrequency3 → FourierNavierStokesTriad.FourierVelocity3)
    (θ : SplitParameter) : FourierNavierStokesTriad.FourierVelocity3 :=
  rightPart (FourierNavierStokesTriad.finiteNavierStokesLerayConvolutionAt S ξ u) θ

theorem finiteConvolutionLeft_add_right
    (S : Finset (FourierNavierStokesTriad.TriadSource FourierNavierStokesTriad.FourierFrequency3))
    (ξ : FourierNavierStokesTriad.FourierFrequency3)
    (u : FourierNavierStokesTriad.FourierFrequency3 → FourierNavierStokesTriad.FourierVelocity3)
    (θ : SplitParameter) :
    finiteConvolutionLeft S ξ u θ + finiteConvolutionRight S ξ u θ =
      FourierNavierStokesTriad.finiteNavierStokesLerayConvolutionAt S ξ u := by
  exact left_add_right _ θ


/-!
### Positive quadratic majorant along the split

The following bounds are deliberately observation-level.  They provide an
exact positive Gram control for the straight split and an explicit allowance
for an approximate diagonal observer.  They do not assert that interpolation
has reduced the unresolved Navier--Stokes source error.
-/

variable [InnerProductSpace ℂ V]

/-- The positive Gram observation associated with the ambient Hilbert norm. -/
def gramObservation (x : V) : ℝ := ‖x‖ ^ 2

/-- Exact norm scaling on the left branch. -/
theorem norm_leftPart (x : V) (θ : SplitParameter) :
    ‖leftPart x θ‖ = (1 - θ.1) * ‖x‖ := by
  rw [leftPart, norm_smul, Complex.norm_real, abs_of_nonneg]
  · rfl
  · exact sub_nonneg.mpr θ.2.2

/-- Exact norm scaling on the right branch. -/
theorem norm_rightPart (x : V) (θ : SplitParameter) :
    ‖rightPart x θ‖ = θ.1 * ‖x‖ := by
  rw [rightPart, norm_smul, Complex.norm_real, abs_of_nonneg]
  exact θ.2.1

/-- The diagonal positive observations of the two branches have an exact
quadratic profile along the rope parameter. -/
theorem gram_split_profile (x : V) (θ : SplitParameter) :
    gramObservation (leftPart x θ) + gramObservation (rightPart x θ) =
      ((1 - θ.1) ^ 2 + θ.1 ^ 2) * gramObservation x := by
  simp only [gramObservation, norm_leftPart, norm_rightPart]
  ring

/-- The complete positive diagonal mass of the two branches never exceeds the
original positive Gram observation. -/
theorem gram_split_le (x : V) (θ : SplitParameter) :
    gramObservation (leftPart x θ) + gramObservation (rightPart x θ) ≤
      gramObservation x := by
  rw [gram_split_profile]
  have hx : 0 ≤ gramObservation x := sq_nonneg _
  have hθ0 : 0 ≤ θ.1 := θ.2.1
  have hθ1 : θ.1 ≤ 1 := θ.2.2
  have hcoef : (1 - θ.1) ^ 2 + θ.1 ^ 2 ≤ 1 := by
    nlinarith [mul_nonneg hθ0 (sub_nonneg.mpr hθ1)]
  nlinarith

/-- An approximate positive diagonal observer carries an explicit absolute
allowance.  This is the scalar socket for RS/endpoint interpolation error:
the allowance is retained rather than identified with source cancellation. -/
structure ApproximateGramObserver (V : Type*) [NormedAddCommGroup V] where
  observe : V → ℝ
  allowance : V → ℝ
  allowance_nonnegative : ∀ x, 0 ≤ allowance x
  error_le : ∀ x, |observe x - ‖x‖ ^ 2| ≤ allowance x

namespace ApproximateGramObserver

/-- The two observed branch energies are controlled by the original positive
Gram observation plus the two explicit interpolation/observation allowances. -/
theorem split_upper
    (A : ApproximateGramObserver V)
    (x : V) (θ : SplitParameter) :
    A.observe (leftPart x θ) + A.observe (rightPart x θ) ≤
      gramObservation x +
        A.allowance (leftPart x θ) + A.allowance (rightPart x θ) := by
  have hL := A.error_le (leftPart x θ)
  have hR := A.error_le (rightPart x θ)
  have hL' :
      A.observe (leftPart x θ) ≤
        gramObservation (leftPart x θ) + A.allowance (leftPart x θ) := by
    dsimp [gramObservation]
    linarith [le_abs_self (A.observe (leftPart x θ) -
      ‖leftPart x θ‖ ^ 2)]
  have hR' :
      A.observe (rightPart x θ) ≤
        gramObservation (rightPart x θ) + A.allowance (rightPart x θ) := by
    dsimp [gramObservation]
    linarith [le_abs_self (A.observe (rightPart x θ) -
      ‖rightPart x θ‖ ^ 2)]
  have hGram := gram_split_le x θ
  linarith

end ApproximateGramObserver

/-- Nonexpansive involution relaxation cannot increase the positive Gram
observation.  This connects the continuous observation path to the existing
proof-bearing relaxation interface without asserting that relaxation changes
or improves the underlying Fourier source. -/
theorem gram_involutionRelaxation_le
    (parameter : DAF.Geometry.RelaxationParameter)
    (C : V →ₗ[ℝ] V)
    (isometry : ∀ x, ‖C x‖ = ‖x‖)
    (x : V) :
    gramObservation
      (DAF.Geometry.involutionRelaxation parameter.value C x) ≤
      gramObservation x := by
  have hnorm :=
    DAF.Geometry.norm_involutionRelaxation_le parameter C isometry x
  dsimp [gramObservation]
  nlinarith [norm_nonneg x,
    norm_nonneg (DAF.Geometry.involutionRelaxation parameter.value C x)]


/-!
### Torsion-residue polarization channels

The four Weil probes are retained as named residue channels.  A torsion action
may move each channel independently; recombination happens only at the final
polarized consumer.  This prevents a small combined residual from hiding a
large channel that was cancelled by another channel.
-/

/-- The four diagonal residue channels used by complex polarization. -/
structure PolarizationResidueChannels where
  plus : ℝ
  minus : ℝ
  plusI : ℝ
  minusI : ℝ

namespace PolarizationResidueChannels

/-- Recombine the four retained channels only at the polarized consumer. -/
def recombine (r : PolarizationResidueChannels) : ℂ :=
  WeilPolarization.combine r.plus r.minus r.plusI r.minusI

/-- Positive channel mass.  This is intentionally prior to complex
recombination and therefore does not use cancellation between channels. -/
def torsionMass (r : PolarizationResidueChannels) : ℝ :=
  |r.plus| + |r.minus| + |r.plusI| + |r.minusI|

theorem torsionMass_nonnegative (r : PolarizationResidueChannels) :
    0 ≤ r.torsionMass := by
  unfold torsionMass
  positivity

/-- The recombined complex residue is controlled by the full retained channel
mass. -/
theorem norm_recombine_le (r : PolarizationResidueChannels) :
    ‖r.recombine‖ ≤ r.torsionMass / 4 := by
  exact WeilPolarization.norm_combine_le r.plus r.minus r.plusI r.minusI

/-- Channelwise addition retains residue provenance before recombination. -/
def add (r s : PolarizationResidueChannels) : PolarizationResidueChannels where
  plus := r.plus + s.plus
  minus := r.minus + s.minus
  plusI := r.plusI + s.plusI
  minusI := r.minusI + s.minusI

@[simp] theorem recombine_add (r s : PolarizationResidueChannels) :
    (r.add s).recombine = r.recombine + s.recombine := by
  unfold add recombine WeilPolarization.combine
  push_cast
  ring

/-- A torsion step acts separately on all four residue channels.  No
commutation with recombination is assumed unless proved. -/
structure TorsionStep where
  actPlus : ℝ → ℝ
  actMinus : ℝ → ℝ
  actPlusI : ℝ → ℝ
  actMinusI : ℝ → ℝ
  boundPlus : ℝ
  boundMinus : ℝ
  boundPlusI : ℝ
  boundMinusI : ℝ
  boundPlus_nonnegative : 0 ≤ boundPlus
  boundMinus_nonnegative : 0 ≤ boundMinus
  boundPlusI_nonnegative : 0 ≤ boundPlusI
  boundMinusI_nonnegative : 0 ≤ boundMinusI
  actPlus_le : ∀ x, |actPlus x| ≤ boundPlus * |x|
  actMinus_le : ∀ x, |actMinus x| ≤ boundMinus * |x|
  actPlusI_le : ∀ x, |actPlusI x| ≤ boundPlusI * |x|
  actMinusI_le : ∀ x, |actMinusI x| ≤ boundMinusI * |x|

def TorsionStep.apply (T : TorsionStep)
    (r : PolarizationResidueChannels) : PolarizationResidueChannels where
  plus := T.actPlus r.plus
  minus := T.actMinus r.minus
  plusI := T.actPlusI r.plusI
  minusI := T.actMinusI r.minusI

/-- Full channelwise torsion budget.  The four bounds remain distinct. -/
def TorsionStep.majorant (T : TorsionStep)
    (r : PolarizationResidueChannels) : ℝ :=
  T.boundPlus * |r.plus| +
  T.boundMinus * |r.minus| +
  T.boundPlusI * |r.plusI| +
  T.boundMinusI * |r.minusI|

theorem TorsionStep.torsionMass_apply_le
    (T : TorsionStep) (r : PolarizationResidueChannels) :
    (T.apply r).torsionMass ≤ T.majorant r := by
  unfold torsionMass TorsionStep.apply TorsionStep.majorant
  dsimp
  exact add_le_add (add_le_add (add_le_add
    (T.actPlus_le r.plus) (T.actMinus_le r.minus))
    (T.actPlusI_le r.plusI)) (T.actMinusI_le r.minusI)

/-- After an arbitrary channelwise torsion step, the final complex polarized
residue is bounded by the retained four-channel majorant. -/
theorem TorsionStep.norm_recombine_apply_le
    (T : TorsionStep) (r : PolarizationResidueChannels) :
    ‖(T.apply r).recombine‖ ≤ T.majorant r / 4 := by
  exact (norm_recombine_le (T.apply r)).trans
    (div_le_div_of_nonneg_right (T.torsionMass_apply_le r) (by norm_num))

/-- Build the four signed residue channels from an approximate diagonal
observer and the exact positive Gram diagonal along a pair of vectors. -/
def ofApproximateGram
    (A : ApproximateGramObserver V) (f g : V) :
    PolarizationResidueChannels where
  plus := A.observe (f + g) - ‖f + g‖ ^ 2
  minus := A.observe (f - g) - ‖f - g‖ ^ 2
  plusI := A.observe (f + Complex.I • g) - ‖f + Complex.I • g‖ ^ 2
  minusI := A.observe (f - Complex.I • g) - ‖f - Complex.I • g‖ ^ 2

/-- Each named residue channel is bounded by its own supplied observation
allowance; no cross-channel cancellation is used. -/
theorem ofApproximateGram_torsionMass_le
    (A : ApproximateGramObserver V) (f g : V) :
    (ofApproximateGram A f g).torsionMass ≤
      A.allowance (f + g) + A.allowance (f - g) +
      A.allowance (f + Complex.I • g) +
      A.allowance (f - Complex.I • g) := by
  unfold ofApproximateGram torsionMass
  dsimp
  exact add_le_add (add_le_add (add_le_add
    (A.error_le (f + g)) (A.error_le (f - g)))
    (A.error_le (f + Complex.I • g)))
    (A.error_le (f - Complex.I • g))


/-! ### Composed residue transport and holonomy candidate -/

def TorsionStep.comp (T₂ T₁ : TorsionStep) : TorsionStep where
  actPlus := fun x => T₂.actPlus (T₁.actPlus x)
  actMinus := fun x => T₂.actMinus (T₁.actMinus x)
  actPlusI := fun x => T₂.actPlusI (T₁.actPlusI x)
  actMinusI := fun x => T₂.actMinusI (T₁.actMinusI x)
  boundPlus := T₂.boundPlus * T₁.boundPlus
  boundMinus := T₂.boundMinus * T₁.boundMinus
  boundPlusI := T₂.boundPlusI * T₁.boundPlusI
  boundMinusI := T₂.boundMinusI * T₁.boundMinusI
  boundPlus_nonnegative := mul_nonneg T₂.boundPlus_nonnegative T₁.boundPlus_nonnegative
  boundMinus_nonnegative := mul_nonneg T₂.boundMinus_nonnegative T₁.boundMinus_nonnegative
  boundPlusI_nonnegative := mul_nonneg T₂.boundPlusI_nonnegative T₁.boundPlusI_nonnegative
  boundMinusI_nonnegative := mul_nonneg T₂.boundMinusI_nonnegative T₁.boundMinusI_nonnegative
  actPlus_le := by
    intro x
    calc
      |T₂.actPlus (T₁.actPlus x)| ≤ T₂.boundPlus * |T₁.actPlus x| := T₂.actPlus_le _
      _ ≤ T₂.boundPlus * (T₁.boundPlus * |x|) :=
        mul_le_mul_of_nonneg_left (T₁.actPlus_le x) T₂.boundPlus_nonnegative
      _ = (T₂.boundPlus * T₁.boundPlus) * |x| := by ring
  actMinus_le := by
    intro x
    calc
      |T₂.actMinus (T₁.actMinus x)| ≤ T₂.boundMinus * |T₁.actMinus x| := T₂.actMinus_le _
      _ ≤ T₂.boundMinus * (T₁.boundMinus * |x|) :=
        mul_le_mul_of_nonneg_left (T₁.actMinus_le x) T₂.boundMinus_nonnegative
      _ = (T₂.boundMinus * T₁.boundMinus) * |x| := by ring
  actPlusI_le := by
    intro x
    calc
      |T₂.actPlusI (T₁.actPlusI x)| ≤ T₂.boundPlusI * |T₁.actPlusI x| := T₂.actPlusI_le _
      _ ≤ T₂.boundPlusI * (T₁.boundPlusI * |x|) :=
        mul_le_mul_of_nonneg_left (T₁.actPlusI_le x) T₂.boundPlusI_nonnegative
      _ = (T₂.boundPlusI * T₁.boundPlusI) * |x| := by ring
  actMinusI_le := by
    intro x
    calc
      |T₂.actMinusI (T₁.actMinusI x)| ≤ T₂.boundMinusI * |T₁.actMinusI x| := T₂.actMinusI_le _
      _ ≤ T₂.boundMinusI * (T₁.boundMinusI * |x|) :=
        mul_le_mul_of_nonneg_left (T₁.actMinusI_le x) T₂.boundMinusI_nonnegative
      _ = (T₂.boundMinusI * T₁.boundMinusI) * |x| := by ring

@[simp] theorem TorsionStep.comp_apply (T₂ T₁ : TorsionStep)
    (r : PolarizationResidueChannels) :
    (T₂.comp T₁).apply r = T₂.apply (T₁.apply r) := rfl

def transportPath : List TorsionStep → PolarizationResidueChannels →
    PolarizationResidueChannels
  | [], r => r
  | T :: Ts, r => transportPath Ts (T.apply r)

def ClosedPathReturn (Ts : List TorsionStep) : Prop :=
  ∀ r, transportPath Ts r = r

theorem recombine_transportPath_eq_of_closed
    {Ts : List TorsionStep} (hclosed : ClosedPathReturn Ts)
    (r : PolarizationResidueChannels) :
    (transportPath Ts r).recombine = r.recombine := by
  rw [hclosed r]

structure IsometricTorsionStep (T : TorsionStep) : Prop where
  plus : ∀ x, |T.actPlus x| = |x|
  minus : ∀ x, |T.actMinus x| = |x|
  plusI : ∀ x, |T.actPlusI x| = |x|
  minusI : ∀ x, |T.actMinusI x| = |x|

theorem torsionMass_apply_eq_of_isometric
    (T : TorsionStep) (hT : IsometricTorsionStep T)
    (r : PolarizationResidueChannels) :
    (T.apply r).torsionMass = r.torsionMass := by
  unfold torsionMass TorsionStep.apply
  dsimp
  rw [hT.plus, hT.minus, hT.plusI, hT.minusI]

end PolarizationResidueChannels

end ContinuousDyadicObservation



end

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesMomentGap
