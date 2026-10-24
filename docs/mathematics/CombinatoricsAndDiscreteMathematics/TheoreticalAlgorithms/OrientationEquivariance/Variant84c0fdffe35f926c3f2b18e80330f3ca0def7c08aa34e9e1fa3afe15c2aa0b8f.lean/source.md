# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrientationEquivariance.Variant84c0fdffe35f926c3f2b18e80330f3ca0def7c08aa34e9e1fa3afe15c2aa0b8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b62fab0153a8fc785d38746a24c2b7069c0abba` · SHA-256 `36aec87ccf616e9c20c9575060e0f59236b274aee0ac628861013ea36f64ec7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LocalOrientation.Variant1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.LocalOrientation.Variant1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b","mathematical_subject":"Computation.DataStructures","original_sha256":"1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Symmetry/OrientationEquivariance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.PartialBitfield.Order

/-!
# Display orientation

Orientation changes user-facing order, never the raw refinement path or the
meaning of zero and one.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LocalOrientation.Variant1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b

namespace Mathematics.BinaryFrontier

inductive LocalOrientation
  | zeroThenOne
  | oneThenZero
  deriving DecidableEq, Repr

def orientBit : LocalOrientation → Bool → Bool
  | .zeroThenOne, value => value
  | .oneThenZero, value => !value

def orientPath
    (orientations : List LocalOrientation)
    (rawPath : List Bool) : List Bool :=
  List.zipWith orientBit orientations rawPath

theorem zeroThenOne_preserves_bit
    (value : Bool) :
    orientBit .zeroThenOne value = value :=
  rfl

theorem oneThenZero_is_involutive
    (value : Bool) :
    orientBit .oneThenZero
        (orientBit .oneThenZero value) =
      value := by
  cases value <;> rfl

end Mathematics.BinaryFrontier
```
