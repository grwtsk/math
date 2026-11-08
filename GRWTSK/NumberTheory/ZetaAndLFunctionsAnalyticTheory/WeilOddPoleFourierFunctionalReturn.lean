/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddPoleFourierTailCoefficients
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddModeDependentTail
import Mathlib.Tactic

/-!
# From literal pole Fourier coefficients to its whole odd L² functional

## First open source implication

The preceding file \`WeilOddPoleFourierTailCoefficients\` establishes
a coefficient-level square tail of the ORIGINAL odd zeta pole,
with exactly \`OddOutputTrace.sinePoleCoefficient T n\`. The consumer
\`OddHighPoleSectorReturn.HasHighPoleTailBudget\` instead demands
an inequality for every supported real odd L² test, with the
actual whole-line pole integral and physical Lebesgue mass.

The bridge below uses the pre-existing
\`OddModeDependentTail.highSine_pair_hasSum\` (the genuine
source-normalized bilinear Parseval theorem). To apply it, the source
pole is represented *on the same support* by the ACTUAL
\`s_T(t) = 1_[-T,T](t) sinh(t/2)\`, not an arbitrary fitted vector.
Its L² membership, pointwise oddness and support are proved.
Then \`sineCoefficient T s_T n\` is identified with the ORIGINAL
\`sinePoleCoefficient T n\` via the two source exponential moments
and \`OddPoleMoment.sinhMomentRow_eq_sinePoleCoefficient\`.
No new pole functional or normalization is assumed.

For g with the first N literal sine coefficients zero,
the exact bilinear Fourier return reads
  ell(g) = sum_(n>N) a_n(T) b_n(g).
The two square-series and elementary Cauchy--Schwarz imply
  ell(g)^2 <= (sum_(n>N) a_n^2)*(sum_(n>N) b_n^2).
Parseval identifies the second factor with the literal
\`physicalMass g\`; the previous source proves the first factor
is at most \`poleTailPrice T N\`, for T>0 and N>=1.
The actual source proposition \`HasHighPoleTailBudget T N g\`
is therefore a consequence, not a free field of a witness.

This result connects to the existing
\`high_sector_nonneg_of_paid_pole_tail\` and
\`dyadic_high_sector_nonneg_of_paid_pole_tail\`, discharging the
previously required htail condition on the original supported odd
L² gamma-energy domain. The original negative pole remains -2*ell²;
the prime part includes ALL source von Mangoldt prime powers,
and the archimedean kernel and exact Fourier normalization
are unchanged.

Boundary: N=0 is not covered by the 1/N tail. The positive
high-sector sign still says nothing about the low block or its
mixed Schur coupling. It does not supply all-window StageLower,
the completed zeta source/zero criterion, or any primitive
Dirichlet character sign. RH and Dirichlet GRH are not proved.

Mathematical comparison: continuous real L² orthogonal projection
and the standard l² Cauchy--Schwarz inequality. No novelty claim
is made for those principles. Primary Weil normalization:
Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, equations (3.19)--(3.20). The actual local
sources are OddSineParseval, OddPoleMoment, OddModeDependentTail
and OddPoleFourierTailCoefficients, with unchanged declarations.
AI-assisted Lean source candidate; no claim of native Lean/kernel
verification or independent analytic review.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddPoleFourierFunctionalReturn

open OddRootProjection OddSineParseval OddModeDependentTail OddPoleMoment
open OddSchurAccounting OddOutputTrace OddShiftEnergy
open OddPoleFourierTailCoefficients OddHighPoleSectorReturn
open OddLiteralCofinalMassFloor

/-- The exact support-truncated sinh pole vector. Its ambient carrier
is the same whole-line Lebesgue L² as the original odd Weil form. -/
def poleWindow (T : ℝ) (t : ℝ) : ℝ :=
  if t ∈ Icc (-T) T then Real.sinh (t / 2) else 0

private theorem poleWindow_measurable (T : ℝ) :
    Measurable (poleWindow T) := by
  unfold poleWindow
  exact Measurable.ite measurableSet_Icc (by fun_prop) measurable_const

/-- The actual pole vector belongs to L² for every finite support. -/
theorem poleWindow_memLp (T : ℝ) : MemLp (poleWindow T) 2 volume := by
  have hI : IntegrableOn (fun t : ℝ => Real.sinh (t/2)^2)
      (Icc (-T) T) :=
    (by fun_prop : Continuous (fun t : ℝ => Real.sinh (t/2)^2)).integrableOn_Icc
  have heq : (fun t : ℝ => (poleWindow T t)^2) =
      (Icc (-T) T).indicator (fun t : ℝ => Real.sinh (t/2)^2) := by
    funext t
    by_cases ht : t ∈ Icc (-T) T <;> simp [poleWindow, ht]
  have hInt : Integrable (fun t : ℝ => (poleWindow T t)^2) := by
    rw [heq]
    exact (integrable_indicator_iff measurableSet_Icc).2 hI
  exact (memLp_two_iff_integrable_sq
    (poleWindow_measurable T).aestronglyMeasurable).2 hInt

/-- Pointwise oddness is preserved by symmetric support truncation. -/
theorem poleWindow_odd (T : ℝ) : Function.Odd (poleWindow T) := by
  intro t
  have hmem : -t ∈ Icc (-T) T ↔ t ∈ Icc (-T) T := by
    constructor <;> intro h <;> exact ⟨by linarith [h.2], by linarith [h.1]⟩
  by_cases ht : t ∈ Icc (-T) T
  · have hneg : -t ∈ Icc (-T) T := hmem.mpr ht
    simp only [poleWindow, if_pos ht, if_pos hneg]
    rw [show (-t)/2 = -(t/2) by ring, Real.sinh_neg]
  · have hneg : -t ∉ Icc (-T) T := fun h => ht (hmem.mp h)
    simp [poleWindow, ht, hneg]

theorem poleWindow_support (T : ℝ) :
    ∀ᵐ t : ℝ, t ∉ Icc (-T) T → poleWindow T t = 0 :=
  Eventually.of_forall (fun t ht => by simp [poleWindow, ht])

/-- Integrability of the ACTUAL exponential sine moment on the same
support and the same real Lebesgue measure. -/
private theorem integrable_sine_exp (T a : ℝ) (n : ℕ) :
    Integrable (fun t : ℝ =>
      zeroExtendedSine T n t * Real.exp (a*t)) := by
  have heq :
      (fun t : ℝ => zeroExtendedSine T n t * Real.exp (a*t)) =
        (Icc (-T) T).indicator (fun t : ℝ =>
          (Real.sin (Real.pi * (n : ℝ) * t / T) /
            Real.sqrt T) * Real.exp (a*t)) := by
    funext t
    by_cases ht : t ∈ Icc (-T) T <;> simp [zeroExtendedSine, ht]
  rw [heq]
  exact (integrable_indicator_iff measurableSet_Icc).2
    ((by fun_prop : Continuous (fun t : ℝ =>
      (Real.sin (Real.pi * (n : ℝ) * t / T) /
        Real.sqrt T) * Real.exp (a*t))).integrableOn_Icc)

/-- Return a *literal* sine coefficient of the truncated sinh vector
to the existing source sine pole coefficient, without a new Fourier
normalization or a private analytic formula. -/
theorem poleWindow_sineCoefficient (T : ℝ) (hT : 0 < T)
    (n : ℕ) (hn : 0 < n) :
    sineCoefficient T (poleWindow T) n =
      sinePoleCoefficient T n := by
  have hplus := integrable_sine_exp T (1/2) n
  have hminus := integrable_sine_exp T (-1/2) n
  have hsource :
      (sinePoleMoment T (1/2) n - sinePoleMoment T (-1/2) n)/2 =
        sinePoleCoefficient T n := by
    let i : Fin n := ⟨n-1, by omega⟩
    have hi : i.val + 1 = n := by dsimp [i]; omega
    have h := OddPoleMoment.sinhMomentRow_eq_sinePoleCoefficient
      T hT (i := i)
    simpa only [OddSchurAccounting.sinhMomentRow, hi] using h
  calc
    sineCoefficient T (poleWindow T) n =
        ∫ t : ℝ, zeroExtendedSine T n t * Real.sinh (t/2) := by
          unfold sineCoefficient
          apply integral_congr_ae
          filter_upwards [] with t
          by_cases ht : t ∈ Icc (-T) T <;>
            simp [poleWindow, zeroExtendedSine, ht]
    _ = (sinePoleMoment T (1/2) n -
            sinePoleMoment T (-1/2) n)/2 := by
      unfold sinePoleMoment
      rw [← integral_sub hplus hminus, ← integral_div]
      apply integral_congr_ae
      filter_upwards [] with t
      rw [Real.sinh_eq]
      ring
    _ = _ := hsource

/-- On a supported test, pairing with the truncated sinh vector is
exactly the ORIGINAL odd zeta pole moment. -/
theorem poleWindow_pair_eq_moment (T : ℝ) {g : ℝ → ℝ}
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0) :
    (∫ t : ℝ, poleWindow T t * g t) = oddPoleMoment g := by
  unfold oddPoleMoment
  apply integral_congr_ae
  filter_upwards [hgs] with t ht
  by_cases hmem : t ∈ Icc (-T) T
  · simp only [poleWindow, if_pos hmem, mul_comm]
  · simp [poleWindow, hmem, ht hmem]

/-- Elementary infinite-sequence Cauchy--Schwarz, proved by taking
limits of the exact finite Cauchy--Schwarz inequality. No signed
term is discarded during the finite-to-infinite return. -/
private theorem sq_tsum_mul_le_tsum_sq_mul_tsum_sq (a b : ℕ → ℝ)
    (ha : Summable (fun j => (a j)^2))
    (hb : Summable (fun j => (b j)^2))
    (hab : Summable (fun j => a j * b j)) :
    (∑' j, a j * b j)^2 ≤
      (∑' j, (a j)^2) * (∑' j, (b j)^2) := by
  have hfinite (K : ℕ) :
      (∑ j ∈ Finset.range K, a j * b j)^2 ≤
        (∑ j ∈ Finset.range K, (a j)^2) *
          (∑ j ∈ Finset.range K, (b j)^2) :=
    Finset.sum_mul_sq_le_sq_mul_sq (Finset.range K) a b
  have hleft : Tendsto
      (fun K : ℕ => (∑ j ∈ Finset.range K, a j * b j)^2)
        atTop (nhds ((∑' j, a j * b j)^2)) :=
    (hab.hasSum.tendsto_sum_nat).pow 2
  have hright : Tendsto
      (fun K : ℕ =>
        (∑ j ∈ Finset.range K, (a j)^2) *
          (∑ j ∈ Finset.range K, (b j)^2))
      atTop
      (nhds ((∑' j, (a j)^2) * (∑' j, (b j)^2))) :=
    (ha.hasSum.tendsto_sum_nat).mul (hb.hasSum.tendsto_sum_nat)
  exact le_of_tendsto_of_tendsto' hleft hright hfinite

/-- All original physical hypotheses (including zero extension, the
actual odd Hilbert carrier and true sine coordinates) suffice to pay
the entire infinite sinh pole tail. The old abstract
HasHighPoleTailBudget is now a theorem CONCLUSION, not an assumption. -/
theorem highPoleTailBudget_of_source
    (T : ℝ) (hT : 0 < T) {N : ℕ} (hN : 0 < N)
    {g : ℝ → ℝ} (hg : MemLp g 2 volume)
    (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0)
    (hhead : ∀ n < N, sineCoefficient T g (n+1) = 0) :
    HasHighPoleTailBudget T N g := by
  let a : ℕ → ℝ := fun j => sinePoleCoefficient T (N+1+j)
  let b : ℕ → ℝ := fun j => sineCoefficient T g (N+1+j)
  have hPoles := sinePoleCoefficient_tail_summable_le T hT N hN
  have ha : Summable (fun j => (a j)^2) := hPoles.1
  have hmassSeries :
      HasSum (fun j => (b j)^2) (physicalMass g) := by
    have h := highSine_pair_hasSum T hT hg hg hgo hgo hgs hgs hhead
    simpa only [b, physicalMass, pow_two] using h
  have hpairs : HasSum (fun j => a j * b j) (oddPoleMoment g) := by
    have h := highSine_pair_hasSum T hT
      (poleWindow_memLp T) hg (poleWindow_odd T) hgo
      (poleWindow_support T) hgs hhead
    rw [poleWindow_pair_eq_moment T hgs] at h
    apply h.congr_fun
    intro j
    change (sineCoefficient T (poleWindow T) (N+1+j)) *
        sineCoefficient T g (N+1+j) = a j * b j
    rw [poleWindow_sineCoefficient T hT (N+1+j) (by omega)]
    rfl
  have hcs := sq_tsum_mul_le_tsum_sq_mul_tsum_sq
    a b ha hmassSeries.summable hpairs.summable
  rw [hpairs.tsum_eq, hmassSeries.tsum_eq] at hcs
  have htail : (∑' j, (a j)^2) ≤ poleTailPrice T N := hPoles.2
  have hmassNonneg : 0 ≤ physicalMass g :=
    integral_nonneg (fun t => sq_nonneg (g t))
  have hpaid : (∑' j, (a j)^2) * physicalMass g ≤
      poleTailPrice T N * physicalMass g :=
    mul_le_mul_of_nonneg_right htail hmassNonneg
  exact hcs.trans hpaid

/-- Direct consumer: the previously conditional high-sector result
now follows from the original Fourier and gamma-domain hypotheses,
with no freestanding pole-tail budget input. It DOES NOT establish
positivity of the low head, its Schur coupling or RH. -/
theorem high_sector_nonneg_of_literal_fourier
    (T β : ℝ) (hT : 0 < T) {N : ℕ}
    (hN : 0 < N)
    (hcut : highCutoff T β 4 1 ≤ N)
    (hsmall : 2 * poleTailPrice T N ≤ 1)
    {g : ℝ → ℝ} (hg : MemLp g 2 volume)
    (hgm : Measurable g) (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0)
    (hhead : ∀ n < N, sineCoefficient T g (n+1) = 0)
    (henergy : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy T β g := by
  exact high_sector_nonneg_of_paid_pole_tail
    T β hT hcut hsmall hg hgm hgo hgs hhead henergy
    (highPoleTailBudget_of_source T hT hN hg hgo hgs hhead)

/-- Every dyadic window now has a mathematically source-pinned,
explicit high-frequency positive sector, including the NEGATIVE
zeta pole. The infinite low block and its coupling are not covered. -/
theorem dyadic_high_sector_nonneg_of_literal_fourier
    (j : ℕ) {g : ℝ → ℝ}
    (hg : MemLp g 2 volume) (hgm : Measurable g)
    (hgo : Function.Odd g)
    (hgs : ∀ᵐ t : ℝ,
      t ∉ Icc (-((j : ℝ)+1)) ((j : ℝ)+1) → g t = 0)
    (hhead : ∀ n < dyadicHighPoleTailCutoff j,
      sineCoefficient ((j : ℝ)+1) g (n+1) = 0)
    (henergy : IntegrableOn
      (fun r => parityKernel 0 r * zeroShiftEnergy r g) (Ioi 0)) :
    0 ≤ shiftedOddWeilEnergy ((j : ℝ)+1)
        (-((1/2 : ℝ)^j)) g := by
  have hT : 0 < (j : ℝ)+1 := by positivity
  have hN : 0 < dyadicHighPoleTailCutoff j := by
    unfold dyadicHighPoleTailCutoff
    exact lt_of_lt_of_le (Nat.zero_lt_one.trans_le
      (le_max_left 1 (Nat.ceil
        ((8 * ((j : ℝ)+1) * (Real.sinh (((j : ℝ)+1)/2))^2)
          / Real.pi^2))))
      (le_max_right _ _)
  have hfloor :
      highCutoff ((j : ℝ)+1) (-((1/2 : ℝ)^j)) 4 1 ≤
        dyadicHighPoleTailCutoff j := le_max_left _ _
  have hprice :
      poleTailCutoff ((j : ℝ)+1) ≤ dyadicHighPoleTailCutoff j :=
    le_max_right _ _
  exact high_sector_nonneg_of_literal_fourier
    ((j : ℝ)+1) (-((1/2 : ℝ)^j)) hT hN hfloor
    (poleTailPrice_small_of_cutoff _ hprice)
    hg hgm hgo hgs hhead henergy

end GRWTSK.NumberTheory.WeilQuadraticForm.OddPoleFourierFunctionalReturn
