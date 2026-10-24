# rawMomentHierarchy_three_eq_cumulants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a1afd3bf2ef95c7161c59f51540003cb21f30ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 552,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d0bc2abd096a0c2257c9cc8bad2f39c83c289a1e454a61116a9e5c7a62c554b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53da58e9-1f4c-8753-4635-344eeda621f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0124e66-85cb-4448-c013-acc852c1fdbc",
  "kind": "theorem",
  "lexical_name": "rawMomentHierarchy_three_eq_cumulants",
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
  "slug": "rawmomenthierarchy-three-eq-cumulants--3726b1cb70f8f8b066181392",
  "source": {
    "blob": "3a1afd3bf2ef95c7161c59f51540003cb21f30ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 646,
    "line": 552,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant3d0bc2abd096a0c2257c9cc8bad2f39c83c289a1e454a61116a9e5c7a62c554b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3726b1cb70f8f8b066181392679e196f9bfe67ade617c073050b457a829bbe11",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant3d0bc2abd096a0c2257c9cc8bad2f39c83c289a1e454a61116a9e5c7a62c554b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0124e66-85cb-4448-c013-acc852c1fdbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–646.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawMomentHierarchy_three_eq_cumulants
    (theta : E)
    (directions : Fin 3 → E) :
    F.rawMomentHierarchy theta 3 directions =
      F.thirdDirectionalCumulant theta directions
        +
      F.secondDirectionalCumulant theta
          ![directions 0, directions 1] *
        F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 2)
        +
      F.secondDirectionalCumulant theta
          ![directions 0, directions 2] *
        F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 1)
        +
      F.secondDirectionalCumulant theta
          ![directions 1, directions 2] *
        F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 0)
        +
      F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 0) *
        F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 1) *
        F.firstDirectionalCumulant theta
          (fun _ : Fin 1 => directions 2) := by
  simp only [F.rawMomentHierarchy_apply,
    F.rawDirectionalMoment_three,
    F.thirdDirectionalCumulant_eq_operator,
    F.secondDirectionalCumulant_eq_covariance,
    F.firstDirectionalCumulant_eq_centroid,
    Matrix.cons_val_zero, Matrix.cons_val_one]
  have h :=
    F.thirdCumulantOperator_eq_rawThird_sub_lower
      theta (directions 0) (directions 1) (directions 2)
  calc
    (∑ i : I,
      F.probability theta i *
        F.statistic i (directions 0) *
        F.statistic i (directions 1) *
        F.statistic i (directions 2))
        =
      ((∑ i : I,
        F.probability theta i *
          F.statistic i (directions 0) *
          F.statistic i (directions 1) *
          F.statistic i (directions 2))
        -
      F.covarianceOperator theta (directions 0) (directions 1) *
        F.centroid theta (directions 2)
        -
      F.covarianceOperator theta (directions 0) (directions 2) *
        F.centroid theta (directions 1)
        -
      F.covarianceOperator theta (directions 1) (directions 2) *
        F.centroid theta (directions 0)
        -
      F.centroid theta (directions 0) *
        F.centroid theta (directions 1) *
        F.centroid theta (directions 2))
        +
      F.covarianceOperator theta (directions 0) (directions 1) *
        F.centroid theta (directions 2)
        +
      F.covarianceOperator theta (directions 0) (directions 2) *
        F.centroid theta (directions 1)
        +
      F.covarianceOperator theta (directions 1) (directions 2) *
        F.centroid theta (directions 0)
        +
      F.centroid theta (directions 0) *
        F.centroid theta (directions 1) *
        F.centroid theta (directions 2) := by
          ring
    _ =
      F.thirdCumulantOperator theta
          (directions 0) (directions 1) (directions 2)
        +
      F.covarianceOperator theta (directions 0) (directions 1) *
        F.centroid theta (directions 2)
        +
      F.covarianceOperator theta (directions 0) (directions 2) *
        F.centroid theta (directions 1)
        +
      F.covarianceOperator theta (directions 1) (directions 2) *
        F.centroid theta (directions 0)
        +
      F.centroid theta (directions 0) *
        F.centroid theta (directions 1) *
        F.centroid theta (directions 2) := by
          rw [← h]

/-- The order-three proper contribution for the recursive raw family is exactly
the lower-order part of the raw third-moment expansion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant3d0bc2abd096a0c2257c9cc8bad2f39c83c289a1e454a61116a9e5c7a62c554b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant3d0bc2abd096a0c2257c9cc8bad2f39c83c289a1e454a61116a9e5c7a62c554b.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a1afd3bf2ef95c7161c59f51540003cb21f30ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
