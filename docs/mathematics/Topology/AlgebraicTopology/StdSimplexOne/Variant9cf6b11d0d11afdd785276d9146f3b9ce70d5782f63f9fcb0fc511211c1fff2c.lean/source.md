# Complete source: GRWTSK.Topology.AlgebraicTopology.StdSimplexOne.Variant9cf6b11d0d11afdd785276d9146f3b9ce70d5782f63f9fcb0fc511211c1fff2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8fc4049f4aec1f3835d818ac9574243f7508ebe2` · SHA-256 `169796277b9040c2d0c29ceafe18b83363818a6bb3b3c52c4ffc27f83b85b343`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.ObjMk.Variant490a0bb1a953f908418eb477861d4eaa3ff4adac93091ae7f4f31d33bb11016e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"490a0bb1a953f908418eb477861d4eaa3ff4adac93091ae7f4f31d33bb11016e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.ObjMk.Variant490a0bb1a953f908418eb477861d4eaa3ff4adac93091ae7f4f31d33bb11016e","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"490a0bb1a953f908418eb477861d4eaa3ff4adac93091ae7f4f31d33bb11016e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/SimplicialSet/StdSimplexOne.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.SimplicialSet.StdSimplex
public import Mathlib.AlgebraicTopology.SimplexCategory.ToMkOne

/-!
# Simplices in `Δ[1]`

We define a bijection `SSet.stdSimplex.objMk₁` between `Fin (n + 2)` and `Δ[1] _⦋n⦌`
for any `n : ℕ`.

-/


namespace GRWTSK.Topology.AlgebraicTopology.ObjMk.Variant490a0bb1a953f908418eb477861d4eaa3ff4adac93091ae7f4f31d33bb11016e

@[expose] public section

universe u

open CategoryTheory

open scoped Simplicial

namespace SSet

namespace stdSimplex

/-- Given `i : Fin (n + 2)`, this is the `n`-simplex of `Δ[1]` which corresponds
to the monotone map `Fin (n + 1) → Fin 2` which takes `i` times the value `0`. -/
def objMk₁ {n : ℕ} (i : Fin (n + 2)) : (Δ[1] _⦋n⦌ : Type u) :=
  objMk
    { toFun j := if j.castSucc < i then 0 else 1
      monotone' j₁ j₂ h := by
        dsimp
        split_ifs <;> grind }

lemma objMk₁_apply {n : ℕ} (i : Fin (n + 2)) (j : Fin (n + 1)) :
    dsimp% objMk₁ i j = if j.castSucc < i then 0 else 1 := rfl

lemma objMk₁_apply_eq_zero_iff {n : ℕ} (i : Fin (n + 2)) (j : Fin (n + 1)) :
    dsimp% objMk₁.{u} i j = 0 ↔ j.castSucc < i :=
  SimplexCategory.toMk₁_apply_eq_zero_iff ..

lemma objMk₁_of_castSucc_lt {n : ℕ} (i : Fin (n + 2)) (j : Fin (n + 1)) (h : j.castSucc < i) :
    dsimp% objMk₁.{u} i j = 0 :=
  SimplexCategory.toMk₁_of_castSucc_lt _ _ h

lemma objMk₁_apply_eq_one_iff {n : ℕ} (i : Fin (n + 2)) (j : Fin (n + 1)) :
    dsimp% objMk₁.{u} i j = 1 ↔ i ≤ j.castSucc :=
  SimplexCategory.toMk₁_apply_eq_one_iff ..

lemma objMk₁_of_le_castSucc {n : ℕ} (i : Fin (n + 2)) (j : Fin (n + 1)) (h : i ≤ j.castSucc) :
    dsimp% objMk₁.{u} i j = 1 :=
  SimplexCategory.toMk₁_of_le_castSucc _ _ h

lemma δ_objMk₁_of_le {n : ℕ} (i : Fin (n + 3)) (j : Fin (n + 2)) (h : i ≤ j.castSucc) :
    Δ[1].δ j (objMk₁.{u} i) =
      objMk₁.{u} (i.castPred (Fin.ne_last_of_lt (lt_of_le_of_lt h j.castSucc_lt_succ))) := by
  ext k : 1
  exact ConcreteCategory.congr_hom (SimplexCategory.δ_comp_toMk₁_of_le _ _ h) k

lemma δ_objMk₁_of_lt {n : ℕ} (i : Fin (n + 3)) (j : Fin (n + 2)) (h : j.castSucc < i) :
    Δ[1].δ j (objMk₁.{u} i) = objMk₁.{u} (i.pred (Fin.ne_zero_of_lt h)) := by
  ext k : 1
  exact ConcreteCategory.congr_hom (SimplexCategory.δ_comp_toMk₁_of_lt _ _ h) k

lemma σ_objMk₁_of_le {n : ℕ} (i : Fin (n + 2)) (j : Fin (n + 1)) (h : i ≤ j.castSucc) :
    Δ[1].σ j (objMk₁.{u} i) = objMk₁ i.castSucc := by
  ext k : 1
  exact ConcreteCategory.congr_hom (SimplexCategory.σ_comp_toMk₁_of_le _ _ h) k

lemma σ_objMk₁_of_lt {n : ℕ} (i : Fin (n + 2)) (j : Fin (n + 1)) (h : j.castSucc < i) :
    Δ[1].σ j (objMk₁.{u} i) = objMk₁ i.succ := by
  ext k : 1
  exact ConcreteCategory.congr_hom (SimplexCategory.σ_comp_toMk₁_of_lt _ _ h) k

lemma objMk₁_bijective {n : ℕ} : Function.Bijective (objMk₁.{u} (n := n)) :=
  ((SimplexCategory.toMk₁Equiv (n := n)).trans objEquiv.symm).bijective

lemma objMk₁_injective {n : ℕ} : Function.Injective (objMk₁.{u} (n := n)) :=
  objMk₁_bijective.injective

lemma objMk₁_surjective {n : ℕ} : Function.Surjective (objMk₁.{u} (n := n)) :=
  objMk₁_bijective.surjective

end stdSimplex

end SSet
```
