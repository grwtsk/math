# natDegree_det_X_add_C_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b8b542ad94e7b56602f94bf6b37949026f9167b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4000cb04-a537-b4fa-c38a-6196f6e4b57d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac0e8ce1-c8f5-b043-bf61-7b9faeae1ad4",
  "kind": "theorem",
  "lexical_name": "natDegree_det_X_add_C_le",
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
  "slug": "natdegree-det-x-add-c-le--41055bcff2527e4fabfc5ed0",
  "source": {
    "blob": "0b8b542ad94e7b56602f94bf6b37949026f9167b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 38,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41055bcff2527e4fabfc5ed015b1ab12115048372636b5cfcba4e3257229ecde",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac0e8ce1-c8f5-b043-bf61-7b9faeae1ad4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_det_X_add_C_le (A B : Matrix n n α) :
    natDegree (det ((X : α[X]) • A.map C + B.map C)) ≤ Fintype.card n := by
  rw [det_apply]
  refine' (natDegree_sum_le _ _).trans _
  refine' Multiset.max_nat_le_of_forall_le _ _ _
  simp only [forall_apply_eq_imp_iff', true_and_iff, Function.comp_apply, Multiset.map_map,
    Multiset.mem_map, exists_imp, Finset.mem_univ_val]
  intro g
  calc
    natDegree (sign g • ∏ i : n, (X • A.map C + B.map C) (g i) i) ≤
        natDegree (∏ i : n, (X • A.map C + B.map C) (g i) i) := by
      cases' Int.units_eq_one_or (sign g) with sg sg
      · rw [sg, one_smul]
      · rw [sg, Units.neg_smul, one_smul, natDegree_neg]
    _ ≤ ∑ i : n, natDegree (((X : α[X]) • A.map C + B.map C) (g i) i) :=
      (natDegree_prod_le (Finset.univ : Finset n) fun i : n => (X • A.map C + B.map C) (g i) i)
    _ ≤ Finset.univ.card • 1 := (Finset.sum_le_card_nsmul _ _ 1 fun (i : n) _ => ?_)
    _ ≤ Fintype.card n := by simp [mul_one, Algebra.id.smul_eq_mul, Finset.card_univ]

  calc
    natDegree (((X : α[X]) • A.map C + B.map C) (g i) i) =
        natDegree ((X : α[X]) * C (A (g i) i) + C (B (g i) i)) :=
      by simp
    _ ≤ max (natDegree ((X : α[X]) * C (A (g i) i))) (natDegree (C (B (g i) i))) :=
      (natDegree_add_le _ _)
    _ = natDegree ((X : α[X]) * C (A (g i) i)) :=
      (max_eq_left ((natDegree_C _).le.trans (zero_le _)))
    _ ≤ natDegree (X : α[X]) := (natDegree_mul_C_le _ _)
    _ ≤ 1 := natDegree_X_le
#align polynomial.nat_degree_det_X_add_C_le Polynomial.natDegree_det_X_add_C_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b8b542ad94e7b56602f94bf6b37949026f9167b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
