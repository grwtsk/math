/-
RationalGridIncidenceAndCounts — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ff1c4d5be5dcb39c8ee06bf780d84a10ab53e8a67dadbfecaf50b98a6caf6431
Organized SHA-256: c7bc098aeced07b97c4f24fced632b79ce42045aa175ad5af03c03680ac4493f
PMD: 510.3.010.010.010 incidence (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Full axis/point/cell origin hypotheses, exact odd5/even4 center counts, row-major record equation and complete carrier-record count consequence. Carrier soundness/completeness/injectivity and checked metadata remain supplied by the unchanged original record type. Original source namespaces are retained exactly; mathematical examples remain anonymous commands, not new named theorems. Native_decide, decide, examples and tactics are copied text and have not been executed. Whole original documentation may describe other retained components or historical claimed checked status; no present replay or external program acceptance is asserted. -/

import BitMatrix.Formal
import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Correspondence
import BitMatrix.Runtime.Semantics
import Mathlib.Tactic

namespace BitMatrix.Tests.Correspondence

open BitMatrix.Carrier

example {size : Nat} {coordinate : ℚ} {cell : Fin size}
    (origin : BitMatrix.Geometry.CarrierGrid.AxisOriginMatches
      size coordinate cell) :
    BitMatrix.Geometry.CarrierGrid.AxisSupports size coordinate cell :=
  BitMatrix.Geometry.CarrierGrid.axisOriginMatches_implies_support origin

example {size : Nat}
    {point : BitMatrix.Geometry.CarrierGrid.NormalizedPoint}
    {cell : BitMatrix.Runtime.Semantics.GridCell size size}
    (origin : BitMatrix.Geometry.CarrierGrid.OriginMatches size point cell) :
    BitMatrix.Geometry.CarrierGrid.ExactCarrier size point cell :=
  BitMatrix.Geometry.CarrierGrid.originMatches_implies_exactCarrier origin

example :
    BitMatrix.Geometry.CarrierGrid.carrierMultiplicity 5
      { x := BitMatrix.Geometry.CarrierGrid.center,
        y := BitMatrix.Geometry.CarrierGrid.center } = 1 := by
  simpa using
    BitMatrix.Geometry.CarrierGrid.odd_center_carrierMultiplicity 2

example :
    BitMatrix.Geometry.CarrierGrid.carrierMultiplicity 4
      { x := BitMatrix.Geometry.CarrierGrid.center,
        y := BitMatrix.Geometry.CarrierGrid.center } = 4 := by
  simpa using
    BitMatrix.Geometry.CarrierGrid.even_center_carrierMultiplicity 1
example {rows columns : Nat}
    (record : BitMatrix.Runtime.Correspondence.GridCellRecord rows columns) :
    (BitMatrix.Runtime.Correspondence.abstractGridCell record).rowMajorIndex =
      record.index :=
  BitMatrix.Runtime.Correspondence.abstractGridCell_rowMajorIndex record

example {size carrierCount : Nat}
    (record : BitMatrix.Runtime.Correspondence.CarrierStateRecord
      size carrierCount) :
    carrierCount = BitMatrix.Geometry.CarrierGrid.carrierMultiplicity
      size record.point :=
  BitMatrix.Runtime.Correspondence.carrierStateRecord_count_eq_carrierMultiplicity
    record
end BitMatrix.Tests.Correspondence
