# Complete source: GRWTSK.Algebra.PUnit.Variant852c3da2801e5f678e60525f8483239bf32628fd374fb0c190a8ffbadab5f356

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dec21885efca9af7a975819e36b6b1501cc88a45` · SHA-256 `ed69fa40c05567711e3e48330c6c8a043a79ff50eacf32e941db99aaebb98042`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.PUnit.Variantf15e5854308c465495ce7af111b375770722ec8c1ae7c7b2efcae2adc77b1a3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f15e5854308c465495ce7af111b375770722ec8c1ae7c7b2efcae2adc77b1a3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.PUnit.Variantf15e5854308c465495ce7af111b375770722ec8c1ae7c7b2efcae2adc77b1a3c","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"f15e5854308c465495ce7af111b375770722ec8c1ae7c7b2efcae2adc77b1a3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/PUnit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.Group.PUnit
import Mathlib.Algebra.Ring.Defs

/-!
# `PUnit` is a commutative ring

This file collects facts about algebraic structures on the one-element type, e.g. that it is a
commutative ring.
-/


namespace GRWTSK.Algebra.PUnit.Variantf15e5854308c465495ce7af111b375770722ec8c1ae7c7b2efcae2adc77b1a3c

assert_not_exists Field

namespace PUnit

instance commRing : CommRing PUnit where
  __ := PUnit.commGroup
  __ := PUnit.addCommGroup
  left_distrib := by intros; rfl
  right_distrib := by intros; rfl
  zero_mul := by intros; rfl
  mul_zero := by intros; rfl
  natCast _ := unit

instance cancelCommMonoidWithZero : CancelCommMonoidWithZero PUnit where
  mul_left_cancel_of_ne_zero := by simp

end PUnit
```
