/-
# Uncompiled individually reviewed candidate: Nonnegativity of two-element Shapley increments

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Existing notices remain
preserved in the exact source archives and copied source documentation.
Source original SHA256: 1678164e1baa581c51245cc0c2b0c0aab85c8542b2dd458f2463c5cfb79ae9bf
Organized source SHA256: b0dcd27c5a78df01cdc366212d1507ef2ddf81a407d642aca49fcb0261adc278
Review: attribution-254-review-000018.
PMD: 510.7 combinatorics and discrete mathematics; editorial navigation only.
Both element-registration hypotheses and the positive-capacity assumptions
remain explicit. This component proves only the stated two-element
coordinatewise nonnegativity result, not a general finite-universe theorem.
Original source documentation describes the complete unsplit source context.
The legacy capacity import is replaced by the exact pinned rational-diagonal
provider; all declaration, hypothesis and proof-body bytes are unchanged.
No Lean compilation, proof acceptance or public umbrella admission is asserted.
-/

import GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveCapacity.FiniteDiagonal
import GRWTSK.CombinatoricsAndDiscreteMathematics.TwoElementShapley.AveragedIncrements

/-!
# Exact two-prime Shapley attribution

This module proves the complete two-prime case directly.  Each attribution is
the average of the two possible conditional insertion histories.  Positivity
follows from capacity monotonicity and efficiency follows by exact
telescoping.  The unrestricted finite-universe combinatorial theorem remains
an explicit open obligation in the theorem-status registry.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TwoElementShapley

open GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveCapacity.FiniteDiagonal

theorem shapley_attribution_nonnegative
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (first second : Prime)
    (first_registered : first ∈ capacity.primeUniverse.primes)
    (second_registered : second ∈ capacity.primeUniverse.primes) :
    OperatorNonnegative
        (twoPrimeAttributionFirst capacity first second) ∧
      OperatorNonnegative
        (twoPrimeAttributionSecond capacity first second) := by
  have empty_in_universe :
      (∅ : Finset Prime) ⊆ capacity.primeUniverse.primes :=
    Finset.empty_subset _
  have first_cut_in_universe :
      ({first} : Finset Prime) ⊆ capacity.primeUniverse.primes :=
    Finset.singleton_subset_iff.mpr first_registered
  have second_cut_in_universe :
      ({second} : Finset Prime) ⊆ capacity.primeUniverse.primes :=
    Finset.singleton_subset_iff.mpr second_registered
  have first_from_empty :=
    capacity_increment_nonnegative
      capacity
      ∅
      first
      empty_in_universe
      first_registered
  have first_after_second :=
    capacity_increment_nonnegative
      capacity
      {second}
      first
      second_cut_in_universe
      first_registered
  have second_from_empty :=
    capacity_increment_nonnegative
      capacity
      ∅
      second
      empty_in_universe
      second_registered
  have second_after_first :=
    capacity_increment_nonnegative
      capacity
      {first}
      second
      first_cut_in_universe
      second_registered
  constructor
  · intro coordinate
    exact div_nonneg
      (add_nonneg
        (first_from_empty coordinate)
        (first_after_second coordinate))
      (by norm_num)
  · intro coordinate
    exact div_nonneg
      (add_nonneg
        (second_from_empty coordinate)
        (second_after_first coordinate))
      (by norm_num)

end GRWTSK.CombinatoricsAndDiscreteMathematics.TwoElementShapley
