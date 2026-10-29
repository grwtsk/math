-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompilerTarget.Variant5f1f54907c359790393cf54f1a9162c44d3b9dc5bdd6857c5599869ba076e0d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f1f54907c359790393cf54f1a9162c44d3b9dc5bdd6857c5599869ba076e0d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CompilerTarget.Variant5f1f54907c359790393cf54f1a9162c44d3b9dc5bdd6857c5599869ba076e0d2","mathematical_subject":"Computation.DataStructures","original_sha256":"5f1f54907c359790393cf54f1a9162c44d3b9dc5bdd6857c5599869ba076e0d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/Surface/ContinuousAssurance/CompilerTarget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.QuantizationLevel
import Surface.ContinuousAssurance.Transformation

/-!
# Submitted compiler targets

A `CompilerTarget` is declarative data about a selected implementation target.
Lean proves consequences of the submitted record only; it does not inspect the
physical compiler.  `maximumSupportedResolution` is therefore an
implementation-policy ceiling, never a mathematical maximum on finite bit
planes.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompilerTarget.Variant5f1f54907c359790393cf54f1a9162c44d3b9dc5bdd6857c5599869ba076e0d2

namespace Surface.ContinuousAssurance

/-- Pinned declarative description of one compiler/target combination. -/
structure CompilerTarget where
  compilerId : String
  compilerVersion : String
  targetTriple : String
  wordBits : Nat
  wordBitsPositive : 0 < wordBits
  sourceEvidence : List ArtifactIdentity
  deriving Repr

/-- The positive word-width ceiling declared by a compiler target. -/
def maximumSupportedResolution
    (target : CompilerTarget) :
    ResolutionBits :=
  ⟨target.wordBits, target.wordBitsPositive⟩

@[simp]
theorem maximumSupportedResolution_value
    (target : CompilerTarget) :
    (maximumSupportedResolution target).value = target.wordBits :=
  rfl

end Surface.ContinuousAssurance
