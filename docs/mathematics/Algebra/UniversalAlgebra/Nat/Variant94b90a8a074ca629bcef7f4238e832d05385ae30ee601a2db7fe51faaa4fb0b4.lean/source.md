# Complete source: GRWTSK.Algebra.UniversalAlgebra.Nat.Variant94b90a8a074ca629bcef7f4238e832d05385ae30ee601a2db7fe51faaa4fb0b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a182eb608008f2bcf9ca079db78061dfc0b9be2` · SHA-256 `c13b51a272efaba6b33591ba50c859909104f11589534443780be5f40fa43117`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CharZero.Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CharZero.Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"af915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Nat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Floris van Doorn (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.GroupWithZero.Nat
import Mathlib.Algebra.Ring.Defs

/-!
# The natural numbers form a semiring

This file contains the commutative semiring instance on the natural numbers.

See note [foundational algebra order theory].
-/


namespace GRWTSK.Algebra.UniversalAlgebra.CharZero.Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2

namespace Nat

instance instAddMonoidWithOne : AddMonoidWithOne ℕ where
  natCast n := n
  natCast_zero := rfl
  natCast_succ _ := rfl

instance instAddCommMonoidWithOne : AddCommMonoidWithOne ℕ where
  __ := instAddMonoidWithOne
  __ := instAddCommMonoid

instance instDistrib : Distrib ℕ where
  left_distrib := Nat.left_distrib
  right_distrib := Nat.right_distrib

instance instNonUnitalNonAssocSemiring : NonUnitalNonAssocSemiring ℕ where
  __ := instAddCommMonoid
  __ := instDistrib
  __ := instMulZeroClass

instance instNonUnitalSemiring : NonUnitalSemiring ℕ where
  __ := instNonUnitalNonAssocSemiring
  __ := instSemigroupWithZero

instance instNonAssocSemiring : NonAssocSemiring ℕ where
  __ := instNonUnitalNonAssocSemiring
  __ := instMulZeroOneClass
  __ := instAddCommMonoidWithOne

instance instSemiring : Semiring ℕ where
  __ := instNonUnitalSemiring
  __ := instNonAssocSemiring
  __ := instMonoidWithZero

instance instCommSemiring : CommSemiring ℕ where
  __ := instSemiring
  __ := instCommMonoid

instance instCharZero : CharZero ℕ where cast_injective := Function.injective_id

end Nat
```
