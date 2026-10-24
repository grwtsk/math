# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SymmDiff.Variant02480e5daf9f1dab300154ab6f1823632c944c6724369cc4e403dd2e67011c07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba1bc4a6725f4be957309aa319acdc1f20133cd4` · SHA-256 `4492ea1656a5aa292be541e24ea8d7e10fa125513c6d75719ca375137001fc2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MemSymmDiff.Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.MemSymmDiff.Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637","mathematical_subject":"Algebra.OrderTheory","original_sha256":"f524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/SymmDiff.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura
-/
import Mathlib.Data.Set.Operations
import Mathlib.Order.Basic
import Mathlib.Order.BooleanAlgebra
import Mathlib.Logic.Equiv.Basic
import Mathlib.Tactic.Tauto
import Mathlib.Tactic.ByContra
import Mathlib.Util.Delaborators
import Mathlib.Order.SymmDiff
import Mathlib.Data.Set.Basic

/-! # Symmetric differences of sets -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MemSymmDiff.Variantf524ee684b049a9c7705821aacfd51a26a23bdd2f86f808817b40cb198fa0637

assert_not_exists RelIso

namespace Set

universe u
variable {α : Type u} {a : α} {s t u : Set α}

open scoped symmDiff

theorem mem_symmDiff : a ∈ s ∆ t ↔ a ∈ s ∧ a ∉ t ∨ a ∈ t ∧ a ∉ s :=
  Iff.rfl

protected theorem symmDiff_def (s t : Set α) : s ∆ t = s \ t ∪ t \ s :=
  rfl

theorem symmDiff_subset_union : s ∆ t ⊆ s ∪ t :=
  @symmDiff_le_sup (Set α) _ _ _

@[simp]
theorem symmDiff_eq_empty : s ∆ t = ∅ ↔ s = t :=
  symmDiff_eq_bot

@[simp]
theorem symmDiff_nonempty : (s ∆ t).Nonempty ↔ s ≠ t :=
  nonempty_iff_ne_empty.trans symmDiff_eq_empty.not

theorem inter_symmDiff_distrib_left (s t u : Set α) : s ∩ t ∆ u = (s ∩ t) ∆ (s ∩ u) :=
  inf_symmDiff_distrib_left _ _ _

theorem inter_symmDiff_distrib_right (s t u : Set α) : s ∆ t ∩ u = (s ∩ u) ∆ (t ∩ u) :=
  inf_symmDiff_distrib_right _ _ _

theorem subset_symmDiff_union_symmDiff_left (h : Disjoint s t) : u ⊆ s ∆ u ∪ t ∆ u :=
  h.le_symmDiff_sup_symmDiff_left

theorem subset_symmDiff_union_symmDiff_right (h : Disjoint t u) : s ⊆ s ∆ t ∪ s ∆ u :=
  h.le_symmDiff_sup_symmDiff_right

end Set
```
