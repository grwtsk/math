/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionalAnalysis.ResidualBallCover
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDenseCertificateReduction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ResonanceDeterminantReturn
import Mathlib.Topology.MetricSpace.ProperSpace

/-!
# Cofinal residual-ball return to the existing primitive Dirichlet target

RP-OC-04, math issue #1800. Primary MSC2020: 11M26; secondary: 11M41, 47A10.
This uses Program 10's actual `PrimitiveDirichletSource` and
`PrimitiveDirichletGRH`, including the modulus-one zeta source. It does not
introduce a new GRH definition. That existing target is an open-strip statement;
no new equivalence with an outside-strip or completed-function target is asserted.

The compact windows exhaust EVERY off-critical point of the open strip, not
only a supplied zero list. Each window requires a finite cover of valid
full-operator residual balls. Center enclosures, variation bounds, determinant
nonvanishing and exact arithmetic return remain separate explicit suppliers.
The pole-cleared completion, conductor, gamma/parity and all prime-power terms
must be preserved by those suppliers; none is constructed or omitted here.

Source candidates: elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. See adjacent declaration-local provenance.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.ResonanceDeterminantReturn

open GRWTSK.FunctionalAnalysis.ResidualBallCover
open GRWTSK.NumberTheory.WeilDenseCertificateReduction

/-- Closed bounded windows separated from both strip edges and the critical line.
The multiplication formulation admits n=0 without a totalized division convention. -/
def offCriticalWindow (n : ℕ) : Set ℂ :=
  Metric.closedBall 0 (n : ℝ) ∩
    {s | 1 ≤ (n : ℝ) * s.re ∧ 1 ≤ (n : ℝ) * (1 - s.re) ∧
      1 ≤ (n : ℝ) * |s.re - (1 / 2 : ℝ)|}

/-- Compactness is established for the actual parameter windows. -/
theorem isCompact_offCriticalWindow (n : ℕ) : IsCompact (offCriticalWindow n) := by
  have hleft : IsClosed {s : ℂ | (1 : ℝ) ≤ (n : ℝ) * s.re} :=
    isClosed_le continuous_const (continuous_const.mul Complex.continuous_re)
  have hright : IsClosed {s : ℂ | (1 : ℝ) ≤ (n : ℝ) * (1 - s.re)} :=
    isClosed_le continuous_const
      (continuous_const.mul (continuous_const.sub Complex.continuous_re))
  have hgap : IsClosed {s : ℂ | (1 : ℝ) ≤ (n : ℝ) * |s.re - (1 / 2 : ℝ)|} :=
    isClosed_le continuous_const
      (continuous_const.mul ((Complex.continuous_re.sub continuous_const).abs))
  exact (ProperSpace.isCompact_closedBall (0 : ℂ) (n : ℝ)).inter_right
    (hleft.inter (hright.inter hgap))

/-- No window includes a strip edge or a critical-line point. -/
theorem offCriticalWindow_subset {n : ℕ} {s : ℂ} (hs : s ∈ offCriticalWindow n) :
    0 < s.re ∧ s.re < 1 ∧ s.re ≠ (1 / 2 : ℝ) := by
  obtain ⟨_, hleft, hright, hgap⟩ := hs
  have hL : 0 < s.re := by
    by_contra h
    have hbad := mul_nonpos_of_nonneg_of_nonpos (Nat.cast_nonneg n) (le_of_not_gt h)
    linarith
  have hR : s.re < 1 := by
    by_contra h
    have hnonpos : 1 - s.re ≤ 0 := by linarith
    have hbad := mul_nonpos_of_nonneg_of_nonpos (Nat.cast_nonneg n) hnonpos
    linarith
  refine ⟨hL, hR, ?_⟩
  intro heq
  simp only [heq, sub_self, abs_zero, mul_zero] at hgap
  norm_num at hgap

/-- These windows form a nested exhaustion, not unrelated finite observations. -/
theorem offCriticalWindow_mono {n m : ℕ} (hnm : n ≤ m) :
    offCriticalWindow n ⊆ offCriticalWindow m := by
  intro s hs
  have hstrip := offCriticalWindow_subset hs
  obtain ⟨hball, hleft, hright, hgap⟩ := hs
  have hcast : (n : ℝ) ≤ (m : ℝ) := by exact_mod_cast hnm
  refine ⟨?_, ?_, ?_, ?_⟩
  · exact (Metric.mem_closedBall.mp hball).trans hcast
  · exact hleft.trans (mul_le_mul_of_nonneg_right hcast hstrip.1.le)
  · exact hright.trans
      (mul_le_mul_of_nonneg_right hcast (sub_pos.mpr hstrip.2.1).le)
  · exact hgap.trans (mul_le_mul_of_nonneg_right hcast (abs_nonneg _))

/-- Every off-critical open-strip parameter lies in a finite-index window.
The proof uses only the Archimedean property, not information about zeros. -/
theorem exists_offCriticalWindow {s : ℂ} (hleft : 0 < s.re) (hright : s.re < 1)
    (hoff : s.re ≠ (1 / 2 : ℝ)) : ∃ n : ℕ, s ∈ offCriticalWindow n := by
  have hedge : 0 < 1 - s.re := sub_pos.mpr hright
  have hgap : 0 < |s.re - (1 / 2 : ℝ)| := abs_pos.mpr (sub_ne_zero.mpr hoff)
  have hnorm := norm_nonneg s
  have hL := (one_div_pos.mpr hleft).le
  have hR := (one_div_pos.mpr hedge).le
  have hG := (one_div_pos.mpr hgap).le
  obtain ⟨n, hn⟩ := exists_nat_gt
    (‖s‖ + 1 / s.re + 1 / (1 - s.re) + 1 / |s.re - (1 / 2 : ℝ)|)
  have bL : 1 / s.re < (n : ℝ) := by linarith
  have bR : 1 / (1 - s.re) < (n : ℝ) := by linarith
  have bG : 1 / |s.re - (1 / 2 : ℝ)| < (n : ℝ) := by linarith
  refine ⟨n, ?_, ((div_lt_iff₀ hleft).mp bL).le,
    ((div_lt_iff₀ hedge).mp bR).le, ((div_lt_iff₀ hgap).mp bG).le⟩
  rw [Metric.mem_closedBall, dist_zero_right]
  linarith

