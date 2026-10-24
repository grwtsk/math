# Complete source: GRWTSK.Algebra.Ring.Variant3b8e39dddadf26ca0d213cc7fd91a9399df5068036b05ef20fc9e6f4a8df0473

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8731e8622aad55fd0bb5d3c3eb4bb219f856cff` · SHA-256 `5a263190bd20e3c5d8da4325563aacd1c04e56d50b7972d9d9fca6afce9448cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FunLikeMonoidWithZero.Variant20a6dbbc2d5b18bbc61586b6ddf8eb20996fdecccc41134882d11acc566ee914","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20a6dbbc2d5b18bbc61586b6ddf8eb20996fdecccc41134882d11acc566ee914","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.FunLikeMonoidWithZero.Variant20a6dbbc2d5b18bbc61586b6ddf8eb20996fdecccc41134882d11acc566ee914","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"20a6dbbc2d5b18bbc61586b6ddf8eb20996fdecccc41134882d11acc566ee914","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/FunLike/Ring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/
module

public import Mathlib.Data.FunLike.Group
public import Mathlib.Algebra.Ring.Defs
public import Mathlib.Tactic.Finiteness.Attr

/-! # Ring instances for `FunLike` types
In this file we define various instances related to ring for `FunLike` types.

Note that currently, these are not registered as instances, but only `abbrev`s to avoid long
typeclass searches.
-/


namespace GRWTSK.Algebra.FunLikeMonoidWithZero.Variant20a6dbbc2d5b18bbc61586b6ddf8eb20996fdecccc41134882d11acc566ee914

public section

variable {F α : Type*}

section MonoidWithZero

variable [FunLike F α α] [Zero F] [One F] [Mul F] [Zero α]
  [IsZeroApply F α α] [IsOneApplyEqSelf F α] [IsMulApplyEqComp F α]
  [ZeroHomClass F α α]

/-- A `FunLike` type with `(f + g) x = f x + g x` and `(f * g) x = f (g x)` is a `MonoidWithZero`
if `α` is a `MonoidWithZero`. -/
protected abbrev FunLike.monoidWithZero : MonoidWithZero F where
  mul_zero f := by apply DFunLike.ext; simp
  zero_mul _ := by apply DFunLike.ext; simp
  mul_one _ := by apply DFunLike.ext; simp
  one_mul _ := by apply DFunLike.ext; simp
  mul_assoc _ _ _ := by apply DFunLike.ext; simp

end MonoidWithZero

section Semiring

variable [FunLike F α α] [Zero F] [One F] [Mul F] [Add F] [AddCommMonoid α]
  [IsZeroApply F α α] [IsAddApply F α α] [IsOneApplyEqSelf F α] [IsMulApplyEqComp F α]
  [SMul ℕ F] [IsSMulApply ℕ F α α] [AddMonoidHomClass F α α] [NatCast F] [IsNatCastApply F α]

/-- A `FunLike` type with `(f + g) x = f x + g x` and `(f * g) x = f (g x)` is a `Semiring` if `α`
is a `Semiring`. -/
protected abbrev FunLike.semiring : Semiring F where
  __ := FunLike.monoidWithZero
  __ := FunLike.addCommMonoid
  left_distrib f g h := by apply DFunLike.ext; simp
  right_distrib _ _ _ := by apply DFunLike.ext; simp
  natCast_zero := by apply DFunLike.ext; simp
  natCast_succ n := by apply DFunLike.ext; simp [succ_nsmul]

end Semiring

section Ring

variable [FunLike F α α] [Zero F] [One F] [Mul F] [Add F] [Neg F] [Sub F]
  [AddCommGroup α]
  [IsZeroApply F α α] [IsAddApply F α α] [IsOneApplyEqSelf F α] [IsMulApplyEqComp F α]
  [IsNegApply F α α] [IsSubApply F α α]
  [SMul ℕ F] [IsSMulApply ℕ F α α]
  [SMul ℤ F] [IsSMulApply ℤ F α α] [AddMonoidHomClass F α α]
  [NatCast F] [IsNatCastApply F α] [IntCast F] [IsIntCastApply F α]

/-- A `FunLike` type with `(f + g) x = f x + g x` and `(f * g) x = f (g x)` is a `Ring` if `α` is a
`Ring`. -/
protected abbrev FunLike.ring : Ring F where
  __ := FunLike.semiring
  __ := FunLike.addCommGroup
  intCast_ofNat _ := by apply DFunLike.ext; simp
  intCast_negSucc n := by apply DFunLike.ext; simp [succ_nsmul]

end Ring
```
