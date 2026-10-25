# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Div.Variant2fcabee3f82e1444efd82bfe2b00289412a3f2a1a9a01ae4f1467612d2aabd60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f7902c491cd5b3b7e4526f85a245d7e3bdabd3e` · SHA-256 `6c8dd9653984af0bf26c512d284fb44ec490fb4f663eb96976755e82557edfd3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AccuracyOfFraction.Variant4fd8b6fe0e1ed2af045899b543dff69e4fa95c873522eed8c77632066db499b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4fd8b6fe0e1ed2af045899b543dff69e4fa95c873522eed8c77632066db499b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.AccuracyOfFraction.Variant4fd8b6fe0e1ed2af045899b543dff69e4fa95c873522eed8c77632066db499b5","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"4fd8b6fe0e1ed2af045899b543dff69e4fa95c873522eed8c77632066db499b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Float/Model/Unpacked/Operations/Div.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Round

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AccuracyOfFraction.Variant4fd8b6fe0e1ed2af045899b543dff69e4fa95c873522eed8c77632066db499b5

@[expose] public section

namespace Float.Model.UnpackedFloat

/--
Returns the accuracy corresponding to the point `y + (num/den)ulp`.

Assumes `num < den`.
-/
def accuracyOfFraction (num den : Nat) : Accuracy :=
  if num = 0 then
    .exact
  else
    .inexact (compare (2 * num) den)

/--
Computes a `(mantissa, exponent)` pair for the quotient with enough bits to populate the mantissa
for the given specification. Also returns an `Accuracy` stating how the returned pair relates to
the infinitely precise quotient.
-/
def divCore (spec : Format) (m₁ : Nat) (e₁ : Int) (m₂ : Nat) (e₂ : Int) : Nat × Int × Accuracy :=
  -- Strategy: decrease the exponent here far enough so that we definitely get enough bits in the
  -- quotient `m / m₂`. We take the `min` because we don't want to increase the exponent; this happens
  -- later in the rounding step.
  let targetExponent := min (e₁ - e₂) (spec.targetExponent (totalExponent m₁ e₁ - totalExponent m₂ e₂))
  let shiftAmount := (e₁ - e₂ - targetExponent).toNat
  let m := m₁ <<< shiftAmount
  (m / m₂, targetExponent, accuracyOfFraction (m % m₂) m₂)

/--
Computes the quotient of two floating point numbers and rounds the result according to
the given specification.
-/
def div (spec : Format) : UnpackedFloat → UnpackedFloat → UnpackedFloat
  | .notANumber, _ => .notANumber
  | _, .notANumber => .notANumber
  | .infinity _, .infinity _ => .notANumber
  | .infinity sign₁, .finite sign₂ .. => .infinity (sign₁ / sign₂)
  | .finite sign₁ .., .infinity sign₂ => .zero (sign₁ / sign₂)
  | .infinity sign₁, .zero sign₂ => .infinity (sign₁ / sign₂)
  | .zero sign₁, .infinity sign₂ => .zero (sign₁ / sign₂)
  | .finite sign₁ .., .zero sign₂ => .infinity (sign₁ / sign₂)
  | .zero sign₁, .finite sign₂ .. => .zero (sign₁ / sign₂)
  | .zero _, .zero _ => .notANumber
  | .finite s₁ m₁ e₁ _, .finite s₂ m₂ e₂ _ =>
    let (m, e, acc) := divCore spec m₁ e₁ m₂ e₂
    roundWithAccuracy spec (s₁ / s₂) m e acc

end Float.Model.UnpackedFloat
```
