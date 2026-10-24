# normalizedPivotFrame_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c40e3f9-98cb-5a28-74d2-fa7bff17550d",
  "kind": "theorem",
  "lexical_name": "normalizedPivotFrame_rank",
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
  "slug": "normalizedpivotframe-rank--4add19dd4920cc069eebc975",
  "source": {
    "blob": "b1f13fe7d0620709e27fa882da8e740d611cf7ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4add19dd4920cc069eebc97585341e7ea91d43ca5e3db90f08c26d729cbd9c62",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c40e3f9-98cb-5a28-74d2-fa7bff17550d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedPivotFrame_rank (I : Fin k ↪o Fin n) (A : NormalizedPivotFrame I) :
    A.val.rank = k := by
  apply rank_eq_of_columnMinor_ne_zero A.val I
  simp only [columnMinor, A.property, Matrix.det_one]
  exact one_ne_zero

/-- The geometric plane represented by an actual normalized frame. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1f13fe7d0620709e27fa882da8e740d611cf7ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