section ArithmeticReturn

variable {A : Type*} [NormedRing A] [CompleteSpace A]

/-- Return finite parameter covers to the unchanged per-source target.
The arithmetic family and its determinant theorem are still required inputs. -/
theorem satisfiesGRH_of_residual_ball_covers
    (source : PrimitiveDirichletSource) (K : ℂ → A)
    (U : Set ℂ) (D h F : ℂ → ℂ)
    (cells : ℕ → Finset (ResidualBall (fun s => 1 - K s)))
    (hsource : ∀ s : ℂ, 0 < s.re → s.re < 1 → source.lFunction s = 0 →
      s ∈ U ∧ F s = 0)
    (hret : ExactReturnOn U D h F)
    (hdet : ∀ s ∈ U, IsUnit (1 - K s) → D s ≠ 0)
    (hcover : ∀ (n : ℕ) (s : ℂ), s ∈ offCriticalWindow n →
      ∃ C ∈ cells n, s ∈ Metric.closedBall C.center C.radius) : source.SatisfiesGRH := by
  intro s hleft hright hzero
  by_contra hoff
  obtain ⟨n, hn⟩ := exists_offCriticalWindow hleft hright hoff
  obtain ⟨C, _, hC⟩ := hcover n s hn
  obtain ⟨hsU, hsF⟩ := hsource s hleft hright hzero
  exact hdet s hsU (C.isUnit hC) ((zero_iff_of_exactReturnOn hret hsU).mpr hsF)

end ArithmeticReturn

/-- Quantify over every primitive character, allowing source-dependent operator
spaces. Modulus one is inherited from the existing target without a special exclusion.
This is a conditional consumer, not an arithmetic certificate producer. -/
theorem primitiveGRH_of_residual_ball_covers
    (A : PrimitiveDirichletSource → Type*)
    [∀ source, NormedRing (A source)] [∀ source, CompleteSpace (A source)]
    (K : ∀ source, ℂ → A source)
    (U : PrimitiveDirichletSource → Set ℂ)
    (D h F : PrimitiveDirichletSource → ℂ → ℂ)
    (cells : ∀ source, ℕ → Finset (ResidualBall (fun s => 1 - K source s)))
    (hsource : ∀ (source : PrimitiveDirichletSource) (s : ℂ),
      0 < s.re → s.re < 1 → source.lFunction s = 0 → s ∈ U source ∧ F source s = 0)
    (hret : ∀ source, ExactReturnOn (U source) (D source) (h source) (F source))
    (hdet : ∀ source s, s ∈ U source → IsUnit (1 - K source s) → D source s ≠ 0)
    (hcover : ∀ (source : PrimitiveDirichletSource) (n : ℕ) (s : ℂ),
      s ∈ offCriticalWindow n →
      ∃ C ∈ cells source n, s ∈ Metric.closedBall C.center C.radius) :
    PrimitiveDirichletGRH := by
  intro source
  exact satisfiesGRH_of_residual_ball_covers source (K source) (U source)
    (D source) (h source) (F source) (cells source) (hsource source)
    (hret source) (hdet source) (hcover source)


/-! ## Exact synthetic controls (not arithmetic L-functions) -/

/-- A concrete valid cell for the scalar family 1-z, rather than an assumed cover. -/
def scalarResidualBall : ResidualBall (fun z : ℂ => 1 - z) where
  center := 0
  radius := 1 / 4
  radius_pos := by norm_num
  approximation := 1
  preconditioner := 1
  error := 0
  error_nonneg := le_rfl
  slope := 1
  slope_nonneg := by norm_num
  center_error := by simp
  variation := by
    intro z hz
    have hid : (1 - z) - (1 - (0 : ℂ)) = -z := by ring
    simpa only [hid, norm_neg, one_mul, dist_zero_right] using
      (le_rfl : ‖z‖ ≤ ‖z‖)
  left_margin := by norm_num
  right_margin := by norm_num

/-- An exact ball certificate produces the numerical inverse bound 4/3. -/
theorem scalar_inverse_bound {z : ℂ} (hz : ‖z‖ ≤ 1 / 4) :
    ∃ b : ℂ, (1 - z) * b = 1 ∧ b * (1 - z) = 1 ∧ ‖b‖ ≤ 4 / 3 := by
  have h := scalarResidualBall.exists_inverse_bound
    (x := z) (by simpa [scalarResidualBall, Metric.mem_closedBall] using hz)
  norm_num [scalarResidualBall, ResidualBall.inverseBound, ResidualBall.totalError] at h
  exact h

/-- At radius one the same scalar family reaches a singular point.
A strict residual margin cannot be weakened to a non-strict one. -/
theorem scalar_singular_boundary :
    ‖(1 : ℂ)‖ = 1 ∧ ¬ IsUnit ((1 : ℂ) - 1) := by
  norm_num

end GRWTSK.ResonanceDeterminantReturn
