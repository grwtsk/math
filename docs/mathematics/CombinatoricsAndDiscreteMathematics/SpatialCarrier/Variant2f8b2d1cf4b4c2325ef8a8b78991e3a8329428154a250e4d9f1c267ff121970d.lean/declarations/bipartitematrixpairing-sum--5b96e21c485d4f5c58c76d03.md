# bipartiteMatrixPairing_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee17ec28-f295-52f6-633d-4c9120d86d95",
  "kind": "theorem",
  "lexical_name": "bipartiteMatrixPairing_sum",
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
  "slug": "bipartitematrixpairing-sum--5b96e21c485d4f5c58c76d03",
  "source": {
    "blob": "d782a1a9c0189b437f21ebed88f988aaec8c53bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 325,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant2f8b2d1cf4b4c2325ef8a8b78991e3a8329428154a250e4d9f1c267ff121970d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b96e21c485d4f5c58c76d03fac71e414c7cc890f4457ae0193c159ca6afb311",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant2f8b2d1cf4b4c2325ef8a8b78991e3a8329428154a250e4d9f1c267ff121970d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee17ec28-f295-52f6-633d-4c9120d86d95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bipartiteMatrixPairing_sum
    {Index Left Right : Type*}
    [Fintype Index] [Fintype Left] [Fintype Right]
    (leftCoefficient : Left → ℂ)
    (matrices : Index → Matrix Left Right ℂ)
    (rightCoefficient : Right → ℂ) :
    bipartiteMatrixPairing leftCoefficient (∑ index, matrices index)
        rightCoefficient =
      ∑ index, bipartiteMatrixPairing leftCoefficient
        (matrices index) rightCoefficient := by
  classical
  simp only [bipartiteMatrixPairing, Matrix.sum_apply,
    Finset.mul_sum, Finset.sum_mul]
  calc
    (∑ left, ∑ right, ∑ index,
        (starRingEnd ℂ) (leftCoefficient left) *
          matrices index left right * rightCoefficient right) =
      ∑ left, ∑ index, ∑ right,
        (starRingEnd ℂ) (leftCoefficient left) *
          matrices index left right * rightCoefficient right := by
            apply Fintype.sum_congr
            intro left
            exact Finset.sum_comm
    _ = ∑ index, ∑ left, ∑ right,
        (starRingEnd ℂ) (leftCoefficient left) *
          matrices index left right * rightCoefficient right :=
      Finset.sum_comm

/-- Exact structural data for a block surgery of a bipartite cutoff matrix.

`leftBlock` and `rightBlock` are literal partitions: every index has one
block and the surjectivity fields prevent empty named blocks.  The matrices
are all expressed on the parent index types so the decomposition is an exact
matrix identity.  No cross-correlation estimate occurs in this structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant2f8b2d1cf4b4c2325ef8a8b78991e3a8329428154a250e4d9f1c267ff121970d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant2f8b2d1cf4b4c2325ef8a8b78991e3a8329428154a250e4d9f1c267ff121970d.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d782a1a9c0189b437f21ebed88f988aaec8c53bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
