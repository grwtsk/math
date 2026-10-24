# CompactSpace.uniformContinuous_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f072382-f0ed-7e68-e0c1-5606c1d240f4",
  "kind": "theorem",
  "lexical_name": "CompactSpace.uniformContinuous_of_continuous",
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
  "slug": "compactspace-uniformcontinuous-of-continuous--767098d519121b4aa5b85308",
  "source": {
    "blob": "e1f3a2b8be3550e3e0a7a428c4615e184f342e72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:767098d519121b4aa5b853082db64464ada983569eee7f4f002fca4a6a0ebeef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f072382-f0ed-7e68-e0c1-5606c1d240f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CompactSpace.uniformContinuous_of_continuous [CompactSpace α] {f : α → β}
    (h : Continuous f) : UniformContinuous f :=
  calc map (Prod.map f f) (𝓤 α)
    = map (Prod.map f f) (𝓝ˢ (diagonal α)) := by rw [nhdsSet_diagonal_eq_uniformity]
  _ ≤ 𝓝ˢ (diagonal β) := (h.prodMap h).tendsto_nhdsSet mapsTo_prodMap_diagonal
  _ ≤ 𝓤 β := nhdsSet_diagonal_le_uniformity

/-- Heine-Cantor: a continuous function on a compact set of a uniform space is uniformly
continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f3a2b8be3550e3e0a7a428c4615e184f342e72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
