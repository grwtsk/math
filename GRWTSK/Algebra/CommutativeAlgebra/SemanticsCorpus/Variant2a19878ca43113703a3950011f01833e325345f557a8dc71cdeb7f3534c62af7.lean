-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.Source.Variant464bebd190759654c18accdff746817c8688d506e476e001fd754d159766384a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"464bebd190759654c18accdff746817c8688d506e476e001fd754d159766384a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.Source.Variant464bebd190759654c18accdff746817c8688d506e476e001fd754d159766384a","mathematical_subject":"Algebra.Polynomials","original_sha256":"464bebd190759654c18accdff746817c8688d506e476e001fd754d159766384a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Polynomial/SemanticsCorpus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Discovery.IdeasCorpus
import Mathematics.Polynomial.Semantics

/-!
# `ideas.md` cubic-semantics reconstruction links

The source cell stored a duplicate cubic record, endpoints, a value, and a
proof against an operation named `integral` that was actually an endpoint
difference.  The reconstruction indexes one elementary witness by canonical
coefficients and endpoints, certifies the genuine interval integral, and
derives the endpoint formula.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.Source.Variant464bebd190759654c18accdff746817c8688d506e476e001fd754d159766384a

namespace Mathematics.Polynomial.SemanticsCorpus

open Mathematics
open Mathematics.Discovery

private def source
    (ordinal : Nat)
    (name : String)
    (name_nonempty : name ≠ "")
    (kind : CorpusDeclarationKind)
    (digest : String)
    (digest_valid : ({ value := digest } : Digest).Valid) :
    CorpusDeclarationAddress where
  corpus := ideasCorpus
  moduleOrdinal := 33
  modulePath := "Analysis/CubicSemantics.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "b4aa84da184b065cb9b2e8d5749772b0b974ae4a9eaf67eba403c62892895c67"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide
  declarationOrdinal := ordinal
  declarationName := name
  declarationName_nonempty := name_nonempty
  declarationKind := kind
  declarationDigest := { value := digest }
  declarationDigest_valid := digest_valid

def witnessCarrier : CorpusSubsumptionLink where
  linkId := { value := "ideas:cubic-semantics:dependent-witness" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    0
    "CubicCellSemantics"
    (by decide)
    .structure
    "ec48a0df40c7b3b401a272569ca149b387ed1a2e6d15f3c80f6c32edab8615f1"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration := "Mathematics.Polynomial.CubicIntegralWitness"
  targetDeclaration_nonempty := by decide
  relation := .semanticCorrection
  rationale :=
    "Index one elementary value-and-proof witness by canonical coefficients and endpoints."

def endpointCorrectness : CorpusSubsumptionLink where
  linkId := { value := "ideas:cubic-semantics:correct:endpoint-difference" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    1
    "CubicCellSemantics.correct"
    (by decide)
    .theorem
    "f495118a8c645cbcf52273074ffa2dd850cf41521a334d534188672ee9690590"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration :=
    "Mathematics.Polynomial.CubicIntegralWitness.correct_endpointDifference"
  targetDeclaration_nonempty := by decide
  relation := .theoremReconstruction
  rationale :=
    "Recover the source endpoint formula from a proof of the genuine interval integral."

def integralCorrectness : CorpusSubsumptionLink where
  linkId := { value := "ideas:cubic-semantics:correct:genuine-integral" }
  linkId_valid := by
    simp [StableId.Valid]
  source := source
    1
    "CubicCellSemantics.correct"
    (by decide)
    .theorem
    "f495118a8c645cbcf52273074ffa2dd850cf41521a334d534188672ee9690590"
    (by
      unfold Digest.Valid
      native_decide)
  targetDeclaration := "Mathematics.Polynomial.CubicIntegralWitness.correct"
  targetDeclaration_nonempty := by decide
  relation := .semanticCorrection
  rationale :=
    "State correctness against Mathlib's interval integral rather than a renamed endpoint difference."

def links : List CorpusSubsumptionLink := [
  witnessCarrier,
  endpointCorrectness,
  integralCorrectness
]

@[simp] theorem links_length : links.length = 3 := by decide

end Mathematics.Polynomial.SemanticsCorpus
