# initFacetConfigs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa7d85e9b77bfd433c0e7c92a0275f1cdf58ac4bd66d9c5c86b5122069fffc3c",
  "kind": "def",
  "lexical_name": "initFacetConfigs",
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
  "slug": "initfacetconfigs--fe71fbb414a224d2a44963d9",
  "source": {
    "blob": "c7a81b1b4cc6ffc7abb40ef3d320287476b339fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitFacets/Variant7b04c35f6051976cb919e253a735c3ee451752c7a76fab93f0f6ba016e3261d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe71fbb414a224d2a44963d980ea26f6c0e60b56489eaf1ccc6168aba2c53107",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitFacets/Variant7b04c35f6051976cb919e253a735c3ee451752c7a76fab93f0f6ba016e3261d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa7d85e9b77bfd433c0e7c92a0275f1cdf58ac4bd66d9c5c86b5122069fffc3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def initFacetConfigs : FacetConfigMap :=
  DNameMap.empty
  |> insert Module.initFacetConfigs
  |> insert Package.initFacetConfigs
  |> insert LeanLib.initFacetConfigs
  |> insert LeanExe.initFacetConfigs
  |> insert ExternLib.initFacetConfigs
  |> insert InputFile.initFacetConfigs
  |> insert InputDir.initFacetConfigs
where
  insert {k} (group : DNameMap (KFacetConfig k)) map :=
    group.foldl (init := map) fun m _ v => m.insert v.toFacetConfig
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitFacets/Variant7b04c35f6051976cb919e253a735c3ee451752c7a76fab93f0f6ba016e3261d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitFacets/Variant7b04c35f6051976cb919e253a735c3ee451752c7a76fab93f0f6ba016e3261d7.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7a81b1b4cc6ffc7abb40ef3d320287476b339fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
