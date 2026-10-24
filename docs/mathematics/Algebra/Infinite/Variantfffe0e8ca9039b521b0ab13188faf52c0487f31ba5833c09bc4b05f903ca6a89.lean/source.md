# Complete source: GRWTSK.Algebra.Infinite.Variantfffe0e8ca9039b521b0ab13188faf52c0487f31ba5833c09bc4b05f903ca6a89

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `219cc3e96bd22f96271d1fc07bf044ee95e8d69f` · SHA-256 `88d342aefa6f75b9da247786996611112967c9dae5a70302549d20ea80f70fdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CharZero.Variant26f32e9e6fd9eb2fa045869cd7f25a1760ec6f5cbd38a728946c063cce2037da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"26f32e9e6fd9eb2fa045869cd7f25a1760ec6f5cbd38a728946c063cce2037da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CharZero.Variant26f32e9e6fd9eb2fa045869cd7f25a1760ec6f5cbd38a728946c063cce2037da","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"26f32e9e6fd9eb2fa045869cd7f25a1760ec6f5cbd38a728946c063cce2037da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/CharZero/Infinite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
module

public import Mathlib.Algebra.CharZero.Defs
public import Mathlib.Data.Fintype.EquivFin

/-! # A characteristic-zero semiring is infinite -/


namespace GRWTSK.Algebra.CharZero.Variant26f32e9e6fd9eb2fa045869cd7f25a1760ec6f5cbd38a728946c063cce2037da

public section

variable (M : Type*) [AddMonoidWithOne M] [CharZero M]

-- see Note [lower instance priority]
instance (priority := 100) CharZero.infinite : Infinite M :=
  Infinite.of_injective Nat.cast Nat.cast_injective
```
