# fullyFaithfulCompactlyGeneratedToCondensedSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9a4b7b84b120b9bda8e406131d02fc73dadde3d6fcf930db54669c97902212b",
  "kind": "def",
  "lexical_name": "fullyFaithfulCompactlyGeneratedToCondensedSet",
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
  "slug": "fullyfaithfulcompactlygeneratedtocondensedset--43fab7e0f2288e1738676f73",
  "source": {
    "blob": "8a8cec319605e53783c43e01d50cd5b893844f6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43fab7e0f2288e1738676f73c3bd4f526f756f4d109be92896a6e3c1bd863160",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9a4b7b84b120b9bda8e406131d02fc73dadde3d6fcf930db54669c97902212b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fullyFaithfulCompactlyGeneratedToCondensedSet :
    compactlyGeneratedToCondensedSet.FullyFaithful :=
  compactlyGeneratedAdjunction.fullyFaithfulROfIsIsoCounit

end CondensedSet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variantf5a024a7d3a4df05e88128deea3693c2c1ea6118b20fda668bf1b570cf83f3ef.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a8cec319605e53783c43e01d50cd5b893844f6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
