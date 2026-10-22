/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Historical Wiener-Ikehara argument: Alex Kontorovich, Terry Tao and
Prime Number Theorem + Project collaborators.
Upstream Mathlib and PNTAnd retain their original authorship/licensing. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtModOneAnalyticInputs
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Topology.MetricSpace.Basic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Genuine last-mile Tauberian step: relative intervals to full cumsum

A completed positive-coefficient Wiener-Ikehara proof traditionally first
controls relative integer windows [ceil(delta N), N), then passes from
the windows to the full normalized sum.

The latter is an ELEMENTARY theorem but not a definitional wrapper:
the deleted initial interval depends on N, and its normalized size
must tend to zero uniformly as the fixed ratio delta tends to zero.
This module proves the epsilon-squeeze using the actual Chebyshev
O(N) bound and the exact ceiling cutoff.

We do NOT assume or prove the relative interval-limit theorem itself.
It is the still-independent analytic/Fourier supplier from the
historical WienerIkeharaInterval_discrete' source.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
RELATIVE_WINDOW_TO_FULL_TAUBERIAN_SOURCE_DEFINED /
ACTUAL_PINNED_LAMBDA_CONSUMER_DEFINED /
INTERVAL_WIENER_IKEHARA_PROOF_PORT_OPEN /
NO_PNT_OR_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Finset

/-- Exact input of the historical discrete relative-interval stage:
the right endpoint N is EXCLUDED and the left is ceiling(delta*N).
The limit is taken as the integer N tends to infinity. -/
def TauberianRelativeWindowLimits
    (f : ℕ → ℝ) (A : ℝ) : Prop :=
  ∀ δ : ℝ, 0 < δ → δ < 1 →
    Tendsto
      (fun N : ℕ =>
        (∑ n ∈ Finset.Ico ⌈δ * (N : ℝ)⌉₊ N, f n) / (N : ℝ))
      atTop (nhds (A * (1 - δ)))

/-- Elementary exact finite partition.  The cutoff must be ≤N; this
side condition is explicitly constructed eventually below. -/
theorem tauberian_relative_window_exact_partition
    (f : ℕ → ℝ) {k N : ℕ} (hk : k ≤ N) :
    (∑ n ∈ Finset.range N, f n) =
      (∑ n ∈ Finset.range k, f n) +
      (∑ n ∈ Finset.Ico k N, f n) := by
  exact Finset.sum_range_add_sum_Ico f hk

/-- A true finite bound on the omitted prefix, not an appeal to a
limsup or an undefined asymptotic error term. -/
theorem tauberian_omitted_prefix_le
    (f : ℕ → ℝ) (C : ℝ)
    (hC : 0 ≤ C)
    (hprefix : ∀ N : ℕ,
      (∑ n ∈ Finset.range N, f n) ≤ C * (N : ℝ))
    {k N : ℕ} (hN : 0 < N) :
    (∑ n ∈ Finset.range k, f n) / (N : ℝ) ≤
      C * ((k : ℝ) / (N : ℝ)) := by
  have hNr : (0 : ℝ) < (N : ℝ) := by exact_mod_cast hN
  calc
    (∑ n ∈ Finset.range k, f n) / (N : ℝ)
        ≤ (C * (k : ℝ)) / (N : ℝ) :=
      div_le_div_of_nonneg_right (hprefix k) hNr.le
    _ = C * ((k : ℝ) / (N : ℝ)) := by ring

/-- The authentic last-mile Tauberian theorem: relative interval limits
for ALL sufficiently small fixed positive delta, + nonnegative f and
a fixed linear prefix bound, imply full normalized cumulative limit.

