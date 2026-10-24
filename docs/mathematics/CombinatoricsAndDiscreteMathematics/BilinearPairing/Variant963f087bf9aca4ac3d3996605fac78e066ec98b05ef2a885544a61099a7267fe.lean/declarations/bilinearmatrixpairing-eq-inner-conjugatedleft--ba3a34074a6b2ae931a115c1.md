# bilinearMatrixPairing_eq_inner_conjugatedLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7c557ab06a0b1907ee3858c065c56e20fa142dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffb718b3-aa85-103a-d1f4-d5aff89a25a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6bf82e8c-7b7f-049d-6d0e-5d482a03f51d",
  "kind": "theorem",
  "lexical_name": "bilinearMatrixPairing_eq_inner_conjugatedLeft",
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
  "slug": "bilinearmatrixpairing-eq-inner-conjugatedleft--ba3a34074a6b2ae931a115c1",
  "source": {
    "blob": "e7c557ab06a0b1907ee3858c065c56e20fa142dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba3a34074a6b2ae931a115c1e627021339940f2b4c2ff86e933608c93055233a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bf82e8c-7b7f-049d-6d0e-5d482a03f51d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bilinearMatrixPairing_eq_inner_conjugatedLeft
    {Left Right : Type*} [Fintype Left] [Fintype Right]
    (left : Left → ℂ) (matrix : Matrix Left Right ℂ)
    (right : Right → ℂ) :
    bilinearMatrixPairing left matrix right =
      ⟪conjugatedLeftEuclideanVector left,
        matrixActionEuclideanVector matrix right⟫_ℂ := by
  classical
  simp only [bilinearMatrixPairing, conjugatedLeftEuclideanVector,
    matrixActionEuclideanVector, EuclideanSpace.inner_toLp_toLp,
    dotProduct, Matrix.mulVec, Pi.star_apply, star_star]
  apply Finset.sum_congr rfl
  intro leftIndex _
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro rightIndex _
  ring

end

end Surface.Core.TypeII

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPairing/Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7c557ab06a0b1907ee3858c065c56e20fa142dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
