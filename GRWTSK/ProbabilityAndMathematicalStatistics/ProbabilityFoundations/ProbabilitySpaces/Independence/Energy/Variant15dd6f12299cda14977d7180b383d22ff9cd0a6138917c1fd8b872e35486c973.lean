-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.PacketEnergy.Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.PacketEnergy.Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece","mathematical_subject":"Probability.Independence","original_sha256":"6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Trace/Energy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Trace.Packet
import Mathematics.SemiLocalDefect.BoundaryCochain

/-!
# Monotone packet energy
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.PacketEnergy.Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece

namespace Mathematics.SemiLocalDefect.Trace

universe uPrime uTest

def packetEnergy
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    (test : Test) : ℝ :=
  packet.energy test (capacity.defect cut)

def packetIncrementEnergy
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    (prime : Prime)
    (test : Test) : ℝ :=
  packet.energy test
    (capacity.increment cut prime)

theorem packetEnergy_nonnegative
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    (test : Test) :
    0 ≤ packetEnergy capacity packet cut test :=
  packet.nonnegative test _
    (capacity.nonnegative cut)

theorem packetEnergy_monotone
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    {source target : Finset Prime}
    (subset : source ⊆ target)
    (test : Test) :
    packetEnergy capacity packet source test ≤
      packetEnergy capacity packet target test := by
  change
    packet.energy test (capacity.defect source) ≤
      packet.energy test (capacity.defect target)
  apply sub_nonneg.mp
  rw [← packet.map_sub]
  exact packet.nonnegative test _
    (capacity.monotone subset)

theorem packetEnergy_bounded_by_packetNorm
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    (test : Test) :
    packetEnergy capacity packet cut test ≤
      packet.packetNormSq test := by
  change
    packet.energy test (capacity.defect cut) ≤
      packet.packetNormSq test
  apply sub_nonneg.mp
  rw [← packet.identity_energy]
  rw [← packet.map_sub]
  exact packet.nonnegative test _
    (capacity.boundedByIdentity cut)

theorem packetIncrementEnergy_nonnegative
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    (prime : Prime)
    (test : Test) :
    0 ≤ packetIncrementEnergy
      capacity packet cut prime test :=
  packet.nonnegative test _
    (increment_nonnegative capacity cut prime)

theorem packetIncrementEnergy_eq_difference
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    (prime : Prime)
    (test : Test) :
    packetIncrementEnergy capacity packet
        cut prime test =
      packetEnergy capacity packet
          (insert prime cut) test -
        packetEnergy capacity packet cut test := by
  exact packet.map_sub test _ _

def packetPathEnergy
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    (path : List Prime)
    (test : Test) : ℝ :=
  packet.energy test
    (boundaryPathSum capacity cut path)

theorem packetPathEnergy_telescope
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    (path : List Prime)
    (test : Test) :
    packetPathEnergy capacity packet cut path test =
      packetEnergy capacity packet
          (insertList cut path) test -
        packetEnergy capacity packet cut test := by
  unfold packetPathEnergy packetEnergy
  rw [boundaryPathSum_telescope,
    packet.map_sub]

theorem packetPathEnergy_independent
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (cut : Finset Prime)
    {left right : List Prime}
    (sameEndpoint :
      insertList cut left =
        insertList cut right)
    (test : Test) :
    packetPathEnergy capacity packet cut left test =
      packetPathEnergy capacity packet cut right test := by
  rw [packetPathEnergy_telescope,
    packetPathEnergy_telescope,
    sameEndpoint]

end Mathematics.SemiLocalDefect.Trace
