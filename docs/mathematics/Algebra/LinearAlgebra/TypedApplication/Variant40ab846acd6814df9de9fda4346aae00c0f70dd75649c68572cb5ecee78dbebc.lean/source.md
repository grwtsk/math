# Complete source: GRWTSK.Algebra.LinearAlgebra.TypedApplication.Variant40ab846acd6814df9de9fda4346aae00c0f70dd75649c68572cb5ecee78dbebc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a6125171652ce9003a4ea5db9eab6976793b848` · SHA-256 `6196ebee19ddab6e4dd0cdc8e2281bbb5adf938f9443a6dfdb92d79c1ac8ca0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.TypedApplication.Variantf1c48100df625ed48c6e8e2c96229612ed88f8e685a6da69e6061e6150c90da0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f1c48100df625ed48c6e8e2c96229612ed88f8e685a6da69e6061e6150c90da0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TypedApplication.Variantf1c48100df625ed48c6e8e2c96229612ed88f8e685a6da69e6061e6150c90da0","mathematical_subject":"Foundations.Unclassified","original_sha256":"f1c48100df625ed48c6e8e2c96229612ed88f8e685a6da69e6061e6150c90da0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BooleanMatrix/TypedApplication.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BooleanMatrix.Application.Core
import BooleanMatrix.Format

/-!
# Format-preserving BooleanMatrix applications
-/


namespace GRWTSK.Algebra.LinearAlgebra.TypedApplication.Variantf1c48100df625ed48c6e8e2c96229612ed88f8e685a6da69e6061e6150c90da0

namespace BooleanMatrix

/--
An application carrying a proof that valid source matrices produce valid
target matrices.
-/
structure TypedApplication
    (source target : Format) where
  run : Application
  preserves :
    ∀ input,
      source.Valid input →
      target.Valid (run input)

namespace TypedApplication

/-- Typed identity application. -/
def identity
    (format : Format) :
    TypedApplication format format where
  run := Application.identity
  preserves := by
    intro input valid
    exact valid

/-- Typed sequential composition. -/
def comp
    {first second third : Format}
    (after : TypedApplication second third)
    (before : TypedApplication first second) :
    TypedApplication first third where
  run := Application.comp after.run before.run
  preserves := by
    intro input valid
    exact after.preserves
      (before.run input)
      (before.preserves input valid)

end TypedApplication
end BooleanMatrix
```
