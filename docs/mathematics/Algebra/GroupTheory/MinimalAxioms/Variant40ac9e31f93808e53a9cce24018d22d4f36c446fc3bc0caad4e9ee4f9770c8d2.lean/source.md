# Complete source: GRWTSK.Algebra.GroupTheory.MinimalAxioms.Variant40ac9e31f93808e53a9cce24018d22d4f36c446fc3bc0caad4e9ee4f9770c8d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34b09383b324eaba1bec7541b6ac9073e5b74a4b` · SHA-256 `81df425084e22e6d75faa978f13e4685540d7552628b8c5457db0f6b80a87dc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.GroupOfLeftAxioms.Variantb60aebf30c9e78332bc7d4daf6d3862ecaf494e95dda093fe373c9b40b2c6697","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b60aebf30c9e78332bc7d4daf6d3862ecaf494e95dda093fe373c9b40b2c6697","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.GroupOfLeftAxioms.Variantb60aebf30c9e78332bc7d4daf6d3862ecaf494e95dda093fe373c9b40b2c6697","mathematical_subject":"Algebra.Groups","original_sha256":"b60aebf30c9e78332bc7d4daf6d3862ecaf494e95dda093fe373c9b40b2c6697","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Group/MinimalAxioms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/

import Mathlib.Algebra.Group.Defs

/-!
# Minimal Axioms for a Group

This file defines constructors to define a group structure on a Type, while proving only three
equalities.

## Main Definitions

* `Group.ofLeftAxioms`: Define a group structure on a Type by proving `∀ a, 1 * a = a` and
  `∀ a, a⁻¹ * a = 1` and associativity.
* `Group.ofRightAxioms`: Define a group structure on a Type by proving `∀ a, a * 1 = a` and
  `∀ a, a * a⁻¹ = 1` and associativity.

-/


namespace GRWTSK.Algebra.GroupTheory.GroupOfLeftAxioms.Variantb60aebf30c9e78332bc7d4daf6d3862ecaf494e95dda093fe373c9b40b2c6697

set_option autoImplicit true

/-- Define a `Group` structure on a Type by proving `∀ a, 1 * a = a` and
`∀ a, a⁻¹ * a = 1`.
Note that this uses the default definitions for `npow`, `zpow` and `div`.
See note [reducible non-instances]. -/
@[to_additive (attr := reducible)
"Define an `AddGroup` structure on a Type by proving `∀ a, 0 + a = a` and
`∀ a, -a + a = 0`.
Note that this uses the default definitions for `nsmul`, `zsmul` and `sub`.
See note [reducible non-instances]."]
def Group.ofLeftAxioms {G : Type u} [Mul G] [Inv G] [One G]
    (assoc : ∀ a b c : G, (a * b) * c = a * (b * c))
    (one_mul : ∀ a : G, 1 * a = a)
    (mul_left_inv : ∀ a : G, a⁻¹ * a = 1) : Group G :=
  { mul_assoc := assoc,
    one_mul := one_mul,
    mul_left_inv := mul_left_inv,
    mul_one := fun a => by
      have mul_right_inv : ∀ a, a * a⁻¹ = 1 := fun a =>
        calc a * a⁻¹ = 1 * (a * a⁻¹) := (one_mul _).symm
          _ = ((a * a⁻¹)⁻¹ * (a * a⁻¹)) * (a * a⁻¹) := by
            rw [mul_left_inv]
          _ = (a * a⁻¹)⁻¹ * (a * ((a⁻¹ * a) * a⁻¹)) := by
            simp only [assoc]
          _ = 1 := by
            rw [mul_left_inv, one_mul, mul_left_inv]
      rw [← mul_left_inv a, ← assoc, mul_right_inv a, one_mul] }

/-- Define a `Group` structure on a Type by proving `∀ a, a * 1 = a` and
`∀ a, a * a⁻¹ = 1`.
Note that this uses the default definitions for `npow`, `zpow` and `div`.
See note [reducible non-instances]. -/
@[to_additive (attr := reducible)
"Define an `AddGroup` structure on a Type by proving `∀ a, a + 0 = a` and
`∀ a, a + -a = 0`.
Note that this uses the default definitions for `nsmul`, `zsmul` and `sub`.
See note [reducible non-instances]."]
def Group.ofRightAxioms {G : Type u} [Mul G] [Inv G] [One G]
    (assoc : ∀ a b c : G, (a * b) * c = a * (b * c))
    (mul_one : ∀ a : G, a * 1 = a)
    (mul_right_inv : ∀ a : G, a * a⁻¹ = 1) : Group G :=
  have mul_left_inv : ∀ a, a⁻¹ * a = 1 := fun a =>
    calc a⁻¹ * a = (a⁻¹ * a) * 1 := (mul_one _).symm
      _ = (a⁻¹ * a) * ((a⁻¹ * a) * (a⁻¹ * a)⁻¹) := by
        rw [mul_right_inv]
      _ = ((a⁻¹ * (a * a⁻¹)) * a) * (a⁻¹ * a)⁻¹ := by
        simp only [assoc]
      _ = 1 := by
        rw [mul_right_inv, mul_one, mul_right_inv]
  { mul_assoc := assoc,
    mul_one := mul_one,
    mul_left_inv := mul_left_inv,
    one_mul := fun a => by
      rw [← mul_right_inv a, assoc, mul_left_inv, mul_one] }
```
