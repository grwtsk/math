# toPointedCone_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91944861-0d30-859f-c028-4520a24d25f5",
  "kind": "lemma",
  "lexical_name": "toPointedCone_bot",
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
  "slug": "topointedcone-bot--57fb2d8d97d8ef9176907e91",
  "source": {
    "blob": "af5e9d4a43af76a837820dca45d6506750f8dcac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 104,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57fb2d8d97d8ef9176907e9186c411dc3a5f8a092b1bc7f9e22ed38dc96fdee4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91944861-0d30-859f-c028-4520a24d25f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, norm_cast] lemma toPointedCone_bot : (⊥ : ProperCone R E).toPointedCone = ⊥ := rfl

end T1Space

/-- The closure of image of a proper cone under an `R`-linear map is a proper cone. We
use continuous maps here so that the comap of f is also a map between proper cones. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant05ee6b83c719ce3fe44400f819cb7cce73e11700a9f99f81d1e63c7061f37dfb.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5e9d4a43af76a837820dca45d6506750f8dcac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
