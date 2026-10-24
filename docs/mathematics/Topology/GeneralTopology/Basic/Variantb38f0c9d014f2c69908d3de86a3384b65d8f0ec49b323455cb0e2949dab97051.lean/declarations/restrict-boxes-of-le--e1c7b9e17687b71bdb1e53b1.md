# restrict_boxes_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38d79412-2933-2ec8-c939-6405a8929617",
  "kind": "theorem",
  "lexical_name": "restrict_boxes_of_le",
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
  "slug": "restrict-boxes-of-le--e1c7b9e17687b71bdb1e53b1",
  "source": {
    "blob": "61b1912b18fe576f2d4fa513ec6b0e85187d0247",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 469,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1c7b9e17687b71bdb1e53b103bc315c54a2785c029dbdcf9f0e951f479b56f9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38d79412-2933-2ec8-c939-6405a8929617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict_boxes_of_le (π : Prepartition I) (h : I ≤ J) : (π.restrict J).boxes = π.boxes := by
  classical
  simp only [restrict, ofWithBot, eraseNone_eq_biUnion]
  refine Finset.image_biUnion.trans ?_
  refine (Finset.biUnion_congr rfl ?_).trans Finset.biUnion_singleton_eq_self
  intro J' hJ'
  rw [inf_of_le_right, ← WithBot.some_eq_coe, Option.toFinset_some]
  exact WithBot.coe_le_coe.2 ((π.le_of_mem hJ').trans h)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b1912b18fe576f2d4fa513ec6b0e85187d0247` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
