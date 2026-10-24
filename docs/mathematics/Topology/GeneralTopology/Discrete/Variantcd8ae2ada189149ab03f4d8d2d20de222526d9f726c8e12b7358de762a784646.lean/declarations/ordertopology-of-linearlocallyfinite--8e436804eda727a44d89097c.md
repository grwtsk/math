# OrderTopology.of_linearLocallyFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f2ef7bf3a43579593866f88822a44b5e9462195eba62611fa5df01439d07c38",
  "kind": "instance",
  "lexical_name": "OrderTopology.of_linearLocallyFinite",
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
  "slug": "ordertopology-of-linearlocallyfinite--8e436804eda727a44d89097c",
  "source": {
    "blob": "4acd7704810695888ef965ba1ee7545150165bc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e436804eda727a44d89097c0d9c0a752ba9327206f8d4d50b85fa0fa753126b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f2ef7bf3a43579593866f88822a44b5e9462195eba62611fa5df01439d07c38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance OrderTopology.of_linearLocallyFinite
    [LinearOrder α] [LocallyFiniteOrder α] [DiscreteTopology α] : OrderTopology α :=
  haveI := LinearLocallyFiniteOrder.succOrder α
  haveI := LinearLocallyFiniteOrder.predOrder α
  inferInstance
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Discrete/Variantcd8ae2ada189149ab03f4d8d2d20de222526d9f726c8e12b7358de762a784646.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4acd7704810695888ef965ba1ee7545150165bc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
