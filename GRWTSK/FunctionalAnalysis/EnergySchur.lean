/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.InnerProductSpace.Dual
import Mathlib.Tactic

/-!
# Schur elimination in a complete energy space

`E` is the complete coercive form domain with its ENERGY inner product,
not an unbounded operator declared to act on every physical L2 vector.
`C v w` is the source mixed pairing with the retained vector first. It is
conjugate-linear in `v` and linear in `w`; both real and complex scalars
are supported. Riesz constructs the correction rather than assuming a solve.

The source realization must separately identify `energy` with the actual
shifted source on its entire domain. The consumer is
`WeilShiftedSchurReturn.windowLower_of_energySchur` and its residual variant.
No source-domain completeness, spectral cutoff, arithmetic sign or cofinal
certificate existence is inferred from this abstract energy construction.

The residual is measured in the ACTUAL energy dual. The trial form is an
UPPER bound for the Schur form; its residual norm squared must be subtracted.
The existing real ambient-norm residual estimates remain separate suppliers.

Source-proof candidate. Elaboration, exact types, fresh kernel replay,
transitive axiom audit and independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open Module
open scoped ComplexConjugate

namespace GRWTSK.FunctionalAnalysis.EnergySchur

variable {𝕜 E V : Type*} [RCLike 𝕜]
  [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
  [NormedAddCommGroup V] [NormedSpace 𝕜 V]

/-- Two conjugate-linear maps compose to the linear source correction. -/
def correction (C : V →L⋆[𝕜] StrongDual 𝕜 E) : V →L[𝕜] E :=
  (InnerProductSpace.toDual 𝕜 E).symm.toContinuousLinearEquiv.toContinuousLinearMap.comp C

@[simp] theorem correction_inner (C : V →L⋆[𝕜] StrongDual 𝕜 E)
    (v : V) (w : E) : inner 𝕜 (correction C v) w = C v w := by
  simp [correction]

@[simp] theorem toDual_correction (C : V →L⋆[𝕜] StrongDual 𝕜 E) (v : V) :
    InnerProductSpace.toDual 𝕜 E (correction C v) = C v := by
  simp [correction]

theorem correction_unique (C : V →L⋆[𝕜] StrongDual 𝕜 E) (v : V) (x : E)
    (hx : ∀ w, inner 𝕜 x w = C v w) : x = correction C v := by
  apply ext_inner_right 𝕜
  intro w
  rw [correction_inner]
  exact hx w

/-- The energy of the Riesz vector is exactly the energy-dual norm squared. -/
theorem correction_norm (C : V →L⋆[𝕜] StrongDual 𝕜 E) (v : V) :
    ‖correction C v‖ = ‖C v‖ := by
  change ‖(InnerProductSpace.toDual 𝕜 E).symm (C v)‖ = ‖C v‖
  exact (InnerProductSpace.toDual 𝕜 E).symm.norm_map (C v)

theorem mixed_bound (C : V →L⋆[𝕜] StrongDual 𝕜 E) (v : V) (w : E) :
    ‖C v w‖ ≤ ‖correction C v‖ * ‖w‖ := by
  rw [← correction_inner C v w]
  exact norm_inner_le_norm _ _

/-- Diagonal values `d` include the physical shift on the retained space.
No positivity or quadraticity of arbitrary `d` is inferred by this definition. -/
def energy (C : V →L⋆[𝕜] StrongDual 𝕜 E) (d : V → ℝ) (w : E) (v : V) : ℝ :=
  ‖w‖ ^ 2 + 2 * RCLike.re (C v w) + d v

def schur (C : V →L⋆[𝕜] StrongDual 𝕜 E) (d : V → ℝ) (v : V) : ℝ :=
  d v - ‖correction C v‖ ^ 2

/-- Exact square completion; the norm is the core energy norm. -/
theorem square_completion (C : V →L⋆[𝕜] StrongDual 𝕜 E) (d : V → ℝ)
    (w : E) (v : V) :
    energy C d w v = ‖correction C v + w‖ ^ 2 + schur C d v := by
  unfold energy schur
  rw [norm_add_sq (𝕜 := 𝕜), correction_inner]
  ring

/-- Testing at the actual minimizing correction proves the converse sign. -/
@[simp] theorem energy_at_minimum (C : V →L⋆[𝕜] StrongDual 𝕜 E)
    (d : V → ℝ) (v : V) :
    energy C d (-correction C v) v = schur C d v := by
  rw [square_completion]
  simp

theorem nonnegative_iff (C : V →L⋆[𝕜] StrongDual 𝕜 E) (d : V → ℝ) :
    (∀ w v, 0 ≤ energy C d w v) ↔ (∀ v, 0 ≤ schur C d v) := by
  constructor
  · intro h v
    simpa only [energy_at_minimum] using h (-correction C v) v
  · intro h w v
    rw [square_completion]
    exact add_nonneg (sq_nonneg _) (h v)

/-- The exact residual functional in the core energy dual. -/
def residual (C : V →L⋆[𝕜] StrongDual 𝕜 E) (X : V →L[𝕜] E)
    (v : V) : StrongDual 𝕜 E :=
  C v - InnerProductSpace.toDual 𝕜 E (X v)

theorem residual_eq_toDual_sub (C : V →L⋆[𝕜] StrongDual 𝕜 E)
    (X : V →L[𝕜] E) (v : V) :
    residual C X v = InnerProductSpace.toDual 𝕜 E (correction C v - X v) := by
  rw [map_sub, toDual_correction]
  rfl

theorem residual_norm (C : V →L⋆[𝕜] StrongDual 𝕜 E)
    (X : V →L[𝕜] E) (v : V) :
    ‖residual C X v‖ = ‖correction C v - X v‖ := by
  rw [residual_eq_toDual_sub]
  exact (InnerProductSpace.toDual 𝕜 E).norm_map _

/-- Evaluate the unchanged coupled form at a trial elimination. -/
def trial (C : V →L⋆[𝕜] StrongDual 𝕜 E) (d : V → ℝ)
    (X : V →L[𝕜] E) (v : V) : ℝ :=
  energy C d (-X v) v

theorem trial_identity (C : V →L⋆[𝕜] StrongDual 𝕜 E) (d : V → ℝ)
    (X : V →L[𝕜] E) (v : V) :
    trial C d X v = schur C d v + ‖residual C X v‖ ^ 2 := by
  rw [trial, square_completion, residual_norm]
  simp only [sub_eq_add_neg]
  ring

theorem schur_eq_trial_sub_residual (C : V →L⋆[𝕜] StrongDual 𝕜 E)
    (d : V → ℝ) (X : V →L[𝕜] E) (v : V) :
    schur C d v = trial C d X v - ‖residual C X v‖ ^ 2 := by
  linarith [trial_identity C d X v]

/-- A positive trial value alone is not a lower certificate. -/
theorem schur_le_trial (C : V →L⋆[𝕜] StrongDual 𝕜 E)
    (d : V → ℝ) (X : V →L[𝕜] E) (v : V) :
    schur C d v ≤ trial C d X v := by
  linarith [trial_identity C d X v, sq_nonneg ‖residual C X v‖]

/-- Directional lower certificate, without replacing matrices by their worst norm. -/
theorem schur_lower_of_trial (C : V →L⋆[𝕜] StrongDual 𝕜 E)
    (d : V → ℝ) (X : V →L[𝕜] E) (lower budget : V → ℝ)
    (htrial : ∀ v, lower v ≤ trial C d X v)
    (hresidual : ∀ v, ‖residual C X v‖ ^ 2 ≤ budget v) (v : V) :
    lower v - budget v ≤ schur C d v := by
  rw [schur_eq_trial_sub_residual]
  linarith [htrial v, hresidual v]

theorem schur_nonneg_of_trial (C : V →L⋆[𝕜] StrongDual 𝕜 E)
    (d : V → ℝ) (X : V →L[𝕜] E) (lower budget : V → ℝ)
    (htrial : ∀ v, lower v ≤ trial C d X v)
    (hresidual : ∀ v, ‖residual C X v‖ ^ 2 ≤ budget v)
    (hpaid : ∀ v, budget v ≤ lower v) : ∀ v, 0 ≤ schur C d v := by
  intro v
  exact (sub_nonneg.mpr (hpaid v)).trans
    (schur_lower_of_trial C d X lower budget htrial hresidual v)

/-- Observation error is subtracted before the residual penalty. -/
theorem schur_nonneg_of_observed (C : V →L⋆[𝕜] StrongDual 𝕜 E)
    (d : V → ℝ) (X : V →L[𝕜] E) (observed error budget : V → ℝ)
    (hobs : ∀ v, |trial C d X v - observed v| ≤ error v)
    (hresidual : ∀ v, ‖residual C X v‖ ^ 2 ≤ budget v)
    (hpaid : ∀ v, budget v ≤ observed v - error v) :
    ∀ v, 0 ≤ schur C d v := by
  apply schur_nonneg_of_trial C d X (fun v => observed v - error v) budget
  · intro v
    have h := (abs_le.mp (hobs v)).1
    linarith
  · exact hresidual
  · exact hpaid

/-- Optional scalarization. `mu` is a lower bound, not necessarily positive.
This is sufficient only; no equivalence with this budget is asserted. -/
theorem schur_nonneg_of_scalar_budget
    (C : V →L⋆[𝕜] StrongDual 𝕜 E) (d d0 e : V → ℝ)
    (mu epsilon error coupling : ℝ)
    (hsplit : ∀ v, d v = d0 v - e v + epsilon * ‖v‖ ^ 2)
    (hbase : ∀ v, mu * ‖v‖ ^ 2 ≤ d0 v)
    (herror : ∀ v, e v ≤ error * ‖v‖ ^ 2)
    (hcoupling : ∀ v, ‖correction C v‖ ^ 2 ≤ coupling * ‖v‖ ^ 2)
    (hpaid : error + coupling ≤ mu + epsilon) :
    ∀ v, 0 ≤ schur C d v := by
  intro v
  have hbudget := mul_le_mul_of_nonneg_right hpaid (sq_nonneg ‖v‖)
  unfold schur
  rw [hsplit]
  nlinarith [hbase v, herror v, hcoupling v]

end GRWTSK.FunctionalAnalysis.EnergySchur
