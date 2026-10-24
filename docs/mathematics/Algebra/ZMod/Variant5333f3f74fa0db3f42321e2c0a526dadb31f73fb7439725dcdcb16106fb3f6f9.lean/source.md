# Complete source: GRWTSK.Algebra.ZMod.Variant5333f3f74fa0db3f42321e2c0a526dadb31f73fb7439725dcdcb16106fb3f6f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ed49a1f7143ed8d5b757077cc651030f81d2e18` · SHA-256 `436127adf50acd6c20c92c10fa804c4488f1a919308cd36bd997282a7d127aae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.AlgebraPrime.Variant5d03189ea8e134d7362698274fd2d425a85a3a02724d70f1c74c8be8a33ffe32","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d03189ea8e134d7362698274fd2d425a85a3a02724d70f1c74c8be8a33ffe32","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.AlgebraPrime.Variant5d03189ea8e134d7362698274fd2d425a85a3a02724d70f1c74c8be8a33ffe32","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"5d03189ea8e134d7362698274fd2d425a85a3a02724d70f1c74c8be8a33ffe32","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Algebra/ZMod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Data.ZMod.Basic

/-!
# The `ZMod n`-algebra structure on rings whose characteristic divides `n`
-/


namespace GRWTSK.Algebra.AlgebraPrime.Variant5d03189ea8e134d7362698274fd2d425a85a3a02724d70f1c74c8be8a33ffe32

assert_not_exists TwoSidedIdeal

namespace ZMod

variable (R : Type*) [Ring R]

instance (p : ℕ) : Subsingleton (Algebra (ZMod p) R) :=
  ⟨fun _ _ => Algebra.algebra_ext _ _ <| RingHom.congr_fun <| Subsingleton.elim _ _⟩

section

variable {n : ℕ} (m : ℕ) [CharP R m]

/-- The `ZMod n`-algebra structure on rings whose characteristic `m` divides `n`.
See note [reducible non-instances]. -/
abbrev algebra' (h : m ∣ n) : Algebra (ZMod n) R where
  algebraMap := ZMod.castHom h R
  smul := fun a r => cast a * r
  commutes' := fun a r =>
    show (cast a * r : R) = r * cast a by
      rcases ZMod.intCast_surjective a with ⟨k, rfl⟩
      show ZMod.castHom h R k * r = r * ZMod.castHom h R k
      rw [map_intCast, Int.cast_comm]
  smul_def' := fun _ _ => rfl

end

/-- The `ZMod p`-algebra structure on a ring of characteristic `p`. This is not an
instance since it creates a diamond with `Algebra.id`.
See note [reducible non-instances]. -/
abbrev algebra (p : ℕ) [CharP R p] : Algebra (ZMod p) R :=
  algebra' R p dvd_rfl

end ZMod
```
