-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Digest.Variant6b5196d77f6e23e8bb5f330976771813179ba9dba372bb48a85cc0eb81c75675","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b5196d77f6e23e8bb5f330976771813179ba9dba372bb48a85cc0eb81c75675","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Digest.Variant6b5196d77f6e23e8bb5f330976771813179ba9dba372bb48a85cc0eb81c75675","mathematical_subject":"Computation.DataStructures","original_sha256":"6b5196d77f6e23e8bb5f330976771813179ba9dba372bb48a85cc0eb81c75675","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/artifacts/noeoueue-cpp20-rust-lean-app/formal-hodge/NoeoueueHodgeGate/Packet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import NoeoueueHodgeGate.Variant


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Digest.Variant6b5196d77f6e23e8bb5f330976771813179ba9dba372bb48a85cc0eb81c75675

namespace NoeoueueHodgeGate

structure Digest where
  bytes : List UInt8
  lengthCorrect : bytes.length = 32

structure Rational where
  numerator : Int
  denominator : Nat
  denominatorPositive : denominator > 0
  reduced : Nat.Coprime numerator.natAbs denominator

structure ScopePacket where
  variant : Variant
  variety : Digest
  polarization : Digest
  codimension : Nat

structure RationalHodgeClass where
  scope : Digest
  coordinates : List Rational
  hodgeTypePP : Bool

structure AlgebraicCycle where
  scope : Digest
  components : List Digest
  coefficients : List Rational
  sameLength : components.length = coefficients.length

structure CycleClassEquality where
  expected : List Rational
  actual : List Rational
  exact : expected = actual

structure PrefixComparison where
  h1Typed : Bool
  h2NoCollapse : Bool
  h3Natural : Bool
  h4Faithful : Bool

inductive RoutingPort where
  | exact
  | harmonic
  | coexact
  deriving DecidableEq, Repr

inductive RoutingDisposition where
  | admitted
  | tied
  | prefixCrossing
  | groundedResidual
  | unknown
  | invalid
  deriving DecidableEq, Repr

end NoeoueueHodgeGate
