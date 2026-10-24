# Complete source: GRWTSK.Algebra.Construction.Variant2f32429c83f8a45096e83c62ae7979a9fff24a31359a38592e1d87fc832ed69a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6099eac9c4ec909e4473951e3253a61f562956c0` · SHA-256 `2a9c002908d0f28a6b686f26e684be8b77db83ac3c136717dbbf92e08d17bde6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Rat.Variant11cfe4d07c64b16f3c4c306e369a2c643f02367772c3f7234408cf706ce6509f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11cfe4d07c64b16f3c4c306e369a2c643f02367772c3f7234408cf706ce6509f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Rat.Variant11cfe4d07c64b16f3c4c306e369a2c643f02367772c3f7234408cf706ce6509f","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"11cfe4d07c64b16f3c4c306e369a2c643f02367772c3f7234408cf706ce6509f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/InstanceDiamonds/FieldTheory/SplittingField/Construction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Algebra.Rat
import Mathlib.FieldTheory.SplittingField.Construction


namespace GRWTSK.Algebra.Rat.Variant11cfe4d07c64b16f3c4c306e369a2c643f02367772c3f7234408cf706ce6509f

universe u v w

open Polynomial

variable {F : Type u} {K : Type v} {L : Type w}

variable [Field K] [Field L] [Field F]

variable (f : K[X])

-- The algebra instance deriving from `K` should be definitionally equal to that
-- deriving from the field structure on `SplittingField f`.
example :
    (AddCommMonoid.toNatModule : Module ℕ (SplittingField f)) =
      @Algebra.toModule _ _ _ _ (SplittingField.instAlgebra f) := by
  with_reducible_and_instances rfl

example :
    (AddCommGroup.toIntModule _ : Module ℤ (SplittingField f)) =
      @Algebra.toModule _ _ _ _ (SplittingField.instAlgebra f) := by
  with_reducible_and_instances rfl

example [CharZero K] : SplittingField.instAlgebra f = DivisionRing.toRatAlgebra :=
  rfl
  -- TODO: by with_reducible_and_instances rfl fails

example {q : ℚ[X]} : Ring.toIntAlgebra (SplittingField q) = SplittingField.instAlgebra q :=
  rfl
  -- TODO: by with_reducible_and_instances rfl fails
```
