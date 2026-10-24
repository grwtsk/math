# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variantf5ddf438dd0d9ed3c3fb741f7695a8c616ffc5b096a79dca1f8988238e4f1db9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a7f3c0355042f1e6c8d1f5e768166a36477afcd` · SHA-256 `9389af0909ac43e82bb93fb6557186e490c026ab6e5e798682ece0247233075c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ProdEqZero.Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ProdEqZero.Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/BigOperators/GroupWithZero/Finset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Group.Support
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.Data.Set.Lattice

/-!
# Big operators on a finset in groups with zero

This file contains the results concerning the interaction of finset big operators with groups with
zero.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ProdEqZero.Variant1963c8c9754025adf43c11189b7b31f1b2ee96521830c35545c489ce87b147c4

open Function

variable {ι κ G₀ M₀ : Type*}

namespace Finset
variable [CommMonoidWithZero M₀] {p : ι → Prop} [DecidablePred p] {f : ι → M₀} {s : Finset ι}
  {i : ι}

lemma prod_eq_zero (hi : i ∈ s) (h : f i = 0) : ∏ j ∈ s, f j = 0 := by
  classical rw [← prod_erase_mul _ _ hi, h, mul_zero]

lemma prod_ite_zero :
    (∏ i ∈ s, if p i then f i else 0) = if ∀ i ∈ s, p i then ∏ i ∈ s, f i else 0 := by
  split_ifs with h
  · exact prod_congr rfl fun i hi => by simp [h i hi]
  · push_neg at h
    rcases h with ⟨i, hi, hq⟩
    exact prod_eq_zero hi (by simp [hq])

lemma prod_boole : ∏ i ∈ s, (ite (p i) 1 0 : M₀) = ite (∀ i ∈ s, p i) 1 0 := by
  rw [prod_ite_zero, prod_const_one]

lemma support_prod_subset (s : Finset ι) (f : ι → κ → M₀) :
    support (fun x ↦ ∏ i ∈ s, f i x) ⊆ ⋂ i ∈ s, support (f i) :=
  fun _ hx ↦ Set.mem_iInter₂.2 fun _ hi H ↦ hx <| prod_eq_zero hi H

variable [Nontrivial M₀] [NoZeroDivisors M₀]

lemma prod_eq_zero_iff : ∏ x ∈ s, f x = 0 ↔ ∃ a ∈ s, f a = 0 := by
  classical
    induction s using Finset.induction_on with
    | empty => exact ⟨Not.elim one_ne_zero, fun ⟨_, H, _⟩ => by simp at H⟩
    | insert _ _ ha ih => rw [prod_insert ha, mul_eq_zero, exists_mem_insert, ih]

lemma prod_ne_zero_iff : ∏ x ∈ s, f x ≠ 0 ↔ ∀ a ∈ s, f a ≠ 0 := by
  rw [Ne, prod_eq_zero_iff]
  push_neg; rfl

lemma support_prod (s : Finset ι) (f : ι → κ → M₀) :
    support (fun j ↦ ∏ i ∈ s, f i j) = ⋂ i ∈ s, support (f i) :=
  Set.ext fun x ↦ by simp [support, prod_eq_zero_iff]

end Finset

namespace Fintype
variable [Fintype ι] [CommMonoidWithZero M₀] {p : ι → Prop} [DecidablePred p] {f : ι → M₀}

lemma prod_ite_zero : (∏ i, if p i then f i else 0) = if ∀ i, p i then ∏ i, f i else 0 := by
  simp [Finset.prod_ite_zero]

lemma prod_boole : ∏ i, (ite (p i) 1 0 : M₀) = ite (∀ i, p i) 1 0 := by simp [Finset.prod_boole]

end Fintype

lemma Units.mk0_prod [CommGroupWithZero G₀] (s : Finset ι) (f : ι → G₀) (h) :
    Units.mk0 (∏ i ∈ s, f i) h =
      ∏ i ∈ s.attach, Units.mk0 (f i) fun hh ↦ h (Finset.prod_eq_zero i.2 hh) := by
  classical induction s using Finset.induction_on <;> simp [*]
```
