# Complete source: GRWTSK.Algebra.UniversalAlgebra.Algebra.Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d710ef84c943311fff74f46b84ba4a01e78969a` · SHA-256 `fcf8c38a5160504e192002ca7ef23faa4a4b40aaa8b9d60735da4820c6f83c3d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.AlgebraMapNonneg.Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.AlgebraMapNonneg.Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"cdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Module/Algebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Order.Module.Defs

/-!
# Ordered algebras

This file proves properties of algebras where both rings are ordered compatibly.

## TODO

`positivity` extension for `algebraMap`
-/


namespace GRWTSK.Algebra.UniversalAlgebra.AlgebraMapNonneg.Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19

variable {α β : Type*} [CommSemiring α] [PartialOrder α]

section OrderedSemiring
variable (β)
variable [Semiring β] [PartialOrder β] [IsOrderedRing β] [Algebra α β] [SMulPosMono α β] {a : α}

@[mono] lemma algebraMap_mono : Monotone (algebraMap α β) :=
  fun a₁ a₂ ha ↦ by
    simpa only [Algebra.algebraMap_eq_smul_one] using smul_le_smul_of_nonneg_right ha zero_le_one

/-- A version of `algebraMap_mono` for use by `gcongr` since it currently does not preprocess
`Monotone` conclusions. -/
@[gcongr] protected lemma GCongr.algebraMap_le_algebraMap {a₁ a₂ : α} (ha : a₁ ≤ a₂) :
    algebraMap α β a₁ ≤ algebraMap α β a₂ := algebraMap_mono _ ha

lemma algebraMap_nonneg (ha : 0 ≤ a) : 0 ≤ algebraMap α β a := by simpa using algebraMap_mono β ha

end OrderedSemiring

section StrictOrderedSemiring
variable [Semiring β] [PartialOrder β] [IsStrictOrderedRing β] [Algebra α β]

section SMulPosMono
variable [SMulPosMono α β] [SMulPosReflectLE α β] {a₁ a₂ : α}

@[simp] lemma algebraMap_le_algebraMap : algebraMap α β a₁ ≤ algebraMap α β a₂ ↔ a₁ ≤ a₂ := by
  simp [Algebra.algebraMap_eq_smul_one]

end SMulPosMono

section SMulPosStrictMono
variable [SMulPosStrictMono α β] {a a₁ a₂ : α}
variable (β)

@[mono] lemma algebraMap_strictMono : StrictMono (algebraMap α β) :=
  fun a₁ a₂ ha ↦ by
    simpa only [Algebra.algebraMap_eq_smul_one] using smul_lt_smul_of_pos_right ha zero_lt_one

/-- A version of `algebraMap_strictMono` for use by `gcongr` since it currently does not preprocess
`Monotone` conclusions. -/
@[gcongr] protected lemma GCongr.algebraMap_lt_algebraMap {a₁ a₂ : α} (ha : a₁ < a₂) :
    algebraMap α β a₁ < algebraMap α β a₂ := algebraMap_strictMono _ ha

lemma algebraMap_pos (ha : 0 < a) : 0 < algebraMap α β a := by
  simpa using algebraMap_strictMono β ha

variable {β}
variable [SMulPosReflectLT α β]

@[simp] lemma algebraMap_lt_algebraMap : algebraMap α β a₁ < algebraMap α β a₂ ↔ a₁ < a₂ := by
  simp [Algebra.algebraMap_eq_smul_one]

end SMulPosStrictMono
end StrictOrderedSemiring

namespace Mathlib.Meta.Positivity
open Lean Meta Qq Function

/-- Extension for `algebraMap`. -/
@[positivity algebraMap _ _ _]
def evalAlgebraMap : PositivityExt where eval {u β} _zβ _pβ e := do
  let ~q(@algebraMap $α _ $instα $instβ $instαβ $a) := e | throwError "not `algebraMap`"
  let pα ← synthInstanceQ q(PartialOrder $α)
  match ← core q(inferInstance) pα a with
  | .positive pa =>
    let _instαSemiring ← synthInstanceQ q(Semiring $α)
    let _instαPartialOrder ← synthInstanceQ q(PartialOrder $α)
    try
      let _instβSemiring ← synthInstanceQ q(Semiring $β)
      let _instβPartialOrder  ← synthInstanceQ q(PartialOrder $β)
      let _instβIsStrictOrderedRing ← synthInstanceQ q(IsStrictOrderedRing $β)
      let _instαβsmul ← synthInstanceQ q(SMulPosStrictMono $α $β)
      assertInstancesCommute
      return .positive q(algebraMap_pos $β $pa)
    catch _ =>
      let _instβSemiring ← synthInstanceQ q(Semiring $β)
      let _instβPartialOrder  ← synthInstanceQ q(PartialOrder $β)
      let _instβIsOrderedRing ← synthInstanceQ q(IsOrderedRing $β)
      let _instαβsmul ← synthInstanceQ q(SMulPosMono $α $β)
      assertInstancesCommute
      return .nonnegative q(algebraMap_nonneg $β <| le_of_lt $pa)
  | .nonnegative pa =>
    let _instαSemiring ← synthInstanceQ q(CommSemiring $α)
    let _instαPartialOrder ← synthInstanceQ q(PartialOrder $α)
    let _instβSemiring ← synthInstanceQ q(Semiring $β)
    let _instβPartialOrder  ← synthInstanceQ q(PartialOrder $β)
    let _instβIsOrderedRing ← synthInstanceQ q(IsOrderedRing $β)
    let _instαβsmul ← synthInstanceQ q(SMulPosMono $α $β)
    assertInstancesCommute
    return .nonnegative q(algebraMap_nonneg $β $pa)
  | _ => pure .none

example [Semiring β] [PartialOrder β] [IsOrderedRing β] [Algebra α β] [SMulPosMono α β]
    {a : α} (ha : 0 ≤ a) :
    0 ≤ algebraMap α β a := by positivity

example [Semiring β] [PartialOrder β] [IsOrderedRing β] [Algebra α β] [SMulPosMono α β]
    {a : α} (ha : 0 < a) :
    0 ≤ algebraMap α β a := by positivity

example [Semiring β] [PartialOrder β] [IsStrictOrderedRing β] [Algebra α β] [SMulPosStrictMono α β]
    {a : α} (ha : 0 < a) :
    0 < algebraMap α β a := by positivity

end Mathlib.Meta.Positivity
```
