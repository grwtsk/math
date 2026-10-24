# coeff_det_X_add_C_card

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
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:093aaf1a-b699-96be-2d17-290cb7917481",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c115569b-05a7-0d6a-420a-31ee647fab20",
  "kind": "theorem",
  "lexical_name": "coeff_det_X_add_C_card",
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
  "slug": "coeff-det-x-add-c-card--83a86a33f80fd1d7e879f7e7",
  "source": {
    "blob": "0b8b542ad94e7b56602f94bf6b37949026f9167b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 80,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83a86a33f80fd1d7e879f7e7a18fac23d6ec29a5b370a3eb1f12003e6407c810",
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

Occurrence: `result:c115569b-05a7-0d6a-420a-31ee647fab20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_det_X_add_C_card (A B : Matrix n n α) :
    coeff (det ((X : α[X]) • A.map C + B.map C)) (Fintype.card n) = det A := by
  rw [det_apply, det_apply, finset_sum_coeff]
  refine' Finset.sum_congr rfl _
  simp only [Algebra.id.smul_eq_mul, Finset.mem_univ, RingHom.mapMatrix_apply, forall_true_left,
    map_apply, Pi.smul_apply]
  intro g
  convert coeff_smul (R := α) (sign g) _ _
  rw [← mul_one (Fintype.card n)]
  convert (coeff_prod_of_natDegree_le (R := α) _ _ _ _).symm
  · simp [coeff_C]
  · rintro p -
    refine' (natDegree_add_le _ _).trans _
    simpa [Pi.smul_apply, map_apply, Algebra.id.smul_eq_mul, X_mul_C, natDegree_C,
      max_eq_left, zero_le'] using (natDegree_C_mul_le _ _).trans (natDegree_X_le (R := α))
#align polynomial.coeff_det_X_add_C_card Polynomial.coeff_det_X_add_C_card

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b8b542ad94e7b56602f94bf6b37949026f9167b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
