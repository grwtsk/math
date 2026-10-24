/- Copyright (c) 2026 grwtsk contributors. MIT.

Mathematical source/proof adaptation: OpenAI (2026), Apache-2.0,
"Finite-rank gap and determinant perturbations", in
"Stationary instability and nonuniqueness for axisymmetric swirl-free Navier–Stokes":
https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/MathematicalPhysics/NavierStokes/FiniteRankGap.lean
Upstream source blob: f1ebe2af6bb031e2a524b613f8f07d2033072c83.
Original upstream author and license are retained here as provenance; the local
GRWTSK bridge declarations are by grwtsk contributors.
-/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteObservationGap
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


end

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesMomentGap
