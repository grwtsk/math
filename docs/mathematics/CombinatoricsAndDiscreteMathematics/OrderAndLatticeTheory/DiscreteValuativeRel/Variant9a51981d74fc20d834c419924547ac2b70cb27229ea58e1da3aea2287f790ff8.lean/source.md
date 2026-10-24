# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.DiscreteValuativeRel.Variant9a51981d74fc20d834c419924547ac2b70cb27229ea58e1da3aea2287f790ff8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `704d2629b57cbe40aea707674d285f7de6a7820a` · SHA-256 `312338f7869ccd9519ae74c661b5895cd5650e014c772c64ef814311e5548075`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.NonemptyOrderIsoWithZeroMulIntIff.Variant6e31da79eb7f1ee448ed4ca29faef6841dd14c752d4a123ff520d5f7b2b4f588","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e31da79eb7f1ee448ed4ca29faef6841dd14c752d4a123ff520d5f7b2b4f588","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.NonemptyOrderIsoWithZeroMulIntIff.Variant6e31da79eb7f1ee448ed4ca29faef6841dd14c752d4a123ff520d5f7b2b4f588","mathematical_subject":"Algebra.OrderTheory","original_sha256":"6e31da79eb7f1ee448ed4ca29faef6841dd14c752d4a123ff520d5f7b2b4f588","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Valuation/DiscreteValuativeRel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
module

public import Mathlib.Algebra.GroupWithZero.Range
public import Mathlib.GroupTheory.ArchimedeanDensely
public import Mathlib.RingTheory.Valuation.RankOne

/-!

# Discrete Valuative Relations

Discrete valuative relations have a maximal element less than one in the value group.

In the rank-one case, this is equivalent to the value group being isomorphic to `ℤᵐ⁰`.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.NonemptyOrderIsoWithZeroMulIntIff.Variant6e31da79eb7f1ee448ed4ca29faef6841dd14c752d4a123ff520d5f7b2b4f588

public section

namespace ValuativeRel

variable {R : Type*}

open WithZero

lemma nonempty_orderIso_withZeroMul_int_iff [Semiring R] [ValuativeRel R] :
    Nonempty (ValueGroupWithZero R ≃*o ℤᵐ⁰) ↔
      IsDiscrete R ∧ IsNontrivial R ∧ MulArchimedean (ValueGroupWithZero R) := by
  constructor
  · rintro ⟨e⟩
    let x := e.symm (exp (-1))
    have hx0 : x ≠ 0 := by simp [x]
    have hx1 : x < 1 := by simp [x, ← lt_map_inv_iff, ← exp_zero]
    refine ⟨⟨x, hx1, fun y hy ↦ ?_⟩, ⟨x, hx0, hx1.ne⟩, .comap e.toMonoidHom e.strictMono⟩
    rcases eq_or_ne y 0 with rfl | hy0
    · simp
    · rw [← map_one e.symm, ← map_inv_lt_iff, ← log_lt_log (by simp [hy0]) (by simp)] at hy
      rw [← map_inv_le_iff, ← log_le_log (by simp [hy0]) (by simp)]
      simp only [OrderMonoidIso.equivLike_inv_eq_symm, OrderMonoidIso.symm_symm, log_one,
        log_exp] at hy ⊢
      linarith
  · rintro ⟨hD, hN, hM⟩
    rw [isNontrivial_iff_nontrivial_units] at hN
    rw [LinearOrderedCommGroupWithZero.discrete_iff_not_denselyOrdered]
    intro H
    obtain ⟨x, hx, hx'⟩ := hD.has_maximal_element
    obtain ⟨y, hy, hy'⟩ := exists_between hx
    exact hy.not_ge (hx' y hy')

lemma IsDiscrete.of_compatible_withZeroMulInt [Ring R] [ValuativeRel R]
    (v : Valuation R ℤᵐ⁰) [v.Compatible] : IsDiscrete R := by
  have : IsRankLeOne R := .of_compatible_mulArchimedean v
  by_cases h : IsNontrivial R
  · by_cases H : DenselyOrdered (ValueGroupWithZero R)
    · classical
      exfalso
      refine (MonoidWithZeroHom.range_nontrivial
        (ValueGroupWithZero.orderMonoidIso v).toMonoidWithZeroHom).not_subsingleton ?_
      rw [← WithZero.denselyOrdered_set_iff_subsingleton]
      exact (ValueGroupWithZero.embed_strictMono v).denselyOrdered_range
    · rw [isNontrivial_iff_nontrivial_units] at h
      rw [← LinearOrderedCommGroupWithZero.discrete_iff_not_denselyOrdered] at H
      rw [nonempty_orderIso_withZeroMul_int_iff] at H
      exact H.left
  · rw [isNontrivial_iff_nontrivial_units] at h; push Not at h
    refine ⟨⟨0, zero_lt_one, fun y hy ↦ ?_⟩⟩
    contrapose! hy
    have : 1 = Units.mk0 y hy.ne' := Subsingleton.elim _ _
    exact Units.val_le_val.mpr this.le

end ValuativeRel
```
