# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExecutableRefinement.Variant3fce754f2d5f460a497cb718e1f1e5727420e0c6603cbd8cf9f72a4ba39f9e3d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d7abadb1a36330f1fec0e619eca68d4aa40dd54` · SHA-256 `75c2d54280202abad5763b93c2c82fffb5052ca1104825683c1a28643dc04418`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MutQuantizer.Variantdd41e4dfc5101326837be2fba0e811116e108b09e770d9db32db9c7401b8c596","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd41e4dfc5101326837be2fba0e811116e108b09e770d9db32db9c7401b8c596","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MutQuantizer.Variantdd41e4dfc5101326837be2fba0e811116e108b09e770d9db32db9c7401b8c596","mathematical_subject":"Computation.DataStructures","original_sha256":"dd41e4dfc5101326837be2fba0e811116e108b09e770d9db32db9c7401b8c596","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/DAF/Integration/WorldModelPrototype/ExecutableRefinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BinaryMatrix.Quantization
import Surface.ContinuousAssurance.Refinement

/-!
# Array-backed observational bridge

The prototype executable relation reuses `BinMat.Quantizer.ofMut`.  It proves
only that the array-backed encoder is observed through `BinMatMut.toDecl`.
No transition-level runtime refinement is inferred from this equation.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MutQuantizer.Variantdd41e4dfc5101326837be2fba0e811116e108b09e770d9db32db9c7401b8c596

universe u

namespace DAF.Integration.WorldModelPrototype

/-- The declarative quantizer induced by one mutable matrix encoder. -/
def mutQuantizer
    {Cfg : Type u} {m n : Nat}
    (encodeMut : Cfg → BinMatMut m n) :
    BinMat.Quantizer Cfg m n :=
  BinMat.Quantizer.ofMut encodeMut

/-- The executable observation is exactly its declarative `toDecl` image. -/
@[simp]
theorem mutQuantizer_encode
    {Cfg : Type u} {m n : Nat}
    (encodeMut : Cfg → BinMatMut m n)
    (configuration : Cfg) :
    (mutQuantizer encodeMut).encode configuration =
      (encodeMut configuration).toDecl :=
  rfl

/-- Indistinguishability remains observational, not raw-structure equality. -/
theorem mutQuantizer_indistinguishable_iff
    {Cfg : Type u} {m n : Nat}
    (encodeMut : Cfg → BinMatMut m n)
    (left right : Cfg) :
    (mutQuantizer encodeMut).Indistinguishable left right ↔
      (encodeMut left).toDecl = (encodeMut right).toDecl :=
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
