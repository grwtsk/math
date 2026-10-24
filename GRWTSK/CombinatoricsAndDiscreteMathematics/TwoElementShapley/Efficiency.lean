/-
# Uncompiled individually reviewed candidate: Telescoping efficiency of two-element Shapley increments

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
The exact two-element telescoping identity is preserved without adding
registration or distinctness hypotheses. It proves no unrestricted
finite-universe combinatorial attribution theorem.
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

theorem shapley_attribution_efficiency
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (first second : Prime) :
    twoPrimeAttributionFirst capacity first second +
        twoPrimeAttributionSecond capacity first second =
      capacity.value (insert first {second}) -
        capacity.value ∅ := by
  have terminal_cuts_equal :
      insert second ({first} : Finset Prime) =
        insert first ({second} : Finset Prime) := by
    ext prime
    simp [or_comm]
  funext coordinate
  simp only [
    twoPrimeAttributionFirst,
    twoPrimeAttributionSecond,
    PositiveCapacity.increment,
    Finset.insert_empty,
    Pi.add_apply,
    Pi.sub_apply,
  ]
  rw [terminal_cuts_equal]
  ring

end GRWTSK.CombinatoricsAndDiscreteMathematics.TwoElementShapley
