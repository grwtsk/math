# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompilerTarget.Variantf69fbeea78213fe47bf0e3a9aa0ba6e0e9e594ec09395253bbd315a215b30691

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28fc15b24e030acae2e1849334625da94d5d474a` · SHA-256 `a521217d37705d8e51545d4d4336984720cb3b5ee6268b04f63073572996ed44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompilerTarget.Varianta248c795c3f93fdf517ab848afed4c3aaea08da6540d20e27b8ef049885014f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a248c795c3f93fdf517ab848afed4c3aaea08da6540d20e27b8ef049885014f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CompilerTarget.Varianta248c795c3f93fdf517ab848afed4c3aaea08da6540d20e27b8ef049885014f0","mathematical_subject":"Computation.DataStructures","original_sha256":"a248c795c3f93fdf517ab848afed4c3aaea08da6540d20e27b8ef049885014f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/CompilerTarget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompilerTarget.Varianta248c795c3f93fdf517ab848afed4c3aaea08da6540d20e27b8ef049885014f0

namespace Surface.ContinuousAssurance

open Surface.Quantization

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
```
