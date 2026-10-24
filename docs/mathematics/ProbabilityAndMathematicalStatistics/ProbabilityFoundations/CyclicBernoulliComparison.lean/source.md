# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.CyclicBernoulliComparison

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a4be79226cbaf3133038e1c2564a076e1be8bbd` · SHA-256 `70acaef79ce95efe0cdd22a68886dc3ae863bc0e567b265cc78a7191f410b195`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib and existing GRWTSK sources retain their original credits.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#685; direct parent #675 / draft PR #680.
-/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshBernoulliTV
import Mathlib

/-!
# Exact event-law identification and finite cyclic-to-Bernoulli comparison

The existing root-labeled boundary module defines empirical event probability
by counting original roots. The Walsh-to-Bernoulli module defines event
discrepancy by summing complete empirical pattern frequencies. These two
interfaces are NOT identified by definitional equality.

This module derives that identification from the exact product of coordinate
equality indicators, finite root/pattern Fubini, and rational-to-real casts.

Only after this match does an all-event triangle inequality compose the
already-drafted ordinary/cyclic source boundary with the fair-Bernoulli
comparison. The final theorem is **finite** and applies to ANY binary source.

No Liouville or Mobius correlation cancellation, Bernoulli limit, sofic
ergodicity, spectral universality, zeta-zero statement, or RH result is
assumed or proved. No theorem here has been kernel elaborated/audited.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.CyclicBernoulli

open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.BoundaryTV
open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.CyclicSeam
open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.WalshEnergy
open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.BernoulliTV
open scoped BigOperators

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- The complete coordinate-match product is the indicator of equality
of the two **entire** Boolean patterns; no coordinate is omitted. -/
theorem fullPattern_match_indicator
    (x : ℕ → ι → Bool) (n : ℕ) (a : ι → Bool) :
    (∏ i : ι, if x n i = a i then (1 : ℚ) else 0) =
      if x n = a then 1 else 0 := by
  classical
  simp only [Fintype.prod_boole, funext_iff]

/-- The inherited pattern count on all coordinates is the exact number
of roots with the complete indicated pattern. -/
theorem patternCountOn_univ_eq_count
    (roots : Finset ℕ) (x : ℕ → ι → Bool) (a : ι → Bool) :
    patternCountOn roots (Finset.univ : Finset ι) x a =
      ∑ n ∈ roots, if x n = a then (1 : ℚ) else 0 := by
  classical
  unfold patternCountOn
  apply Finset.sum_congr rfl
  intro n hn
  exact fullPattern_match_indicator x n a

/-- Finite Fubini over all patterns and original roots. This proves that
summing empirical singleton-pattern counts inside an event gives the
ordinary rooted event count, without treating the uniform law as a sample. -/
theorem sum_patternCountOn_event_eq_rootCount
    (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (event : (ι → Bool) → Bool) :
    (∑ a : ι → Bool,
      if event a then
        patternCountOn roots (Finset.univ : Finset ι) x a
      else (0 : ℚ)) =
      ∑ n ∈ roots, if event (x n) then (1 : ℚ) else 0 := by
  classical
  simp_rw [patternCountOn_univ_eq_count]
  calc
    (∑ a : ι → Bool,
      if event a then
        (∑ n ∈ roots, if x n = a then (1 : ℚ) else 0)
      else 0) =
      ∑ a : ι → Bool, ∑ n ∈ roots,
        if event a then (if x n = a then (1 : ℚ) else 0) else 0 := by
        apply Finset.sum_congr rfl
        intro a ha
        by_cases he : event a <;> simp [he]
    _ = ∑ n ∈ roots, ∑ a : ι → Bool,
        if event a then (if x n = a then (1 : ℚ) else 0) else 0 := by
        rw [Finset.sum_comm]
    _ = ∑ n ∈ roots, if event (x n) then (1 : ℚ) else 0 := by
        apply Finset.sum_congr rfl
        intro n hn
        calc
          (∑ a : ι → Bool,
            if event a then (if x n = a then (1 : ℚ) else 0) else 0) =
            ∑ a : ι → Bool,
              if a = x n then (if event a then (1 : ℚ) else 0) else 0 := by
              apply Finset.sum_congr rfl
              intro a ha
              by_cases heq : a = x n <;> simp [heq, eq_comm]
          _ = if event (x n) then (1 : ℚ) else 0 := by
              simp [Finset.sum_ite_eq']

/-- The ROOT-based empirical event probability equals the full PATTERN-based
empirical event probability. This identity supplies the missing comparison
between #654/#658's and #675's different probability representations. -/
theorem empiricalEvent_eq_sum_empiricalPatterns
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) (event : (ι → Bool) → Bool) :
    empiricalEvent roots x event =
      ∑ a : ι → Bool,
        if event a then
          (((empiricalPattern roots (Finset.univ : Finset ι) x a : ℚ) : ℝ))
        else 0 := by
  classical
  have hq :
      (∑ a : ι → Bool,
        if event a then
          empiricalPattern roots (Finset.univ : Finset ι) x a
        else (0 : ℚ)) =
      (∑ n ∈ roots, if event (x n) then (1 : ℚ) else 0) /
        (roots.card : ℚ) := by
    unfold empiricalPattern
    calc
      (∑ a : ι → Bool,
        if event a then
          patternCountOn roots (Finset.univ : Finset ι) x a /
            (roots.card : ℚ)
        else 0) =
        (∑ a : ι → Bool,
          if event a then
            patternCountOn roots (Finset.univ : Finset ι) x a
          else 0) / (roots.card : ℚ) := by
          rw [Finset.sum_div]
          apply Finset.sum_congr rfl
          intro a ha
          by_cases he : event a <;> simp [he]
      _ = _ := by
          rw [sum_patternCountOn_event_eq_rootCount]
  unfold empiricalEvent eventCount
  exact_mod_cast hq.symm

/-- Fair Bernoulli event mass on the complete Boolean pattern alphabet.
This probability is specified by the uniform law, not by fictitious roots. -/
def uniformPatternEventMass (event : (ι → Bool) → Bool) : ℝ :=
  ∑ a : ι → Bool,
    if event a then (1 : ℝ) / (2 : ℝ) ^ Fintype.card ι else 0

/-- Exact equality of the rooted empirical event interpretation and the
inherited empirical-pattern Fourier interpretation, with a COMMON uniform
event mass. Neither an unlabeled graph nor a spectral operation enters. -/
theorem uniformPatternEventDeviation_eq_rooted
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) (event : (ι → Bool) → Bool) :
    uniformPatternEventDeviation roots hroots x event =
      empiricalEvent roots x event - uniformPatternEventMass event := by
  classical
  rw [empiricalEvent_eq_sum_empiricalPatterns roots hroots x event]
  unfold uniformPatternEventDeviation uniformPatternEventMass
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro a ha
  by_cases he : event a <;> simp [he]

/-- A source-preserving event-level triangle inequality. Both empirical
laws are on the same actual roots and EXACT same full Boolean alphabet.
The finiteEventTV term is the *inherited* all-event supremum, not an
estimate for a single selected cylinder. -/
theorem empiricalVsUniformTV_triangle
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x y : ℕ → ι → Bool) :
    empiricalVsUniformTV roots hroots y ≤
      finiteEventTV roots x y + empiricalVsUniformTV roots hroots x := by
  classical
  have hevent (event : (ι → Bool) → Bool) :
      |uniformPatternEventDeviation roots hroots y event| ≤
        finiteEventTV roots x y + empiricalVsUniformTV roots hroots x := by
    have hxy :
        |empiricalEvent roots y event - empiricalEvent roots x event| ≤
          finiteEventTV roots x y := by
      calc
        |empiricalEvent roots y event - empiricalEvent roots x event| =
          |empiricalEvent roots x event - empiricalEvent roots y event| :=
            abs_sub_comm _ _
        _ ≤ finiteEventTV roots x y := by
          unfold finiteEventTV
          exact Finset.le_sup'
            (fun e : (ι → Bool) → Bool =>
              |empiricalEvent roots x e - empiricalEvent roots y e|)
            (Finset.mem_univ event)
    have hx :
        |uniformPatternEventDeviation roots hroots x event| ≤
          empiricalVsUniformTV roots hroots x := by
      unfold empiricalVsUniformTV
      exact Finset.le_sup'
        (fun e : (ι → Bool) → Bool =>
          |uniformPatternEventDeviation roots hroots x e|)
        (Finset.mem_univ event)
    calc
      |uniformPatternEventDeviation roots hroots y event| =
        |(empiricalEvent roots y event - empiricalEvent roots x event) +
          uniformPatternEventDeviation roots hroots x event| := by
            rw [uniformPatternEventDeviation_eq_rooted roots hroots x event,
                uniformPatternEventDeviation_eq_rooted roots hroots y event]
            ring
      _ ≤ |empiricalEvent roots y event - empiricalEvent roots x event| +
            |uniformPatternEventDeviation roots hroots x event| := abs_add_le _ _
      _ ≤ finiteEventTV roots x y + empiricalVsUniformTV roots hroots x :=
        add_le_add hxy hx
  unfold empiricalVsUniformTV
  apply Finset.sup'_le
  intro event he
  exact hevent event

/-- Exact ordinary selected-source label, on the finite coordinate subtype
given by the user-supplied shift set. Source indices remain original Nat. -/
def ordinarySelected (a : ℕ → Bool) (shifts : Finset ℕ) :
    ℕ → ({h : ℕ // h ∈ shifts} → Bool) :=
  selectedPattern shifts (ordinaryWindow a)

/-- Exact modulo-N cyclic label on the SAME source and shift subtype. -/
def cyclicSelected (a : ℕ → Bool) (shifts : Finset ℕ) (N : ℕ) :
    ℕ → ({h : ℕ // h ∈ shifts} → Bool) :=
  selectedPattern shifts (cyclicWindow a N)

/-- The complete finite Chowla-sofic cylinder comparison (conditional
only on the explicit finite root and shift-range guards):

  TV(cyclic finite label distribution, fair Bernoulli block law)
      ≤ (1/2) sqrt(sum of squared ALL nonempty ordinary correlations)
        + r/N.

Every part of the right side is an actual finite observable of the same
input binary sequence. Nothing here bounds its nonempty correlations.
The theorem is SOURCE_DRAFT, not an accepted Lean proof. -/
theorem cyclicEmpiricalVsUniformTV_le
    (a : ℕ → Bool) (shifts : Finset ℕ) (N r : ℕ)
    (hroots : 0 < (Finset.range N).card)
    (hr : r ≤ N) (hshifts : ∀ h ∈ shifts, h ≤ r) :
    empiricalVsUniformTV (Finset.range N) hroots (cyclicSelected a shifts N) ≤
      Real.sqrt
        (((nonemptyMomentEnergy (Finset.range N) hroots
          (ordinarySelected a shifts) : ℚ) : ℝ)) / 2 +
        (r : ℝ) / (N : ℝ) := by
  classical
  have hN : 0 < N := by
    simpa only [Finset.card_range] using hroots
  have htriangle :=
    empiricalVsUniformTV_triangle (Finset.range N) hroots
      (ordinarySelected a shifts) (cyclicSelected a shifts N)
  have hseam :
      finiteEventTV (Finset.range N)
        (ordinarySelected a shifts) (cyclicSelected a shifts N) ≤
          (r : ℝ) / (N : ℝ) := by
    simpa only [ordinarySelected, cyclicSelected] using
      (finiteTV_ordinary_cyclicWindow_le a shifts N r hN hr hshifts)
  have henergy :=
    empiricalVsUniformTV_le_sqrt_momentEnergy
      (Finset.range N) hroots (ordinarySelected a shifts)
  calc
    empiricalVsUniformTV (Finset.range N) hroots
        (cyclicSelected a shifts N) ≤
      finiteEventTV (Finset.range N)
        (ordinarySelected a shifts) (cyclicSelected a shifts N) +
      empiricalVsUniformTV (Finset.range N) hroots
        (ordinarySelected a shifts) := htriangle
    _ ≤ (r : ℝ) / (N : ℝ) +
      Real.sqrt
        (((nonemptyMomentEnergy (Finset.range N) hroots
          (ordinarySelected a shifts) : ℚ) : ℝ)) / 2 :=
        add_le_add hseam henergy
    _ = _ := by ring

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.CyclicBernoulli
```
