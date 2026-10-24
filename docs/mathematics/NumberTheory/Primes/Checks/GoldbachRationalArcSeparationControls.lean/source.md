# Complete source: GRWTSK.NumberTheory.Primes.Checks.GoldbachRationalArcSeparationControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `260a9d79d2bde289d35b56feda1a830d792091c6` · SHA-256 `4372012c3d58f5bc7d27f93506cbdb8aa8ef80647107dd7b276671f4b5397204`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Controls for rational-arc separation and finite expansion

These source controls retain the strict global scale, all three period lifts,
the distinction between sufficient separation and analytic estimates, and the
fact that an exact disjoint expansion can coexist with zero Goldbach count.
They have not been executed in Lean.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachRationalArcSeparationControls

open scoped BigOperators
open Set
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcSeparation
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion

/-- The canonical centers `0/1` and `1/2` are separated by exactly one half. -/
theorem zero_one_one_two_center_distance :
    |goldbachLiftedRationalArcCenter 0 1 0 -
        goldbachLiftedRationalArcCenter 1 2 0| =
      (1 / 2 : ℝ) := by
  norm_num [goldbachLiftedRationalArcCenter,
    goldbachRationalArcCenter]

/-- The general denominator-product separation specializes to the same bound. -/
theorem zero_one_one_two_separation :
    (1 / 2 : ℝ) ≤
      |goldbachLiftedRationalArcCenter 0 1 0 -
        goldbachLiftedRationalArcCenter 1 2 0| := by
  have h0 :
      (0, 1) ∈ goldbachRationalArcIndices 2 :=
    zero_one_mem_goldbachRationalArcIndices (by norm_num)
  have h1 :
      (1, 2) ∈ goldbachRationalArcIndices 2 :=
    one_two_mem_goldbachRationalArcIndices (by norm_num)
  simpa using
    (goldbachLiftedRationalArcCenter_separation
      (Q := 2) (k := 0) (l := 0)
      h0 h1 (Or.inl (by norm_num)))

/-- At `Q=2`, target `N=8` passes the explicit sufficient scale. -/
theorem cutoff_two_target_eight_scale :
    2 * 2 ^ 2 < 8 + 1 := by norm_num

/-- Under that scale, the full periodized `0/1` and `1/2` arcs are disjoint. -/
theorem cutoff_two_target_eight_disjoint :
    Disjoint
      (goldbachPeriodizedRationalArc 2 8 0 1)
      (goldbachPeriodizedRationalArc 2 8 1 2) := by
  exact goldbachPeriodizedRationalArcs_disjoint
    (zero_one_mem_goldbachRationalArcIndices (by norm_num))
    (one_two_mem_goldbachRationalArcIndices (by norm_num))
    (by norm_num)
    cutoff_two_target_eight_scale

/-- The earlier concrete overlap occurs outside the sufficient scale regime. -/
theorem overlap_control_fails_scale :
    ¬ 2 * 2 ^ 2 < 0 + 1 := by norm_num

/-- Distinct lifts of the same reduced fraction are also separated under the
safe scale. -/
theorem same_fraction_adjacent_lifts_disjoint :
    Disjoint
      (goldbachLiftedRationalArc 1 2 0 1 0)
      (goldbachLiftedRationalArc 1 2 0 1 1) := by
  have hindex :
      (0, 1) ∈ goldbachRationalArcIndices 1 :=
    zero_one_mem_goldbachRationalArcIndices (by norm_num)
  exact goldbachLiftedRationalArcs_disjoint
    hindex hindex (Or.inr (by norm_num)) (by norm_num)

/-- The finite-sum expansion is exact at one concrete safe cutoff and target. -/
theorem cutoff_one_target_two_major_sum :
    goldbachRationalMajorContribution 1 2 =
      ∑ aq ∈ goldbachRationalArcIndices 1,
        goldbachSingleRationalArcContribution 1 2 aq := by
  exact goldbachRationalMajorContribution_eq_sum (by norm_num)

/-- Exact disjoint expansion still does not create a Goldbach witness. -/
theorem disjoint_expansion_not_goldbach_witness :
    goldbachCount 2 = 0 ∧
      (∑ aq ∈ goldbachRationalArcIndices 1,
          goldbachSingleRationalArcContribution 1 2 aq) +
          goldbachRationalMinorContribution 1 2 =
        (GRWTSK.NumberTheory.Primes.GoldbachWeighted.goldbachLogMass 2 : ℂ) := by
  exact
    ⟨by decide,
      goldbachRationalArcSum_add_minor_eq_logMass (by norm_num)⟩

/-- The global scale condition is strict; equality at the boundary does not pass. -/
theorem strict_scale_boundary_rejected :
    ¬ 2 * 2 ^ 2 < 7 + 1 := by norm_num

end GRWTSK.NumberTheory.Primes.Checks.GoldbachRationalArcSeparationControls
```
