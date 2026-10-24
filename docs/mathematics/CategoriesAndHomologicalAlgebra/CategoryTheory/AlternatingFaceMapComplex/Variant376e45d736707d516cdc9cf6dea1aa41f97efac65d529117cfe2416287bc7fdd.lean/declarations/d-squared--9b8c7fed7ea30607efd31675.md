# d_squared

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8928078f8f13b7fd7608094d474f306eb793b81d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c3f3a5b-c1ed-eae0-0e2d-6409cbe28b3a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34b99759-3f3b-1824-5e92-65207292223d",
  "kind": "theorem",
  "lexical_name": "d_squared",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "d-squared--9b8c7fed7ea30607efd31675",
  "source": {
    "blob": "8928078f8f13b7fd7608094d474f306eb793b81d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b8c7fed7ea30607efd316753face1b6a4c749881e316f2d5f892c068ce2c5cc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34b99759-3f3b-1824-5e92-65207292223d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem d_squared (n : ℕ) : objD X (n + 1) ≫ objD X n = 0 := by
  -- we start by expanding d ≫ d as a double sum
  dsimp
  simp only [comp_sum, sum_comp, ← Finset.sum_product']
  -- then, we decompose the index set P into a subset S and its complement Sᶜ
  let P := Fin (n + 2) × Fin (n + 3)
  let S := Finset.univ.filter fun ij : P => (ij.2 : ℕ) ≤ (ij.1 : ℕ)
  erw [← Finset.sum_add_sum_compl S, ← eq_neg_iff_add_eq_zero, ← Finset.sum_neg_distrib]
  /- we are reduced to showing that two sums are equal, and this is obtained
    by constructing a bijection φ : S -> Sᶜ, which maps (i,j) to (j,i+1),
    and by comparing the terms -/
  let φ : ∀ ij : P, ij ∈ S → P := fun ij hij =>
    (Fin.castLT ij.2 (lt_of_le_of_lt (Finset.mem_filter.mp hij).right (Fin.is_lt ij.1)), ij.1.succ)
  apply Finset.sum_bij φ
  · -- φ(S) is contained in Sᶜ
    intro ij hij
    simp only [Finset.mem_univ, Finset.compl_filter, Finset.mem_filter, true_and_iff, Fin.val_succ,
      Fin.coe_castLT] at hij ⊢
    linarith
  · -- identification of corresponding terms in both sums
    rintro ⟨i, j⟩ hij
    dsimp
    simp only [zsmul_comp, comp_zsmul, smul_smul, ← neg_smul]
    congr 1
    · simp only [Fin.val_succ, pow_add, pow_one, mul_neg, neg_neg, mul_one]
      apply mul_comm
    · rw [CategoryTheory.SimplicialObject.δ_comp_δ'']
      simpa using hij
  · -- φ : S → Sᶜ is injective
    rintro ⟨i, j⟩ ⟨i', j'⟩ hij hij' h
    rw [Prod.mk.inj_iff]
    exact ⟨by simpa using congr_arg Prod.snd h,
      by simpa [Fin.castSucc_castLT] using congr_arg Fin.castSucc (congr_arg Prod.fst h)⟩
  · -- φ : S → Sᶜ is surjective
    rintro ⟨i', j'⟩ hij'
    simp only [Finset.mem_univ, forall_true_left, Prod.forall, ge_iff_le, Finset.compl_filter,
      not_le, Finset.mem_filter, true_and] at hij'
    refine' ⟨(j'.pred <| _, Fin.castSucc i'), _, _⟩
    · rintro rfl
      simp only [Fin.val_zero, not_lt_zero'] at hij'
    · simpa only [Finset.mem_univ, forall_true_left, Prod.forall, ge_iff_le, Finset.mem_filter,
        Fin.coe_castSucc, Fin.coe_pred, true_and] using Nat.le_pred_of_lt hij'
    · simp only [Fin.castLT_castSucc, Fin.succ_pred]
#align algebraic_topology.alternating_face_map_complex.d_squared AlgebraicTopology.AlternatingFaceMapComplex.d_squared

/-!
## Construction of the alternating face map complex functor
-/


/-- The alternating face map complex, on objects -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8928078f8f13b7fd7608094d474f306eb793b81d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
