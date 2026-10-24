-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryFrontierAddress.Variantc97ab4fbed4b5a15aae5b6736d82fd212c01bdd72e4951d4ac5005c52a72c247","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c97ab4fbed4b5a15aae5b6736d82fd212c01bdd72e4951d4ac5005c52a72c247","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BinaryFrontierAddress.Variantc97ab4fbed4b5a15aae5b6736d82fd212c01bdd72e4951d4ac5005c52a72c247","mathematical_subject":"Computation.DataStructures","original_sha256":"c97ab4fbed4b5a15aae5b6736d82fd212c01bdd72e4951d4ac5005c52a72c247","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Refinement/Address.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Symmetry.OrientationEquivariance

/-!
# Binary frontier addresses

Addresses index refinement geometry and are not permanent node identities.
Terminal prefix-freedom and dyadic disjointness are exposed only through an
explicit finite certificate.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryFrontierAddress.Variantc97ab4fbed4b5a15aae5b6736d82fd212c01bdd72e4951d4ac5005c52a72c247

namespace Mathematics.BinaryFrontier

def BinaryValue : List Bool → Nat
  | [] => 0
  | bit :: tail =>
      (if bit then 1 else 0) * 2 ^ tail.length +
        BinaryValue tail

structure BinaryFrontierAddress where
  subjectRef : String
  rawPath : List Bool
  orientations : List LocalOrientation
  orientationLength :
    orientations.length = rawPath.length
  orientedPath : List Bool :=
    orientPath orientations rawPath
  orientedPath_exact :
    orientedPath = orientPath orientations rawPath
  depth : Nat := rawPath.length
  depth_exact : depth = rawPath.length
  fixedDepthIndex : Nat := BinaryValue orientedPath
  fixedDepthIndex_exact :
    fixedDepthIndex = BinaryValue orientedPath
  selfDelimitingIndex : Nat :=
    2 ^ depth + fixedDepthIndex
  selfDelimitingIndex_exact :
    selfDelimitingIndex =
      2 ^ depth + fixedDepthIndex

def ListPrefix (left right : List Bool) : Prop :=
  ∃ suffix, right = left ++ suffix

def TerminalPrefixFree
    (addresses : List BinaryFrontierAddress) : Prop :=
  ∀ left ∈ addresses, ∀ right ∈ addresses,
    left.subjectRef ≠ right.subjectRef →
      ¬ ListPrefix left.rawPath right.rawPath

def DyadicIntervalsDisjoint
    (left right : BinaryFrontierAddress) : Prop :=
  let leftNumerator := BinaryValue left.orientedPath
  let rightNumerator := BinaryValue right.orientedPath
  (leftNumerator + 1) * 2 ^ right.depth ≤
      rightNumerator * 2 ^ left.depth ∨
    (rightNumerator + 1) * 2 ^ left.depth ≤
      leftNumerator * 2 ^ right.depth

structure CertifiedTerminalAddresses where
  addresses : List BinaryFrontierAddress
  prefixFree : TerminalPrefixFree addresses
  dyadicDisjoint :
    ∀ left ∈ addresses, ∀ right ∈ addresses,
      left.subjectRef ≠ right.subjectRef →
        DyadicIntervalsDisjoint left right

theorem terminal_addresses_prefix_free
    (certificate : CertifiedTerminalAddresses) :
    TerminalPrefixFree certificate.addresses :=
  certificate.prefixFree

theorem dyadic_terminal_intervals_disjoint
    (certificate : CertifiedTerminalAddresses)
    (left : BinaryFrontierAddress)
    (leftMember : left ∈ certificate.addresses)
    (right : BinaryFrontierAddress)
    (rightMember : right ∈ certificate.addresses)
    (distinct : left.subjectRef ≠ right.subjectRef) :
    DyadicIntervalsDisjoint left right :=
  certificate.dyadicDisjoint
    left leftMember right rightMember distinct

end Mathematics.BinaryFrontier
