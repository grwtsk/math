# Complete source: GRWTSK.Algebra.Construction.Variant00e455c2eeb8ca940e0be750559e39606d04c48bcfb0b096b3c3ec5c8baf911d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bcd3fed8de8b62b08bea675b0899cff1a3189959` · SHA-256 `1e1bf94bb4933dfe8f845537cb8b8a7cff3225b56c312c5f79b123d5e23913a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Rat.Variante2aa1accc7e76cf600a94aa9b11862293d6d1bf270577d542ed6761edd9459bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2aa1accc7e76cf600a94aa9b11862293d6d1bf270577d542ed6761edd9459bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Rat.Variante2aa1accc7e76cf600a94aa9b11862293d6d1bf270577d542ed6761edd9459bf","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"e2aa1accc7e76cf600a94aa9b11862293d6d1bf270577d542ed6761edd9459bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/instance_diamonds/FieldTheory/SplittingField/Construction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Algebra.Rat
import Mathlib.FieldTheory.SplittingField.Construction


namespace GRWTSK.Algebra.Rat.Variante2aa1accc7e76cf600a94aa9b11862293d6d1bf270577d542ed6761edd9459bf

universe u v w

open Polynomial

variable {F : Type u} {K : Type v} {L : Type w}

variable [Field K] [Field L] [Field F]

variable (f : K[X])

-- The algebra instance deriving from `K` should be definitionally equal to that
-- deriving from the field structure on `SplittingField f`.
example :
    (AddCommGroup.toNatModule : Module ℕ (SplittingField f)) =
      @Algebra.toModule _ _ _ _ (SplittingField.algebra' f) := by
  with_reducible_and_instances rfl

example :
    (AddCommGroup.toIntModule _ : Module ℤ (SplittingField f)) =
      @Algebra.toModule _ _ _ _ (SplittingField.algebra' f) := by
  with_reducible_and_instances rfl

example [CharZero K] : SplittingField.algebra' f = DivisionRing.toRatAlgebra :=
  rfl
  -- TODO: by with_reducible_and_instances rfl fails

example {q : ℚ[X]} : Ring.toIntAlgebra (SplittingField q) = SplittingField.algebra' q :=
  rfl
  -- TODO: by with_reducible_and_instances rfl fails
```
