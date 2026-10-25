# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ValidDate.Variant31eb9c85ee9f0fd062d1211d795c67eda68ce3a04aa247fd43eea0f619097921

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70772142dc5037cb0f64e3da2f3a1d5cd40f51eb` · SHA-256 `3c7b2de39a5bb2f0ffa27e768abf19c58e58050c6890dfb596d71c862674a224`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DayOfYear.Variant0673a0e82741f9479019333c2621a1ba11f582718a35988e298379c361a99c16","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0673a0e82741f9479019333c2621a1ba11f582718a35988e298379c361a99c16","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DayOfYear.Variant0673a0e82741f9479019333c2621a1ba11f582718a35988e298379c361a99c16","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0673a0e82741f9479019333c2621a1ba11f582718a35988e298379c361a99c16","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Time/Date/ValidDate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time.Date.Unit.Month
import all Std.Time.Date.Unit.Month
import Init.Data.Bool


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DayOfYear.Variant0673a0e82741f9479019333c2621a1ba11f582718a35988e298379c361a99c16

public section

namespace Std
namespace Time
open Internal
open Month.Ordinal

set_option linter.all true

/--
Represents a valid date for a given year, considering whether it is a leap year. Example: `(2, 29)`
is valid only if `leap` is `true`.
-/
@[expose] def ValidDate (leap : Bool) := { val : Month.Ordinal × Day.Ordinal // Valid leap (Prod.fst val) (Prod.snd val) }

instance : Inhabited (ValidDate l) where
  default := ⟨⟨1, 1⟩, (by cases l <;> decide)⟩

attribute [local instance] lexOrd

instance : DecidableEq (ValidDate leap) := Subtype.instDecidableEq

instance : Ord (ValidDate leap) where
  compare a b := compare a.val b.val

instance : OrientedOrd (ValidDate leap) where
  eq_swap := OrientedOrd.eq_swap (α := Month.Ordinal × Day.Ordinal)

instance : TransOrd (ValidDate leap) where
  isLE_trans := TransOrd.isLE_trans (α := Month.Ordinal × Day.Ordinal)

instance : LawfulEqOrd (ValidDate leap) where
  eq_of_compare := Subtype.ext ∘ LawfulEqOrd.eq_of_compare (α := Month.Ordinal × Day.Ordinal)

namespace ValidDate

/--
Transforms a tuple of a `Month` and a `Day` into a `Day.Ordinal.OfYear`.
-/
def dayOfYear (ordinal : ValidDate leap) : Day.Ordinal.OfYear leap :=
  let days := cumulativeDays leap ordinal.val.fst
  let proof := cumulativeDays_le leap ordinal.val.fst
  let bounded := Bounded.LE.mk days.toInt proof |>.addBounds ordinal.val.snd
  match leap, bounded with
  | true, bounded => bounded
  | false, bounded => bounded

set_option backward.isDefEq.respectTransparency false in
/--
Transforms a `Day.Ordinal.OfYear` into a tuple of a `Month` and a `Day`.
-/
def ofOrdinal (ordinal : Day.Ordinal.OfYear leap) : ValidDate leap :=
    let rec go (idx : Month.Ordinal) (acc : Int) (h : ordinal.val > acc) (p : acc = (cumulativeDays leap idx).val) : ValidDate leap :=
      let monthDays := days leap idx
      if h₁ : ordinal.val ≤ acc + monthDays.val then
        let bounded := Bounded.LE.mk ordinal.val (And.intro h h₁) |>.sub acc
        let bounded : Bounded.LE 1 monthDays.val := bounded.cast (by omega) (by omega)
        let days₁ : Day.Ordinal := ⟨bounded.val, And.intro bounded.property.left (Int.le_trans bounded.property.right monthDays.property.right)⟩
        ⟨⟨idx, days₁⟩, Int.le_trans bounded.property.right (by simp +zetaDelta)⟩
      else by
        let h₂ := Int.not_le.mp h₁

        have h₃ : idx.val < 12 := Int.not_le.mp <| λh₃ => by
          have h₅ := ordinal.property.right
          let eq := Int.eq_iff_le_and_ge.mpr (And.intro idx.property.right h₃)
          simp [monthDays, days, eq] at h₂
          simp [cumulativeDays, eq] at p
          simp [p] at h₂
          cases leap
          all_goals (simp at h₂; simp_all)
          · have h₂ : 365 < ordinal.val := h₂
            omega
          · have h₂ : 366 < ordinal.val := h₂
            omega

        let idx₂ := idx.truncateTop (Int.le_sub_one_of_lt h₃) |>.addTop 1 (by decide)
        refine go idx₂ (acc + monthDays.val) h₂ ?_
        simp [monthDays, p]
        rw [difference_eq (Int.le_of_lt_add_one h₃)]

      termination_by 12 - idx.val.toNat
      decreasing_by
        simp_wf
        simp [Bounded.LE.addTop]
        let gt0 : idx.val ≥ 0 := Int.le_trans (by decide) idx.property.left
        refine Nat.sub_lt_sub_left (Int.toNat_lt gt0 |>.mpr h₃) ?_
        let toNat_lt_lt {n z : Int} (h : 0 ≤ z) (h₁ : 0 ≤ n) : z.toNat < n.toNat ↔ z < n := by
          rw [← Int.not_le, ← Nat.not_le, ← Int.ofNat_le, Int.toNat_of_nonneg h, Int.toNat_of_nonneg h₁]
        rw [toNat_lt_lt (by omega) (by omega)]
        omega

    go 1 0 (Int.le_trans (by decide) ordinal.property.left) (by cases leap <;> decide)

end ValidDate
end Time
end Std
```
