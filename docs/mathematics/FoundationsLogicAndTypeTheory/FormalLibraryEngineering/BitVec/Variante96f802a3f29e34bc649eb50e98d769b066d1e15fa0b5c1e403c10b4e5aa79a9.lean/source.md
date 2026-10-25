# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitVec.Variante96f802a3f29e34bc649eb50e98d769b066d1e15fa0b5c1e403c10b4e5aa79a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c828c10e576d64504d32f722af440cebf15ce888` · SHA-256 `6410c1af093ba37e8063d6ec1b9e9842adb52124dafa74038515e679666062bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToInt.Variant1efd45ec94a4cabe473e6fecb9c1d1763a4a2915dc4004b904838da0f3a5fe56","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1efd45ec94a4cabe473e6fecb9c1d1763a4a2915dc4004b904838da0f3a5fe56","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ToInt.Variant1efd45ec94a4cabe473e6fecb9c1d1763a4a2915dc4004b904838da0f3a5fe56","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1efd45ec94a4cabe473e6fecb9c1d1763a4a2915dc4004b904838da0f3a5fe56","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/GrindInstances/Ring/BitVec.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.GrindInstances.ToInt
import all Init.Data.BitVec.Basic
import all Init.Grind.ToInt
public import Init.Data.BitVec.Lemmas
public import Init.Grind.Ring.Basic
import Init.Data.BitVec.Bootstrap
import Init.Grind.Ring.ToInt


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToInt.Variant1efd45ec94a4cabe473e6fecb9c1d1763a4a2915dc4004b904838da0f3a5fe56

public section

namespace Lean.Grind

instance : CommRing (BitVec w) where
  nsmul := ⟨(· * ·)⟩
  zsmul := ⟨(· * ·)⟩
  add_assoc := BitVec.add_assoc
  add_comm := BitVec.add_comm
  add_zero := BitVec.add_zero
  neg_add_cancel := BitVec.add_left_neg
  mul_assoc := BitVec.mul_assoc
  mul_comm := BitVec.mul_comm
  mul_one := BitVec.mul_one
  one_mul := BitVec.one_mul
  left_distrib _ _ _ := BitVec.mul_add
  right_distrib _ _ _ := BitVec.add_mul
  zero_mul _ := BitVec.zero_mul
  mul_zero _ := BitVec.mul_zero
  sub_eq_add_neg := BitVec.sub_eq_add_neg
  pow_zero _ := BitVec.pow_zero
  pow_succ _ _ := BitVec.pow_succ
  ofNat_succ x := BitVec.ofNat_add x 1
  intCast_neg _ := BitVec.ofInt_neg
  neg_zsmul i x := by
    change (BitVec.ofInt _ (-i) * x = _)
    rw [BitVec.ofInt_neg]
    rw [BitVec.neg_mul]
    rfl
  zsmul_natCast_eq_nsmul _ _ := rfl

instance : IsCharP (BitVec w) (2 ^ w) := IsCharP.mk' _ _
  (ofNat_eq_zero_iff := fun x => by simp [BitVec.toNat_eq])

-- Verify we can derive the instances showing how `toInt` interacts with operations:
example : ToInt.Add (BitVec w) (.uint w) := inferInstance
example : ToInt.Neg (BitVec w) (.uint w) := inferInstance
example : ToInt.Sub (BitVec w) (.uint w) := inferInstance

instance : ToInt.Pow (BitVec w) (.uint w) :=
  ToInt.pow_of_semiring (by simp)

end Lean.Grind
```
