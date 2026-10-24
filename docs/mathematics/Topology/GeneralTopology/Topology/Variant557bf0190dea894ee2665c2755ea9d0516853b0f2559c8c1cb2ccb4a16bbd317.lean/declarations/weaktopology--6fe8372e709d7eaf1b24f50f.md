# WeakTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:591cf88b00bc02d0b431e9370941ac519f2ed5cfc22435437c7a2358fd3153b6",
  "kind": "def",
  "lexical_name": "WeakTopology",
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
  "slug": "weaktopology--6fe8372e709d7eaf1b24f50f",
  "source": {
    "blob": "cb2d18b18059f8849e6a65ab14d1d9b9758845b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant557bf0190dea894ee2665c2755ea9d0516853b0f2559c8c1cb2ccb4a16bbd317.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fe8372e709d7eaf1b24f50f9ec6ceacaaa5e89fabeb2a1fc5a79ae1444cc912",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant557bf0190dea894ee2665c2755ea9d0516853b0f2559c8c1cb2ccb4a16bbd317.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:591cf88b00bc02d0b431e9370941ac519f2ed5cfc22435437c7a2358fd3153b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[reducible] def WeakTopology : TopologicalSpace (AbstractMeasure X R E) :=
  .induced (fun μ f ↦ μ f) inferInstance

end Weak

variable [CompactSpace X] [NontriviallyNormedField R] [NormedAddCommGroup E] [NormedSpace R E]

/-- The strong topology on `AbstractMeasure G R E` (the topology induced by the norm). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant557bf0190dea894ee2665c2755ea9d0516853b0f2559c8c1cb2ccb4a16bbd317.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant557bf0190dea894ee2665c2755ea9d0516853b0f2559c8c1cb2ccb4a16bbd317.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb2d18b18059f8849e6a65ab14d1d9b9758845b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
