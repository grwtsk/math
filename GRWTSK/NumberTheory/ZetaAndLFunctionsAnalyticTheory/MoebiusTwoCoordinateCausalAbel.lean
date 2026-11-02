/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusQuantitativeMertensEulerPrefix
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleDoubleAbelAnalyticGates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleCausalPhysicalGramIntegrability
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

/-!
# Both-coordinate source-exact causal Abel on signed Möbius rectangles

One signed finite Abel sum controls the actual causal response in each
independent original integer coordinate BEFORE multiplying them.
Finite double integral interchange then returns the literal
original Möbius Gram, retaining all RR/RM/MR/MM signs and ordered pairs.

The quantitative input is the explicit classical Mertens quotient
envelope together with the separately named elementary finite Euler
cost \`FiniteSmoothEulerSplit\`. Both hypotheses are visible.
The resulting finite theorem is true for arbitrary finite P and
arbitrary source rectangles with 1 <= X < U, 1 <= Y < V.
No all-positive-rate RH estimate is inferred here.
-/

namespace GRWTSK.NumberTheory.Moebius.TwoCoordinateCausalAbel

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates
open GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.QuantitativeMertensEulerPrefix

/-- Mask of original coefficients only ABOVE X, kept in range
form to apply the pinned Mathlib Abel theorem without a
spurious lower endpoint. -/
private def upperCoefficient (X : ℕ) (c : ℕ → ℝ) (n : ℕ) : ℝ :=
  if X < n then c n else 0

private theorem truncated_range_eq_Ioc
    (X U : ℕ) (c : ℕ → ℝ) :
    (∑ n ∈ Finset.range (U + 1), upperCoefficient X c n) =
      ∑ n ∈ Finset.Ioc X U, c n := by
  unfold upperCoefficient
  rw [← Finset.sum_filter]
  congr 1
  ext n
  simp only [Finset.mem_filter, Finset.mem_range, Finset.mem_Ioc]
  omega

private theorem empty_Ioc_of_le (X U : ℕ) (h : U ≤ X)
    (c : ℕ → ℝ) :
    (∑ n ∈ Finset.Ioc X U, c n) = 0 := by
  have he : Finset.Ioc X U = ∅ := by
    ext n
    simp only [Finset.mem_Ioc, Finset.not_mem_empty]
    omega
  simp [he]

/-- Exact source signed Abel identity, with the original lower
boundary X, terminal U and EVERY intermediate partial prefix. -/
theorem signed_Ioc_Abel_identity
    (X U : ℕ) (h : X < U) (c w : ℕ → ℝ) :
    (∑ n ∈ Finset.Ioc X U, c n * w n) =
      (∑ n ∈ Finset.Ioc X U, c n) * w U +
      ∑ k ∈ Finset.Ico (X + 1) U,
        (∑ n ∈ Finset.Ioc X k, c n) * (w k - w (k + 1)) := by
  let g : ℕ → ℝ := upperCoefficient X c
  have hparts :
      (∑ n ∈ Finset.range (U + 1), g n * w n) =
      (∑ n ∈ Finset.range (U + 1), g n) * w U -
        ∑ k ∈ Finset.range U,
          (∑ n ∈ Finset.range (k + 1), g n) *
            (w (k + 1) - w k) := by
    simpa only [smul_eq_mul, Nat.add_sub_cancel] using
      (Finset.sum_range_by_parts'
        (f := g) (g := w) (n := U + 1))
  have hleft :
      (∑ n ∈ Finset.range (U + 1), g n * w n) =
        ∑ n ∈ Finset.Ioc X U, c n * w n := by
    calc
      _ = ∑ n ∈ Finset.range (U + 1),
        upperCoefficient X (fun n => c n * w n) n := by
          apply Finset.sum_congr rfl
          intro n hn
          by_cases hx : X < n <;>
            simp [g, upperCoefficient, hx]
      _ = _ := truncated_range_eq_Ioc X U (fun n => c n * w n)
  have hprefix (k : ℕ) :
      (∑ n ∈ Finset.range (k + 1), g n) =
        ∑ n ∈ Finset.Ioc X k, c n :=
    truncated_range_eq_Ioc X k c
  have hrestrict :
      (∑ k ∈ Finset.range U,
        (∑ n ∈ Finset.Ioc X k, c n) *
          (w (k + 1) - w k)) =
      ∑ k ∈ Finset.Ico (X + 1) U,
        (∑ n ∈ Finset.Ioc X k, c n) *
          (w (k + 1) - w k) := by
    calc
      _ = ∑ k ∈ Finset.range U,
          if X < k then
            (∑ n ∈ Finset.Ioc X k, c n) * (w (k + 1) - w k)
          else 0 := by
            apply Finset.sum_congr rfl
            intro k hk
            by_cases hXk : X < k
            · simp [hXk]
            · have hz : (∑ n ∈ Finset.Ioc X k, c n) = 0 :=
                empty_Ioc_of_le X k (by omega) c
              simp [hXk, hz]
      _ = _ := by
        rw [← Finset.sum_filter]
        congr 1
        ext k
        simp only [Finset.mem_filter, Finset.mem_range, Finset.mem_Ico]
        omega
  rw [hleft, hprefix U] at hparts
  simp_rw [hprefix] at hparts
  rw [hrestrict] at hparts
  calc
    _ = (∑ n ∈ Finset.Ioc X U, c n) * w U -
        ∑ k ∈ Finset.Ico (X + 1) U,
          (∑ n ∈ Finset.Ioc X k, c n) *
            (w (k + 1) - w k) := hparts
    _ = _ := by
      rw [sub_eq_add_neg, ← Finset.sum_neg_distrib]
      apply congrArg (fun z => _ + z)
      apply Finset.sum_congr rfl
      intro k hk
      ring

/-- Telescoping of the EXACT finite response variation,
independent of any Möbius sign or asymptotic input. -/
private theorem telescope_Ico_response
    (w : ℕ → ℝ) (a b : ℕ) (h : a ≤ b) :
    (∑ k ∈ Finset.Ico a b, (w k - w (k + 1))) =
      w a - w b := by
  induction b with
  | zero =>
      have ha : a = 0 := by omega
      subst a
      simp
  | succ b ih =>
      by_cases hab : a ≤ b
      · rw [Finset.sum_Ico_succ_top hab, ih hab]
        ring
      · have ha : a = b + 1 := by omega
        subst a
        simp

/-- Finite two-sided signed Abel estimate: only a bound on
GENUINE signed prefixes and a nonnegative antitone weight.
All variation is paid exactly by the left birth response. -/
theorem signed_Ioc_weighted_abs_le
    (X U : ℕ) (h : X < U)
    (c w : ℕ → ℝ) (H : ℝ) (hH : 0 ≤ H)
    (hp : ∀ k ∈ Finset.Icc (X + 1) U,
      |∑ n ∈ Finset.Ioc X k, c n| ≤ H)
    (hw : 0 ≤ w U)
    (hmono : ∀ k ∈ Finset.Ico (X + 1) U,
      w (k + 1) ≤ w k) :
    |∑ n ∈ Finset.Ioc X U, c n * w n| ≤ H * w (X + 1) := by
  rw [signed_Ioc_Abel_identity X U h c w]
  have hterm :
      |(∑ n ∈ Finset.Ioc X U, c n) * w U| ≤ H * w U := by
    rw [abs_mul, abs_of_nonneg hw]
    exact mul_le_mul_of_nonneg_right
      (hp U (Finset.mem_Icc.mpr ⟨by omega, le_rfl⟩)) hw
  have hvariation :
      |∑ k ∈ Finset.Ico (X + 1) U,
        (∑ n ∈ Finset.Ioc X k, c n) * (w k - w (k + 1))| ≤
      H * ∑ k ∈ Finset.Ico (X + 1) U,
        (w k - w (k + 1)) := by
    calc
      _ ≤ ∑ k ∈ Finset.Ico (X + 1) U,
        |(∑ n ∈ Finset.Ioc X k, c n) *
          (w k - w (k + 1))| :=
          Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ k ∈ Finset.Ico (X + 1) U,
        H * (w k - w (k + 1)) := by
          apply Finset.sum_le_sum
          intro k hk
          have hnonneg : 0 ≤ w k - w (k + 1) :=
            sub_nonneg.mpr (hmono k hk)
          rw [abs_mul, abs_of_nonneg hnonneg]
          exact mul_le_mul_of_nonneg_right
            (hp k (Finset.mem_Icc.mpr
              ⟨(Finset.mem_Ico.mp hk).1, (Finset.mem_Ico.mp hk).2.le⟩))
            hnonneg
      _ = _ := (Finset.mul_sum).symm
  calc
    |(∑ n ∈ Finset.Ioc X U, c n) * w U +
      ∑ k ∈ Finset.Ico (X + 1) U,
        (∑ n ∈ Finset.Ioc X k, c n) *
          (w k - w (k + 1))| ≤
      |(∑ n ∈ Finset.Ioc X U, c n) * w U| +
        |∑ k ∈ Finset.Ico (X + 1) U,
          (∑ n ∈ Finset.Ioc X k, c n) *
            (w k - w (k + 1))| := abs_add_le _ _
    _ ≤ H * w U +
        H * ∑ k ∈ Finset.Ico (X + 1) U,
          (w k - w (k + 1)) :=
        add_le_add hterm hvariation
    _ = H * w (X + 1) := by
      rw [telescope_Ico_response w (X + 1) U (by omega)]
      ring

/-- The original source waveform on one EXACT integer interval.
No index reclassification, time smoothing or signed cancellation
is built into the definition. -/
def taggedIntervalWave (B : PrimeBand) (rough : Bool)
    (X U : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Ioc X U,
    taggedMoebius B.primes rough n * pickupResponse n u

/-- The entire terminal SOURCE Gram rectangle with TWO independent
signed arithmetic coordinates and every original ordered pair. -/
def taggedIntervalGram (B : PrimeBand) (a b : Bool)
    (X U Y V : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Ioc X U, ∑ n ∈ Finset.Ioc Y V,
    taggedMoebius B.primes a m * taggedMoebius B.primes b n *
      pickupResponseGram T m n

/-- A finite, bank-dependent source majorant derived from genuine
Mertens Euler endpoint costs. The maximum is over a concrete finite
integer range, not a free rate certificate. -/
def sourceAbelEulerBudget (B : PrimeBand) (A : ℕ) (C : ℝ)
    (rough : Bool) (X U : ℕ) (hXU : X ≤ U) : ℝ :=
  max 0 ((Finset.Icc X U).sup'
    ⟨X, Finset.mem_Icc.mpr ⟨le_rfl, hXU⟩⟩
    (fun k => taggedEulerCost B A C rough X +
      taggedEulerCost B A C rough k))

private theorem sourceAbelEulerBudget_nonneg
    (B : PrimeBand) (A : ℕ) (C : ℝ)
    (rough : Bool) (X U : ℕ) (h : X ≤ U) :
    0 ≤ sourceAbelEulerBudget B A C rough X U h := by
  unfold sourceAbelEulerBudget
  exact le_max_left _ _

private theorem sourceAbelEulerBudget_upper
    (B : PrimeBand) (A : ℕ) (C : ℝ)
    (rough : Bool) (X U : ℕ) (h : X ≤ U)
    (k : ℕ) (hk : k ∈ Finset.Icc X U) :
    taggedEulerCost B A C rough X +
      taggedEulerCost B A C rough k ≤
        sourceAbelEulerBudget B A C rough X U h := by
  unfold sourceAbelEulerBudget
  exact (Finset.le_sup' hk).trans (le_max_right _ _)

/-- One ORIGINAL causal response, now controlled by the
finite source Mertens-Euler signed-prefix budget. -/
theorem taggedIntervalWave_abs_le_sourceEuler
    (B : PrimeBand) (A : ℕ) (C : ℝ)
    (hM : QuotientMertensLogPower A C)
    (hEuler : FiniteSmoothEulerSplit B A C)
    (rough : Bool) (X U : ℕ)
    (hX : 1 ≤ X) (hXU : X < U) (u : ℝ) :
    |taggedIntervalWave B rough X U u| ≤
      sourceAbelEulerBudget B A C rough X U hXU.le *
        pickupResponse (X + 1) u := by
  unfold taggedIntervalWave
  apply signed_Ioc_weighted_abs_le X U hXU
    (taggedMoebius B.primes rough)
    (fun n => pickupResponse n u)
    (sourceAbelEulerBudget B A C rough X U hXU.le)
    (sourceAbelEulerBudget_nonneg B A C rough X U hXU.le)
  · intro k hk
    have hXk : X ≤ k := by
      have := (Finset.mem_Icc.mp hk).1
      omega
    have ht := tagged_interval_prefix_abs_le_Euler
      B A C hM hEuler rough X k hX hXk
    exact ht.trans (sourceAbelEulerBudget_upper B A C
      rough X U hXU.le k (by
        exact Finset.mem_Icc.mpr ⟨hXk, (Finset.mem_Icc.mp hk).2⟩))
  · exact pickupResponse_nonneg_positive U (by omega) u
  · intro k hk
    exact pickupResponse_antitone_positive k (by
      have hklo := (Finset.mem_Ico.mp hk).1
      omega) u

/-- Exact original causal double-sum integral. Both signed
orientations are kept and no unbounded interchange is performed. -/
theorem taggedIntervalGram_eq_integral_twoWaves
    (B : PrimeBand) (a b : Bool)
    (X U Y V : ℕ) (T : ℝ)
    (hX : 1 ≤ X) (hY : 1 ≤ Y) :
    taggedIntervalGram B a b X U Y V T =
      ∫ u in (0 : ℝ)..T,
        taggedIntervalWave B a X U u *
          taggedIntervalWave B b Y V u := by
  classical
  let I := Finset.Ioc X U
  let J := Finset.Ioc Y V
  let f : ℕ → ℕ → ℝ → ℝ :=
    fun m n u =>
      (taggedMoebius B.primes a m * pickupResponse m u) *
      (taggedMoebius B.primes b n * pickupResponse n u)
  have hInt : ∀ m ∈ I, ∀ n ∈ J,
      IntervalIntegrable (f m n) volume 0 T := by
    intro m hm n hn
    have hm0 : 0 < m := by
      have := (Finset.mem_Ioc.mp hm).1
      omega
    have hn0 : 0 < n := by
      have := (Finset.mem_Ioc.mp hn).1
      omega
    have hc :
        Continuous (f m n) :=
      ((continuous_const.mul (pickupResponse_continuous m hm0)).mul
        (continuous_const.mul (pickupResponse_continuous n hn0)))
    exact hc.intervalIntegrable 0 T
  have hDouble :
      (∫ u in (0 : ℝ)..T, ∑ m ∈ I, ∑ n ∈ J, f m n u) =
      ∑ m ∈ I, ∑ n ∈ J,
        ∫ u in (0 : ℝ)..T, f m n u := by
    have hOuter : ∀ m ∈ I,
        IntervalIntegrable (fun u => ∑ n ∈ J, f m n u)
          volume 0 T := by
      intro m hm
      exact IntervalIntegrable.sum J (fun n hn => hInt m hm n hn)
    rw [intervalIntegral.integral_finsetSum hOuter]
    apply Finset.sum_congr rfl
    intro m hm
    rw [intervalIntegral.integral_finsetSum (fun n hn => hInt m hm n hn)]
  have hExpand (u : ℝ) :
      taggedIntervalWave B a X U u *
        taggedIntervalWave B b Y V u =
      ∑ m ∈ I, ∑ n ∈ J, f m n u := by
    unfold taggedIntervalWave
    rw [Finset.sum_mul_sum]
    apply Finset.sum_congr rfl
    intro m hm
    apply Finset.sum_congr rfl
    intro n hn
    rfl
  unfold taggedIntervalGram
  calc
    (∑ m ∈ I, ∑ n ∈ J,
      taggedMoebius B.primes a m * taggedMoebius B.primes b n *
        pickupResponseGram T m n) =
      ∑ m ∈ I, ∑ n ∈ J,
        ∫ u in (0 : ℝ)..T, f m n u := by
          apply Finset.sum_congr rfl
          intro m hm
          apply Finset.sum_congr rfl
          intro n hn
          unfold f pickupResponseGram
          rw [intervalIntegral.integral_const_mul]
          congr 1
          funext u
          ring
    _ = (∫ u in (0 : ℝ)..T, ∑ m ∈ I, ∑ n ∈ J, f m n u) :=
      hDouble.symm
    _ = (∫ u in (0 : ℝ)..T,
      taggedIntervalWave B a X U u *
        taggedIntervalWave B b Y V u) := by
      apply intervalIntegral.integral_congr
      intro u hu
      exact (hExpand u).symm

/-- The true signed TWO-COORDINATE original Gram bound.
Both Mertens-Euler prefix inputs are paid before integrating;
there is no independence assumption and no changed kernel.
In particular both RM and MR orientations are covered.
-/
theorem taggedIntervalGram_abs_le_twoEulerAbel
    (B : PrimeBand) (A : ℕ) (C : ℝ)
    (hM : QuotientMertensLogPower A C)
    (hEuler : FiniteSmoothEulerSplit B A C)
    (a b : Bool) (X U Y V : ℕ) (T : ℝ)
    (hX : 1 ≤ X) (hY : 1 ≤ Y)
    (hXU : X < U) (hYV : Y < V)
    (hT : 0 ≤ T) :
    |taggedIntervalGram B a b X U Y V T| ≤
      (sourceAbelEulerBudget B A C a X U hXU.le *
        sourceAbelEulerBudget B A C b Y V hYV.le) *
          pickupResponseGram T (X + 1) (Y + 1) := by
  rw [taggedIntervalGram_eq_integral_twoWaves B a b X U Y V T hX hY]
  let HA := sourceAbelEulerBudget B A C a X U hXU.le
  let HB := sourceAbelEulerBudget B A C b Y V hYV.le
  have hHA : 0 ≤ HA :=
    sourceAbelEulerBudget_nonneg B A C a X U hXU.le
  have hHB : 0 ≤ HB :=
    sourceAbelEulerBudget_nonneg B A C b Y V hYV.le
  have hCont (rough : Bool) (L R : ℕ) (hL : 1 ≤ L) :
      Continuous (taggedIntervalWave B rough L R) := by
    unfold taggedIntervalWave
    apply continuous_finset_sum
    intro n hn
    have hn0 : 0 < n := by
      have := (Finset.mem_Ioc.mp hn).1
      omega
    exact continuous_const.mul (pickupResponse_continuous n hn0)
  have hIntSource : IntervalIntegrable
      (fun u : ℝ =>
        taggedIntervalWave B a X U u *
          taggedIntervalWave B b Y V u) volume 0 T :=
    ((hCont a X U hX).mul (hCont b Y V hY)).intervalIntegrable 0 T
  have hIntBound : IntervalIntegrable
      (fun u : ℝ =>
        (HA * HB) *
          (pickupResponse (X + 1) u * pickupResponse (Y + 1) u))
        volume 0 T :=
    (((pickupResponse_continuous (X + 1) (by omega)).mul
      (pickupResponse_continuous (Y + 1) (by omega))).const_mul
        (HA * HB)).intervalIntegrable 0 T
  calc
    |∫ u in (0 : ℝ)..T,
        taggedIntervalWave B a X U u *
          taggedIntervalWave B b Y V u| ≤
      ∫ u in (0 : ℝ)..T,
        |taggedIntervalWave B a X U u *
          taggedIntervalWave B b Y V u| :=
      intervalIntegral.abs_integral_le_integral_abs hT
    _ ≤ ∫ u in (0 : ℝ)..T,
        (HA * HB) *
          (pickupResponse (X + 1) u * pickupResponse (Y + 1) u) := by
        apply intervalIntegral.integral_mono_on hT
          hIntSource.abs hIntBound
        intro u hu
        have hWa := taggedIntervalWave_abs_le_sourceEuler
          B A C hM hEuler a X U hX hXU u
        have hWb := taggedIntervalWave_abs_le_sourceEuler
          B A C hM hEuler b Y V hY hYV u
        have hRa := pickupResponse_nonneg_positive (X + 1)
          (by omega) u
        have hRb := pickupResponse_nonneg_positive (Y + 1)
          (by omega) u
        rw [abs_mul]
        calc
          |taggedIntervalWave B a X U u| *
            |taggedIntervalWave B b Y V u| ≤
            (HA * pickupResponse (X + 1) u) *
            (HB * pickupResponse (Y + 1) u) := by
              exact mul_le_mul hWa hWb (abs_nonneg _)
                (mul_nonneg hHA hRa)
          _ = (HA * HB) *
            (pickupResponse (X + 1) u * pickupResponse (Y + 1) u) := by ring
    _ = (HA * HB) * pickupResponseGram T (X + 1) (Y + 1) := by
        rw [intervalIntegral.integral_const_mul]
        rfl


/-!
## Exact consumer return to the repository's PREEXISTING dyadic Gram

The original \`balancedBlock M T\` is \`(M,2M]\` filtered by
\`endpointIndex T\`. When the ORIGINAL upper index 2M is
present, the filter is redundant. The next two theorems prove
this source identity, then apply the existing two-coordinate
signed Mertens-Euler-Abel certificate to \`taggedRectangle\`
itself. This is NOT a substitute new kernel.
-/

open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII

/-- Original clipped dyadic inventory equals the literal
half-open integer interval only when its LAST original index
is inside the actual endpoint inventory. -/
theorem balancedBlock_eq_Ioc_of_upper_mem
    (X : ℕ) (T : ℝ) (hX : 1 ≤ X)
    (hUpper : 2 * X ∈ endpointIndex T) :
    balancedBlock X T = Finset.Ioc X (2 * X) := by
  unfold balancedBlock
    GRWTSK.NumberTheory.MoebiusPNTDyadicBilinearBlock.sourceBlock
  ext n
  simp only [Finset.mem_filter]
  constructor
  · intro hn
    exact hn.1
  · intro hn
    constructor
    · exact hn
    · have hlast : 2 * X ≤ ⌊Real.exp T⌋₊ :=
        (Finset.mem_Icc.mp hUpper).2
      have hnrange := Finset.mem_Ioc.mp hn
      unfold endpointIndex
      exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩

/-- The explicit two-interval Gram is IDENTICAL to the old
\`taggedRectangle\` when the original source cutoff contains
the two dyadic upper endpoints. Both mixed orientations,
squareful zeros, diagonal terms and original real-time Gram
are retained without a new source definition. -/
theorem original_taggedRectangle_eq_twoIntervalGram
    (B : PrimeBand) (a b : Bool)
    (M N : ℕ) (T : ℝ)
    (hM : 1 ≤ M) (hN : 1 ≤ N)
    (hMEnd : 2 * M ∈ endpointIndex T)
    (hNEnd : 2 * N ∈ endpointIndex T) :
    taggedRectangle B.primes a b M N T =
      taggedIntervalGram B a b M (2 * M) N (2 * N) T := by
  unfold taggedRectangle taggedIntervalGram
  rw [balancedBlock_eq_Ioc_of_upper_mem M T hM hMEnd,
      balancedBlock_eq_Ioc_of_upper_mem N T hN hNEnd]

/-- Direct consumer of the PREEXISTING original finite
two-variable tagged Gram. The only nontrivial hypotheses
are genuine independently known Mertens at actual quotients,
the explicit elementary finite Euler split, and actual
original cutoff membership. No new dense cancellation,
RH-equivalent premise or relabeling is used. -/
theorem original_taggedRectangle_abs_le_twoEulerAbel
    (B : PrimeBand) (A : ℕ) (C : ℝ)
    (hMertens : QuotientMertensLogPower A C)
    (hEuler : FiniteSmoothEulerSplit B A C)
    (a b : Bool) (M N : ℕ) (T : ℝ)
    (hM : 1 ≤ M) (hN : 1 ≤ N) (hT : 0 ≤ T)
    (hMEnd : 2 * M ∈ endpointIndex T)
    (hNEnd : 2 * N ∈ endpointIndex T) :
    |taggedRectangle B.primes a b M N T| ≤
      (sourceAbelEulerBudget B A C a M (2 * M) (by omega) *
       sourceAbelEulerBudget B A C b N (2 * N) (by omega)) *
        pickupResponseGram T (M + 1) (N + 1) := by
  have hmpos : M < 2 * M := by omega
  have hnpos : N < 2 * N := by omega
  rw [original_taggedRectangle_eq_twoIntervalGram
    B a b M N T hM hN hMEnd hNEnd]
  exact taggedIntervalGram_abs_le_twoEulerAbel
    B A C hMertens hEuler a b M (2 * M) N (2 * N) T
    hM hN hmpos hnpos hT

end GRWTSK.NumberTheory.Moebius.TwoCoordinateCausalAbel
