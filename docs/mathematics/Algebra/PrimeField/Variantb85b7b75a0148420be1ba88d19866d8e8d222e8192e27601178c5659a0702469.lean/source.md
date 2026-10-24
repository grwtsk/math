# Complete source: GRWTSK.Algebra.PrimeField.Variantb85b7b75a0148420be1ba88d19866d8e8d222e8192e27601178c5659a0702469

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec843217f7448b760771fa91d5febba618c72a29` · SHA-256 `b268ba857f00fee19bdd4054a5271bc0ac9ca2a6e3387d79aa45d9a4e2274aef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SubfieldBotEqOfCharZero.Variant7d7d17b3e0313bb4c0c30cadc281af12d2c4334fb7402e764ed5b9e4239e46d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d7d17b3e0313bb4c0c30cadc281af12d2c4334fb7402e764ed5b9e4239e46d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.SubfieldBotEqOfCharZero.Variant7d7d17b3e0313bb4c0c30cadc281af12d2c4334fb7402e764ed5b9e4239e46d9","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"7d7d17b3e0313bb4c0c30cadc281af12d2c4334fb7402e764ed5b9e4239e46d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/FieldTheory/PrimeField.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Xavier Roblot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Roblot, Kenny Lau
-/
module

public import Mathlib.Algebra.Algebra.Rat
public import Mathlib.Algebra.Field.ZMod
public import Mathlib.Algebra.Field.Subfield.Basic
public import Mathlib.Tactic.NormNum.Inv
public import Mathlib.Tactic.NormNum.Pow

/-!
# Prime fields

A prime field is a field that does not contain any nontrivial subfield. Prime fields are `ℚ` in
characteristic `0` and `ZMod p` in characteristic `p` with `p` a prime number. Any field `K`
contains a unique prime field: it is the smallest field contained in `K`.

## Results

* The fields `ℚ` and `ZMod p` are prime fields. These are stated as the instances that says that
  the corresponding `Subfield` type is a `Subsingleton`.
* `Subfield.bot_eq_of_charZero` : the smallest subfield of a field of characteristic `0` is (the
  image of) `ℚ`.
* `Subfield.bot_eq_of_zMod_algebra`: the smallest subfield of a field of characteristic `p` is (the
  image of) `ZMod p`.

-/


namespace GRWTSK.Algebra.SubfieldBotEqOfCharZero.Variant7d7d17b3e0313bb4c0c30cadc281af12d2c4334fb7402e764ed5b9e4239e46d9

public section

instance : Subsingleton (Subfield ℚ) :=
  subsingleton_of_top_le_bot fun x _ ↦ by simpa using SubfieldClass.ratCast_mem (⊥ : Subfield ℚ) x

instance (p : ℕ) [hp : Fact (Nat.Prime p)] : Subsingleton (Subfield (ZMod p)) :=
  subsingleton_of_top_le_bot fun x _ ↦ by simpa using natCast_mem (⊥ : Subfield (ZMod p)) x.val

/--
The smallest subfield of a field of characteristic `0` is (the image of) `ℚ`.
-/
theorem Subfield.bot_eq_of_charZero {K : Type*} [Field K] [CharZero K] :
    (⊥ : Subfield K) = (algebraMap ℚ K).fieldRange := by
  rw [eq_comm, eq_bot_iff, ← Subfield.map_bot (algebraMap ℚ K),
    subsingleton_iff_bot_eq_top.mpr inferInstance, ← RingHom.fieldRange_eq_map]

/--
The smallest subfield of a field of characteristic `p` is (the image of) `ZMod p`.
Note that the fact that the field `K` is of characteristic `p` is stated by the fact that it is
`ZMod p`-algebra.
-/
theorem Subfield.bot_eq_of_zMod_algebra {K : Type*} (p : ℕ) [hp : Fact (Nat.Prime p)]
    [Field K] [Algebra (ZMod p) K] :
    (⊥ : Subfield K) = (algebraMap (ZMod p) K).fieldRange := by
  rw [eq_comm, eq_bot_iff, ← Subfield.map_bot (algebraMap (ZMod p) K),
    subsingleton_iff_bot_eq_top.mpr inferInstance, ← RingHom.fieldRange_eq_map]
```
