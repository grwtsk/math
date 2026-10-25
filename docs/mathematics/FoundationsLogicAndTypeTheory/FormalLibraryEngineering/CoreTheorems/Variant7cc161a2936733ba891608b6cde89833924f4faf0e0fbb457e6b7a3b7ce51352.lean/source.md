# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoreTheorems.Variant7cc161a2936733ba891608b6cde89833924f4faf0e0fbb457e6b7a3b7ce51352

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b205f2b5d18a259be0239dec44e845640e160fe` · SHA-256 `48c408eed0a996671b3bc8e8f2e434f824e869df14a250f6d264069e152730aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PositiveClosedBoundaryCochain.Variant927d3d2b4f6c2f4c35e6eb3187a56bcd5208cd07e6b13c8821d5797bc9145746","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"927d3d2b4f6c2f4c35e6eb3187a56bcd5208cd07e6b13c8821d5797bc9145746","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PositiveClosedBoundaryCochain.Variant927d3d2b4f6c2f4c35e6eb3187a56bcd5208cd07e6b13c8821d5797bc9145746","mathematical_subject":"Foundations.Unclassified","original_sha256":"927d3d2b4f6c2f4c35e6eb3187a56bcd5208cd07e6b13c8821d5797bc9145746","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/CoreTheorems.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Foundation
import Mathematics.SemiLocalDefect.Trace.Energy

/-!
# Core structural theorems
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PositiveClosedBoundaryCochain.Variant927d3d2b4f6c2f4c35e6eb3187a56bcd5208cd07e6b13c8821d5797bc9145746

namespace Mathematics.SemiLocalDefect

universe uPrime uTest

structure PositiveClosedBoundaryCochain
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) where
  positive :
    ∀ cut prime,
      model.Nonnegative
        (capacity.increment cut prime)
  closed :
    ∀ cut left right,
      boundaryCurvature
        capacity cut left right = 0

theorem positiveCapacity_boundaryCochain
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) :
    PositiveClosedBoundaryCochain capacity where
  positive :=
    increment_nonnegative capacity
  closed :=
    boundaryCurvature_eq_zero capacity

structure FinitePacketEnergyBound
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet :
      Trace.DefectPacket model Test) where
  nonnegative :
    ∀ cut test,
      0 ≤ Trace.packetEnergy
        capacity packet cut test
  bounded :
    ∀ cut test,
      Trace.packetEnergy
          capacity packet cut test ≤
        packet.packetNormSq test

theorem positiveCapacity_finiteEnergy
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet :
      Trace.DefectPacket model Test) :
    FinitePacketEnergyBound capacity packet where
  nonnegative :=
    Trace.packetEnergy_nonnegative
      capacity packet
  bounded :=
    Trace.packetEnergy_bounded_by_packetNorm
      capacity packet

end Mathematics.SemiLocalDefect
```
