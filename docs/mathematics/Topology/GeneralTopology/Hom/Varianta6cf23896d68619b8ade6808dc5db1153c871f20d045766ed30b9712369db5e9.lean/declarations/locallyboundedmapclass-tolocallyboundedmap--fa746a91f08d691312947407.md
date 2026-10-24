# LocallyBoundedMapClass.toLocallyBoundedMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7407fb63936e0a9a43a239692aa40796e1f80a888335a96bc082aac27cce3a6",
  "kind": "def",
  "lexical_name": "LocallyBoundedMapClass.toLocallyBoundedMap",
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
  "slug": "locallyboundedmapclass-tolocallyboundedmap--fa746a91f08d691312947407",
  "source": {
    "blob": "a6e1d723ac88979013ffe40bc7961e44b743420d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Varianta6cf23896d68619b8ade6808dc5db1153c871f20d045766ed30b9712369db5e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa746a91f08d6913129474078a1f71cba1e6fafad48d316a0c2f074312f595ff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hom/Varianta6cf23896d68619b8ade6808dc5db1153c871f20d045766ed30b9712369db5e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7407fb63936e0a9a43a239692aa40796e1f80a888335a96bc082aac27cce3a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LocallyBoundedMapClass.toLocallyBoundedMap [Bornology α] [Bornology β]
    [LocallyBoundedMapClass F α β] (f : F) : LocallyBoundedMap α β where
  toFun := f
  comap_cobounded_le' := comap_cobounded_le f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Varianta6cf23896d68619b8ade6808dc5db1153c871f20d045766ed30b9712369db5e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Varianta6cf23896d68619b8ade6808dc5db1153c871f20d045766ed30b9712369db5e9.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6e1d723ac88979013ffe40bc7961e44b743420d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