No local PNT theorem or external Wiener-Ikehara proof is invoked.
The Chebyshev bound is used only to control a shrinking initial prefix.
-/
theorem tauberian_relativeWindows_to_fullCumulative
    (f : ℕ → ℝ) (A C : ℝ)
    (hC : 0 ≤ C)
    (hf : ∀ n : ℕ, 0 ≤ f n)
    (hprefix : ∀ N : ℕ,
      (∑ n ∈ Finset.range N, f n) ≤ C * (N : ℝ))
    (hwindows : TauberianRelativeWindowLimits f A) :
    Tendsto
      (fun N : ℕ => (∑ n ∈ Finset.range N, f n) / (N : ℝ))
      atTop (nhds A) := by
  apply Metric.tendsto_atTop.mpr
  intro ε hε
  let H : ℝ := C + |A| + 1
  have hH : 0 < H := by
    dsimp [H]
    linarith [abs_nonneg A]
  let δ : ℝ := min (1 / 4) (ε / (8 * H))
  have hδpos : 0 < δ := by
    dsimp [δ]
    apply lt_min
    · norm_num
    · exact div_pos hε (mul_pos (by norm_num) hH)
  have hδquarter : δ ≤ (1 : ℝ) / 4 := by
    dsimp [δ]
    exact min_le_left _ _
  have hδcost : δ ≤ ε / (8 * H) := by
    dsimp [δ]
    exact min_le_right _ _
  have hδlt1 : δ < 1 := by linarith
  have hApos : 0 ≤ |A| := abs_nonneg A
  have hcostCoefficient :
      2 * C + |A| ≤ 2 * H := by
    dsimp [H]
    linarith
  have hcost :
      (2 * C + |A|) * δ ≤ ε / 4 := by
    calc
      (2 * C + |A|) * δ
          ≤ (2 * H) * δ :=
        mul_le_mul_of_nonneg_right hcostCoefficient hδpos.le
      _ ≤ (2 * H) * (ε / (8 * H)) :=
        mul_le_mul_of_nonneg_left hδcost (by positivity)
      _ = ε / 4 := by
        field_simp
        ring
  obtain ⟨Nw, hNw⟩ :=
    (Metric.tendsto_atTop.mp
      (hwindows δ hδpos hδlt1))
      (ε / 2) (half_pos hε)
  have hceil :
      Tendsto
        (fun N : ℕ =>
          ((⌈δ * (N : ℝ)⌉₊ : ℝ) / (N : ℝ)))
        atTop (nhds δ) := by
    simpa only [Function.comp_def] using
      (tendsto_nat_ceil_mul_div_atTop hδpos.le).comp
        tendsto_natCast_atTop_atTop
  obtain ⟨Nk, hNk⟩ :=
    (Metric.tendsto_atTop.mp hceil)
      δ hδpos
  refine ⟨max (max Nw Nk) 1, ?_⟩
  intro N hNlarge
  have hNw' : Nw ≤ N := by omega
  have hNk' : Nk ≤ N := by omega
  have hNpos : 0 < N := by omega
  have hNr : (0 : ℝ) < (N : ℝ) := by exact_mod_cast hNpos
  let k : ℕ := ⌈δ * (N : ℝ)⌉₊
  have hceilClose :
      |(k : ℝ) / (N : ℝ) - δ| < δ := by
    simpa only [Real.dist_eq, k] using hNk N hNk'
  have hceilRatio :
      (k : ℝ) / (N : ℝ) ≤ 2 * δ := by
    have hright := (abs_lt.mp hceilClose).2
    linarith
  have hcutoff : k ≤ N := by
    have hratioOne : (k : ℝ) / (N : ℝ) < 1 := by
      linarith
    have hkr : (k : ℝ) < (N : ℝ) := by
      have h := (div_lt_iff₀ hNr).mp hratioOne
      simpa using h
    exact_mod_cast hkr.le
  let early : ℝ :=
    (∑ n ∈ Finset.range k, f n) / (N : ℝ)
  let window : ℝ :=
    (∑ n ∈ Finset.Ico k N, f n) / (N : ℝ)
  have hwindowClose :
      |window - A * (1 - δ)| < ε / 2 := by
    simpa [window, k, Real.dist_eq] using hNw N hNw'
  have hearlyPos : 0 ≤ early := by
    dsimp [early]
    exact div_nonneg (Finset.sum_nonneg fun n _ => hf n) hNr.le
  have hearlyLe : early ≤ 2 * C * δ := by
    calc
      early ≤ C * ((k : ℝ) / (N : ℝ)) := by
        dsimp [early]
        exact tauberian_omitted_prefix_le f C hC hprefix hNpos
      _ ≤ C * (2 * δ) :=
        mul_le_mul_of_nonneg_left hceilRatio hC
      _ = 2 * C * δ := by ring
  have hfull :
      (∑ n ∈ Finset.range N, f n) / (N : ℝ) =
        early + window := by
    rw [tauberian_relative_window_exact_partition f hcutoff]
    simp [early, window, add_div]
  have hearlyAbs :
      |early - A * δ| ≤ early + |A| * δ := by
    calc
      |early - A * δ| ≤ |early| + |A * δ| := abs_sub _ _
      _ = early + |A| * δ := by
        rw [abs_of_nonneg hearlyPos, abs_mul,
          abs_of_nonneg hδpos.le]
  have herror :
      |(∑ n ∈ Finset.range N, f n) / (N : ℝ) - A| <
        ε := by
    rw [hfull]
    have hid :
        early + window - A =
          (window - A * (1 - δ)) +
            (early - A * δ) := by ring
    rw [hid]
    calc
      |(window - A * (1 - δ)) + (early - A * δ)|
          ≤ |window - A * (1 - δ)| +
              |early - A * δ| := abs_add _ _
      _ ≤ |window - A * (1 - δ)| +
              (early + |A| * δ) :=
        add_le_add_left hearlyAbs _
      _ < ε / 2 + (early + |A| * δ) :=
        add_lt_add_right hwindowClose _
      _ ≤ ε / 2 + ((2 * C + |A|) * δ) := by
        linarith [hearlyLe]
      _ ≤ ε / 2 + ε / 4 :=
        add_le_add_left hcost _
      _ < ε := by linarith
  simpa only [Real.dist_eq] using herror

