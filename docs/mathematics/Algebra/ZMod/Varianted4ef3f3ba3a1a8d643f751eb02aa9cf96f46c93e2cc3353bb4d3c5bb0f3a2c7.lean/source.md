# Complete source: GRWTSK.Algebra.ZMod.Varianted4ef3f3ba3a1a8d643f751eb02aa9cf96f46c93e2cc3353bb4d3c5bb0f3a2c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76f7a2f7fcba4f849dfcb6dbfb4ccdb6c338d097` · SHA-256 `d6ba7a5d266af558bfc73e01ccaa61a929f3f1dbeff7945164ee5da97c80fdcb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.MulInvCancelAux.Variant5343882be47490c292c9da2f623221d3d0ea16e0ff252f0f944b4dffb07be5c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5343882be47490c292c9da2f623221d3d0ea16e0ff252f0f944b4dffb07be5c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.MulInvCancelAux.Variant5343882be47490c292c9da2f623221d3d0ea16e0ff252f0f944b4dffb07be5c3","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"5343882be47490c292c9da2f623221d3d0ea16e0ff252f0f944b4dffb07be5c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Field/ZMod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
module

public import Mathlib.Algebra.Field.Basic
public import Mathlib.Data.ZMod.Basic

/-!
# `ZMod p` is a field
-/


namespace GRWTSK.Algebra.MulInvCancelAux.Variant5343882be47490c292c9da2f623221d3d0ea16e0ff252f0f944b4dffb07be5c3

public section

namespace ZMod
variable (p : ℕ) [hp : Fact p.Prime]

set_option backward.privateInPublic true in
private theorem mul_inv_cancel_aux (a : ZMod p) (h : a ≠ 0) : a * a⁻¹ = 1 := by
  obtain ⟨k, rfl⟩ := natCast_zmod_surjective a
  apply coe_mul_inv_eq_one
  apply Nat.Coprime.symm
  rwa [Nat.Prime.coprime_iff_not_dvd Fact.out, ← CharP.cast_eq_zero_iff (ZMod p)]

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- Field structure on `ZMod p` if `p` is prime. -/
instance : Field (ZMod p) where
  mul_inv_cancel := mul_inv_cancel_aux p
  inv_zero := inv_zero p
  nnqsmul := _
  nnqsmul_def := fun _ _ => rfl
  qsmul := _
  qsmul_def := fun _ _ => rfl

/-- `ZMod p` is an integral domain when `p` is prime. -/
instance : IsDomain (ZMod p) := by constructor

end ZMod
```
