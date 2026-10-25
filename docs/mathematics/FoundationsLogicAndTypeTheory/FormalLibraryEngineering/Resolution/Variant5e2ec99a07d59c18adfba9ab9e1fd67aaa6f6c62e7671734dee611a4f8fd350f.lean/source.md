# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Resolution.Variant5e2ec99a07d59c18adfba9ab9e1fd67aaa6f6c62e7671734dee611a4f8fd350f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11d157239ba11e133d9a90db49a00fef66e7baf2` · SHA-256 `e567568a2913373640e82eac83eaeb99931d189266df251fff138a649c321909`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResolutionBits.Variant2f85d0a528643fe195fab7eb73b0020edcfd6ca18802bffe62d32c49f716f6ee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f85d0a528643fe195fab7eb73b0020edcfd6ca18802bffe62d32c49f716f6ee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ResolutionBits.Variant2f85d0a528643fe195fab7eb73b0020edcfd6ca18802bffe62d32c49f716f6ee","mathematical_subject":"Foundations.Unclassified","original_sha256":"2f85d0a528643fe195fab7eb73b0020edcfd6ca18802bffe62d32c49f716f6ee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Quantization/Resolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Neutral positive quantization resolutions

`ResolutionBits` is the shared lower-level representation of a finite,
strictly positive bit resolution. It contains no matrix semantics, assurance
status, evidence authority, or compiler policy. Domain and assurance modules
may depend on this carrier without depending on one another.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResolutionBits.Variant2f85d0a528643fe195fab7eb73b0020edcfd6ca18802bffe62d32c49f716f6ee

namespace Surface.Quantization

/-- A finite, strictly positive number of quantization bits. -/
structure ResolutionBits where
  value : Nat
  positive : 0 < value
  deriving Repr

instance : DecidableEq ResolutionBits :=
  fun left right =>
    if h : left.value = right.value then
      isTrue (by cases left; cases right; simp_all)
    else
      isFalse (fun equality => h (congrArg ResolutionBits.value equality))

/-- The positivity proof carried by every resolution. -/
theorem ResolutionBits.value_pos
    (resolution : ResolutionBits) :
    0 < resolution.value :=
  resolution.positive

end Surface.Quantization
```
