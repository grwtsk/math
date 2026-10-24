# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExecutableRefinement.Varianta1a15594fbeae761c0ab2de4657f7213a6f29e16c32737b80ffaa8a314f4c2c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `887d250176af1cbf85eeeeb8f16297982b14132d` · SHA-256 `bd74844bee148d7820e1f88cf8207820dbd2e0359d57d4d1a7126ec7312d74e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayBackedQuantizer.Variant05797ef7ddf47a021854c3595f074a3369cc37c06da70ce7960080723a1f6fc5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05797ef7ddf47a021854c3595f074a3369cc37c06da70ce7960080723a1f6fc5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ArrayBackedQuantizer.Variant05797ef7ddf47a021854c3595f074a3369cc37c06da70ce7960080723a1f6fc5","mathematical_subject":"Computation.DataStructures","original_sha256":"05797ef7ddf47a021854c3595f074a3369cc37c06da70ce7960080723a1f6fc5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Integration/WorldModelPrototype/ExecutableRefinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Quantization.Core
import Surface.ContinuousAssurance.Refinement

/-!
# Array-backed observational bridge

The prototype executable relation reuses `BitMatrix.Quantizer.ofArrayBacked`.  It proves
only that the array-backed encoder is observed through `BitMatrix.ArrayBacked.toMatrix`.
No transition-level runtime refinement is inferred from this equation.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayBackedQuantizer.Variant05797ef7ddf47a021854c3595f074a3369cc37c06da70ce7960080723a1f6fc5

universe u

namespace DAF.Integration.WorldModelPrototype

/-- The declarative quantizer induced by one array-backed matrix encoder. -/
def arrayBackedQuantizer
    {Cfg : Type u} {m n : Nat}
    (encodeArrayBacked : Cfg → BitMatrix.ArrayBacked m n) :
    BitMatrix.Quantizer Cfg m n :=
  BitMatrix.Quantizer.ofArrayBacked encodeArrayBacked

/-- The executable observation is exactly its declarative `toMatrix` image. -/
@[simp]
theorem arrayBackedQuantizer_encode
    {Cfg : Type u} {m n : Nat}
    (encodeArrayBacked : Cfg → BitMatrix.ArrayBacked m n)
    (configuration : Cfg) :
    (arrayBackedQuantizer encodeArrayBacked).encode configuration =
      (encodeArrayBacked configuration).toMatrix :=
  rfl

/-- Indistinguishability remains observational, not raw-structure equality. -/
theorem arrayBackedQuantizer_indistinguishable_iff
    {Cfg : Type u} {m n : Nat}
    (encodeArrayBacked : Cfg → BitMatrix.ArrayBacked m n)
    (left right : Cfg) :
    (arrayBackedQuantizer encodeArrayBacked).Indistinguishable left right ↔
      (encodeArrayBacked left).toMatrix = (encodeArrayBacked right).toMatrix :=
  Iff.rfl

/-- No full executable transition refinement is submitted by this adapter. -/
def executableWorldModelRefinementStatus :
    Surface.ContinuousAssurance.RuntimeRefinementSubmissionStatus :=
  .notSubmitted

@[simp]
theorem executableWorldModelRefinement_notSubmitted :
    executableWorldModelRefinementStatus = .notSubmitted :=
  rfl

end DAF.Integration.WorldModelPrototype
```
