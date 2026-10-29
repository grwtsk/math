-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProdNonneg.Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ProdNonneg.Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2","mathematical_subject":"Computation.DataStructures","original_sha256":"227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/BigOperators/GroupWithZero/Multiset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Ruben Van de Velde. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ruben Van de Velde, Daniel Weber
-/
import Mathlib.Algebra.BigOperators.Group.Multiset.Defs
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.List

/-!
# Big operators on a multiset in ordered groups with zeros

This file contains the results concerning the interaction of multiset big operators with ordered
groups with zeros.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProdNonneg.Variant227e9ff2dd7f0f765af9b9674e0548f29ebb38767491a7c0365defbef37812e2

namespace Multiset

variable {R : Type*} [CommMonoidWithZero R] [PartialOrder R] [ZeroLEOneClass R] [PosMulMono R]

lemma prod_nonneg {s : Multiset R} (h : ∀ a ∈ s, 0 ≤ a) : 0 ≤ s.prod := by
  cases s using Quotient.ind
  simp only [quot_mk_to_coe, mem_coe, prod_coe] at *
  apply List.prod_nonneg h

lemma one_le_prod {s : Multiset R} (h : ∀ a ∈ s, 1 ≤ a) : 1 ≤ s.prod := by
  cases s using Quotient.ind
  simp only [quot_mk_to_coe, mem_coe, prod_coe] at *
  apply List.one_le_prod h

theorem prod_map_le_prod_map₀ {ι : Type*} {s : Multiset ι} (f : ι → R) (g : ι → R)
    (h0 : ∀ i ∈ s, 0 ≤ f i) (h : ∀ i ∈ s, f i ≤ g i) :
    (map f s).prod ≤ (map g s).prod := by
  cases s using Quotient.ind
  simp only [quot_mk_to_coe, mem_coe, map_coe, prod_coe] at *
  apply List.prod_map_le_prod_map₀ f g h0 h

theorem prod_map_le_pow_card {F L : Type*} [FunLike F L R] {f : F} {r : R} {t : Multiset L}
    (hf0 : ∀ x ∈ t, 0 ≤ f x) (hf : ∀ x ∈ t, f x ≤ r) :
    (map f t).prod ≤ r ^ card t := by
  induction t using Quotient.inductionOn
  simp_all [List.prod_map_le_pow_length₀]

omit [PosMulMono R]
variable [PosMulStrictMono R] [NeZero (1 : R)]

lemma prod_pos {s : Multiset R} (h : ∀ a ∈ s, 0 < a) : 0 < s.prod := by
  cases s using Quotient.ind
  simp only [quot_mk_to_coe, mem_coe, map_coe, prod_coe] at *
  apply List.prod_pos h

theorem prod_map_lt_prod_map {ι : Type*} {s : Multiset ι} (hs : s ≠ 0)
    (f : ι → R) (g : ι → R) (h0 : ∀ i ∈ s, 0 < f i) (h : ∀ i ∈ s, f i < g i) :
    (map f s).prod < (map g s).prod := by
  cases s using Quotient.ind
  simp only [quot_mk_to_coe, mem_coe, map_coe, prod_coe, ne_eq, coe_eq_zero] at *
  apply List.prod_map_lt_prod_map hs f g h0 h

end Multiset
