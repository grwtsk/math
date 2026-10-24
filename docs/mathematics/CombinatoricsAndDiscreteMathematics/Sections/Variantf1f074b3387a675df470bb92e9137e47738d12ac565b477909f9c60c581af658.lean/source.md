# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Sections.Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc437d92ea1f3414ae80b40671ad69e779481dd2` · SHA-256 `54898dcb17dff6e995cd6f25660a37e3c5d88c1698ed0bc21872a79ad32e9ecc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Sections.Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Sections.Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Multiset/Sections.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
import Mathlib.Data.Multiset.Bind


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Sections.Variantc7685a0f4915559b323be1e593db3a0076e0fd573c4c211cb51b768aaf33d38d

#align_import data.multiset.sections from "leanprover-community/mathlib"@"9003f28797c0664a49e4179487267c494477d853"

/-!
# Sections of a multiset
-/


namespace Multiset

variable {α : Type*}

section Sections

/-- The sections of a multiset of multisets `s` consists of all those multisets
which can be put in bijection with `s`, so each element is a member of the corresponding multiset.
-/

def Sections (s : Multiset (Multiset α)) : Multiset (Multiset α) :=
  Multiset.recOn s {0} (fun s _ c => s.bind fun a => c.map (Multiset.cons a)) fun a₀ a₁ _ pi => by
    simp [map_bind, bind_bind a₀ a₁, cons_swap]
#align multiset.sections Multiset.Sections

@[simp]
theorem sections_zero : Sections (0 : Multiset (Multiset α)) = {0} :=
  rfl
#align multiset.sections_zero Multiset.sections_zero

@[simp]
theorem sections_cons (s : Multiset (Multiset α)) (m : Multiset α) :
    Sections (m ::ₘ s) = m.bind fun a => (Sections s).map (Multiset.cons a) :=
  recOn_cons m s
#align multiset.sections_cons Multiset.sections_cons

theorem coe_sections :
    ∀ l : List (List α),
      Sections (l.map fun l : List α => (l : Multiset α) : Multiset (Multiset α)) =
        (l.sections.map fun l : List α => (l : Multiset α) : Multiset (Multiset α))
  | [] => rfl
  | a :: l => by
    simp
    rw [← cons_coe, sections_cons, bind_map_comm, coe_sections l]
    simp [List.sections, (· ∘ ·), List.bind]
#align multiset.coe_sections Multiset.coe_sections

@[simp]
theorem sections_add (s t : Multiset (Multiset α)) :
    Sections (s + t) = (Sections s).bind fun m => (Sections t).map ((· + ·) m) :=
  Multiset.induction_on s (by simp) fun a s ih => by
    simp [ih, bind_assoc, map_bind, bind_map]
#align multiset.sections_add Multiset.sections_add

theorem mem_sections {s : Multiset (Multiset α)} :
    ∀ {a}, a ∈ Sections s ↔ s.Rel (fun s a => a ∈ s) a := by
  induction s using Multiset.induction_on
  case empty => simp
  case cons a a' ih => simp [ih, rel_cons_left, eq_comm]
#align multiset.mem_sections Multiset.mem_sections

theorem card_sections {s : Multiset (Multiset α)} : card (Sections s) = prod (s.map card) :=
  Multiset.induction_on s (by simp) (by simp (config := { contextual := true }))
#align multiset.card_sections Multiset.card_sections

theorem prod_map_sum [CommSemiring α] {s : Multiset (Multiset α)} :
    prod (s.map sum) = sum ((Sections s).map prod) :=
  Multiset.induction_on s (by simp) fun a s ih => by
    simp [ih, map_bind, sum_map_mul_left, sum_map_mul_right]
#align multiset.prod_map_sum Multiset.prod_map_sum

end Sections

end Multiset
```