/-- The sole missing analytic source for the historical von Mangoldt
application is now the relative INTERVAL limit.  It is not silently
constructed from boundary continuation or the input profile. -/
def PinnedVonMangoldtRelativeIntervalLimits : Prop :=
  TauberianRelativeWindowLimits pinnedTauberianLambda 1

/-- The actual pinned Λ application: all arithmetic inputs are supplied
unconditionally, but the interval-limit theorem remains explicit. -/
theorem pinnedVonMangoldtWeakPNT_of_intervalLimits
    (hinterval : PinnedVonMangoldtRelativeIntervalLimits) :
    Tendsto
      (fun N : ℕ =>
        pinnedVonMangoldtRangeSum N / (N : ℝ))
      atTop (nhds (1 : ℝ)) := by
  have hC : 0 ≤ Real.log 4 + 4 := by
    have hlog : 0 ≤ Real.log (4 : ℝ) :=
      Real.log_nonneg (by norm_num)
    linarith
  have hprefix :
      ∀ N : ℕ,
        (∑ n ∈ Finset.range N, pinnedTauberianLambda n) ≤
          (Real.log 4 + 4) * (N : ℝ) := by
    intro N
    simpa [pinnedTauberianLambda,
      ← pinnedVonMangoldtRangeNorm_eq_sum] using
      pinnedVonMangoldtRangeNorm_le_chebyshev N
  have h :=
    tauberian_relativeWindows_to_fullCumulative
      pinnedTauberianLambda 1 (Real.log 4 + 4)
      hC
      (fun n =>
        ArithmeticFunction.vonMangoldt_nonneg (n := n))
      hprefix hinterval
  simpa [pinnedVonMangoldtRangeSum, pinnedTauberianLambda] using h

end GRWTSK.RiemannHypothesis
