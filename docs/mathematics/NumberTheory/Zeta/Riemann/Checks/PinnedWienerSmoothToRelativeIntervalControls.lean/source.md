# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedWienerSmoothToRelativeIntervalControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1117a82c75489816511e948d7ff53689a73dec4f` · SHA-256 `f65ec2beafd9cf7ae5b8b3dd50a2a53022f221f672a1f66685591a662b7cf5d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedWienerSmoothToRelativeInterval
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedWienerSmoothToRelativeIntervalControls

open GRWTSK.RiemannHypothesis Set Filter MeasureTheory Finset

/-- Replay the exact half-open arithmetic interval at both CEILING
boundaries, including arbitrary positive noninteger real scale T. -/
theorem literal_ceil_index_iff
    {a b T : ℝ} (hT : 0 < T) (n : ℕ) :
    n ∈ Finset.Ico ⌈a * T⌉₊ ⌈b * T⌉₊ ↔
      ((n : ℝ) / T) ∈ Set.Ico a b :=
  smoothWiener_mem_Ico_ceil_iff hT n

/-- The RIGHT endpoint is excluded when it is exactly attained. -/
theorem exact_right_endpoint_excluded
    {a b T : ℝ} (hT : 0 < T) (n : ℕ)
    (hn : (n : ℝ) / T = b) :
    n ∉ Finset.Ico ⌈a * T⌉₊ ⌈b * T⌉₊ := by
  intro hmem
  have hreal := (smoothWiener_mem_Ico_ceil_iff hT n).mp hmem
  rw [hn] at hreal
  exact (lt_irrefl b) hreal.2

/-- The zero coefficient index cannot enter a positive half-open
interval, even when the real T is an arbitrary positive scale. -/
theorem zero_index_excluded_of_positive_left
    {a b T : ℝ} (ha : 0 < a) (hT : 0 < T) :
    (0 : ℕ) ∉ Finset.Ico ⌈a * T⌉₊ ⌈b * T⌉₊ := by
  intro hmem
  have hreal := (smoothWiener_mem_Ico_ceil_iff hT 0).mp hmem
  simp only [Nat.cast_zero, zero_div] at hreal
  linarith [hreal.1]

/-- The historical infinite indicator expression really is the finite
arithmetic Ico with the same endpoint convention. -/
theorem actual_lambda_indicator_tsum_is_finite_window
    {a b T : ℝ} (hT : 0 < T) :
    (∑' n : ℕ,
      pinnedTauberianLambda n *
        (Set.Ico a b).indicator
          (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) =
      ∑ n ∈ Finset.Ico ⌈a * T⌉₊ ⌈b * T⌉₊,
        pinnedTauberianLambda n :=
  smoothWiener_tsum_indicator_eq_interval pinnedTauberianLambda hT

/-- Positivity and summability are sourced, not guessed from an
infinite-sum inequality. -/
theorem actual_lambda_smooth_weight_summable
    {φ : ℝ → ℝ} (hφ : HasCompactSupport φ)
    {T : ℝ} (hT : 0 < T) :
    Summable
      (fun n : ℕ =>
        pinnedTauberianLambda n * φ ((n : ℝ) / T)) :=
  smoothWiener_weight_summable pinnedTauberianLambda hφ hT

/-- Actual source proof of the conditional interval conclusion.
The missing Fourier WI limit is passed explicitly as a premise. -/
theorem actual_lambda_relativeWindow_of_smoothWiener
    (hSmooth : PinnedVonMangoldtSmoothWienerLimit) :
    PinnedVonMangoldtRelativeIntervalLimits :=
  pinnedVonMangoldt_relativeWindows_of_smoothWiener hSmooth

/-- Consume the previous genuinely sourced interval-to-full Tauberian
theorem, without inventing the Fourier/smooth-test input. -/
theorem actual_lambda_weakPNT_of_smoothWiener
    (hSmooth : PinnedVonMangoldtSmoothWienerLimit) :
    Tendsto
      (fun N : ℕ =>
        pinnedVonMangoldtRangeSum N / (N : ℝ))
      atTop (nhds (1 : ℝ)) :=
  pinnedVonMangoldtWeakPNT_of_intervalLimits
    (pinnedVonMangoldt_relativeWindows_of_smoothWiener hSmooth)

/-- A hostile counterexample: a zero sequence cannot satisfy a
nonzero-residue smoothed Wiener test theorem. This tests that the
integral of a TRUE positive smooth bracket is nonzero. -/
theorem zero_sequence_rejects_unit_smoothTestLimit :
    ¬ SmoothUnitResidueWienerTestLimit (fun _ : ℕ => (0 : ℝ)) := by
  intro hSmooth
  obtain ⟨lo, hi, hlosmooth, hhismooth,
    hloCompact, hhiCompact, hloAway, hhiAway,
    hpoint, hloMass, hhiMass⟩ :=
    pinnedSmoothIntervalBrackets_exists
      (a := (1 : ℝ) / 2) (b := 1) (η := (1 : ℝ) / 8)
      (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num)
  have hmassPos : 0 <
      ∫ t in Set.Ioi (0 : ℝ), lo t := by
    linarith [hloMass]
  have hwrong :
      Tendsto (fun _ : ℝ => (0 : ℝ))
        atTop (nhds (∫ t in Set.Ioi (0 : ℝ), lo t)) := by
    simpa using hSmooth lo hlosmooth hloCompact hloAway
  have htrue :
      Tendsto (fun _ : ℝ => (0 : ℝ))
        atTop (nhds (0 : ℝ)) :=
    tendsto_const_nhds
  have hident := tendsto_nhds_unique hwrong htrue
  linarith

/-- Exactly the unresolved proof-bearing source, not another
unquantified arithmetic premise. -/
def remainingSmoothWienerProofObligations : List String :=
  ["port/prove genuine smoothed Wiener-Ikehara theorem for all pinned test functions",
   "derive its Mellin/Fourier limit from the historical Schwartz transform and pinned q=1 auxiliary",
   "verify real/complex coefficient normalization, Fourier factors and pole residue",
   "replay every new Lean theorem and the prior smooth Urysohn bracket source at the exact pin",
   "obtain source-bound dependency/axiom closure receipt under trust issue #100"]

/-- Hostile controls: descriptions are not proof constructors. -/
def prohibitedPromotions : List String :=
  ["positive compact support -> automatic smooth Wiener limit",
   "tsum arbitrary coefficient weights -> finite sum without support control",
   "closed Icc or open Ioo -> actual half-open Ico interval without endpoint proof",
   "a smooth bracket at fixed eta -> interval limit without eta tending to zero",
   "arithmetic lambda positivity -> smooth-test convergence",
   "source-defined smooth-test limit proposition -> proof term inhabiting it",
   "conditional weak PNT from smooth test -> unconditional weak PNT",
   "cross-version Fourier source label -> pinned kernel replay",
   "negative fixed psi capacity audit -> proof of RH",
   "successful GitHub commit -> accepted Lean elaboration and trusted axiom closure"]

end GRWTSK.RiemannHypothesis.Checks.PinnedWienerSmoothToRelativeIntervalControls
```
