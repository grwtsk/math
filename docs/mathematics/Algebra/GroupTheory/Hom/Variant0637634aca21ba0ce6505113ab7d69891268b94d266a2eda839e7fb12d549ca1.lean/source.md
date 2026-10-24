# Complete source: GRWTSK.Algebra.GroupTheory.Hom.Variant0637634aca21ba0ce6505113ab7d69891268b94d266a2eda839e7fb12d549ca1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7668c9ab5baf4f6b466d43c47085948cf76ee159` · SHA-256 `dd58ee373036cd7345b3c2a97c06bccb14f3e2949bcaf05e89786f15ec703264`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MapDvd.Variant1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MapDvd.Variant1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f","mathematical_subject":"Algebra.Groups","original_sha256":"1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Divisibility/Hom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["root_references_require_identity_review","same_file_root_reference_mapping","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Floris van Doorn, Amelia Livingston, Yury Kudryashov,
Neil Strickland, Aaron Anderson
-/
import Mathlib.Algebra.Divisibility.Basic
import Mathlib.Algebra.Group.Hom.Defs

/-!
# Mapping divisibility across multiplication-preserving homomorphisms

## Main definitions

* `map_dvd`

## Tags

divisibility, divides
-/


namespace GRWTSK.Algebra.GroupTheory.MapDvd.Variant1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f

attribute [local simp] mul_assoc mul_comm mul_left_comm

variable {M N : Type*}

theorem map_dvd [Semigroup M] [Semigroup N] {F : Type*} [FunLike F M N] [MulHomClass F M N]
    (f : F) {a b} : a ∣ b → f a ∣ f b
  | ⟨c, h⟩ => ⟨f c, h.symm ▸ map_mul f a c⟩

theorem MulHom.map_dvd [Semigroup M] [Semigroup N] (f : M →ₙ* N) {a b} : a ∣ b → f a ∣ f b :=
  _root_.GRWTSK.Algebra.GroupTheory.MapDvd.Variant1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f.map_dvd f

theorem MonoidHom.map_dvd [Monoid M] [Monoid N] (f : M →* N) {a b} : a ∣ b → f a ∣ f b :=
  _root_.GRWTSK.Algebra.GroupTheory.MapDvd.Variant1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f.map_dvd f
```
