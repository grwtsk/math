# coeff_det_X_add_C_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b0f77a33ecbe484c4fb1b1fec9d77f1835acf2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/bacbbfbf6833280a3ab92466380c7dfe8caf67108f5de71626a4a02ed030977e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4161478-8b5f-b724-a8e7-452ba651687c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e16adce-bab2-25e2-0b45-451d21f3a70e",
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
  "slug": "coeff-det-x-add-c-card--a657f60ddc9ec0849fd18701",
  "source": {
    "blob": "8b0f77a33ecbe484c4fb1b1fec9d77f1835acf2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 68,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantbacbbfbf6833280a3ab92466380c7dfe8caf67108f5de71626a4a02ed030977e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a657f60ddc9ec0849fd187019ce75f3cce3b5f8ab29ff06a0a4128e41d2f1f9c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variantbacbbfbf6833280a3ab92466380c7dfe8caf67108f5de71626a4a02ed030977e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e16adce-bab2-25e2-0b45-451d21f3a70e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_det_X_add_C_card (A B : Matrix n n α) :
    coeff (det ((X : α[X]) • A.map C + B.map C)) (Fintype.card n) = det A := by
  rw [det_apply, det_apply, finset_sum_coeff]
  refine Finset.sum_congr rfl ?_
  simp only [Algebra.id.smul_eq_mul, Finset.mem_univ, RingHom.mapMatrix_apply, forall_true_left,
    map_apply, Pi.smul_apply]
  intro g
  convert coeff_smul (R := α) (sign g) _ _
  rw [← mul_one (Fintype.card n)]
  convert (coeff_prod_of_natDegree_le (R := α) _ _ _ _).symm
  · simp [coeff_C]
  · rintro p -
    dsimp only [add_apply, smul_apply, map_apply, smul_eq_mul]
    compute_degree

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variantbacbbfbf6833280a3ab92466380c7dfe8caf67108f5de71626a4a02ed030977e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantbacbbfbf6833280a3ab92466380c7dfe8caf67108f5de71626a4a02ed030977e.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b0f77a33ecbe484c4fb1b1fec9d77f1835acf2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
