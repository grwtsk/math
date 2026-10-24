# Complete source: GRWTSK.Algebra.LinearAlgebra.Basic.Variantb864f1c906da2cbbb65c69eac8fa5f9ae9d4d8be5aea0156f4a3a8db6729e8ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `328061733dc0452b8c33a847b54c97f1c0859164` · SHA-256 `818b79605f914d4cf569e6427db06bba474bdb2f0908708cc5bddcb3b2a1be8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RankQuotientEqOfLeTorsion.Variant8452021532d0e010a50f35e32f15746337923d36a8a35557514b9950bf30914b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8452021532d0e010a50f35e32f15746337923d36a8a35557514b9950bf30914b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.RankQuotientEqOfLeTorsion.Variant8452021532d0e010a50f35e32f15746337923d36a8a35557514b9950bf30914b","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"8452021532d0e010a50f35e32f15746337923d36a8a35557514b9950bf30914b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/Dimension/Torsion/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.Algebra.Module.Torsion.Basic
public import Mathlib.LinearAlgebra.Dimension.Constructions
public import Mathlib.LinearAlgebra.Dimension.Subsingleton

/-!
# Rank and torsion

## Main statements

- `rank_quotient_eq_of_le_torsion` : `rank M/N = rank M` if `N ≤ torsion M`.
- `finrank_quotient_eq_of_le_torsion` : `finrank M/N = finrank M` if `N ≤ torsion M`.
- `finrank_quotient_torsion_eq` : `finrank ℤ (M / torsion M) = finrank ℤ M` for an additive
  commutative group `M`.
-/


namespace GRWTSK.Algebra.LinearAlgebra.RankQuotientEqOfLeTorsion.Variant8452021532d0e010a50f35e32f15746337923d36a8a35557514b9950bf30914b

public section

open Submodule

theorem rank_quotient_eq_of_le_torsion {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    {M' : Submodule R M} (hN : M' ≤ torsion R M) : Module.rank R (M ⧸ M') = Module.rank R M :=
  (rank_quotient_le M').antisymm <| by
    nontriviality R
    rw [Module.rank]
    refine ciSup_le fun ⟨s, hs⟩ ↦ LinearIndependent.cardinal_le_rank (v := (M'.mkQ ·)) ?_
    rw [LinearIndepOn, linearIndependent_iff'] at hs
    simp_rw [linearIndependent_iff', ← map_smul, ← map_sum, mkQ_apply, Quotient.mk_eq_zero]
    intro t g hg i hi
    obtain ⟨r, hg⟩ := hN hg
    simp_rw [Finset.smul_sum, Submonoid.smul_def, smul_smul] at hg
    exact r.prop.2 _ (mul_comm (g i) r ▸ hs t _ hg i hi)

theorem finrank_quotient_eq_of_le_torsion {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    {M' : Submodule R M} (hN : M' ≤ torsion R M) :
    Module.finrank R (M ⧸ M') = Module.finrank R M :=
  congr_arg Cardinal.toNat (rank_quotient_eq_of_le_torsion hN)

/-- Quotienting an additive commutative group by its torsion subgroup does not change its
`ℤ`-`finrank`. -/
theorem finrank_quotient_torsion_eq {M : Type*} [AddCommGroup M] :
    Module.finrank ℤ (M ⧸ (AddCommGroup.torsion M).toIntSubmodule) = Module.finrank ℤ M :=
  finrank_quotient_eq_of_le_torsion <| le_of_eq <| by
    rw [← Submodule.torsion_int, Submodule.toAddSubgroup_toIntSubmodule]
```
