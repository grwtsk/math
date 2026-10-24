# toTopologicalSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34e6f455baecc0940d4b2521910bdb492fd9d8dd7c5ece9a1d039e60f9349b34",
  "kind": "instance",
  "lexical_name": "toTopologicalSpace",
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
  "slug": "totopologicalspace--8a4f12d4aaddfed061a79093",
  "source": {
    "blob": "8c75d6dc02058c3177003eb1fd5c89c0ccd2eb81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 664,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a4f12d4aaddfed061a7909313ee1ca262dd67eb8643a11fe2044922b29f85eb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34e6f455baecc0940d4b2521910bdb492fd9d8dd7c5ece9a1d039e60f9349b34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 664–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance toTopologicalSpace : TopologicalSpace Z.TotalSpace :=
  fast_instance% Z.toFiberBundleCore.toTopologicalSpace

variable (b : B) (a : F)

@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean#L664).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c75d6dc02058c3177003eb1fd5c89c0ccd2eb81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
