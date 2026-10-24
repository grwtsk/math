# isLocalHomeomorph_iff_isCoveringMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1099c28-0d89-dcc0-6005-057a5c9c4c67",
  "kind": "lemma",
  "lexical_name": "isLocalHomeomorph_iff_isCoveringMap",
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
  "slug": "islocalhomeomorph-iff-iscoveringmap--db76bfb4bf9bfbb523def957",
  "source": {
    "blob": "fe1f79d0dfe2251d25e3cc2b15de0231a2fd54c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 610,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db76bfb4bf9bfbb523def957c9d77fbca3a1b538e997791bff86b9a0535889d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1099c28-0d89-dcc0-6005-057a5c9c4c67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocalHomeomorph_iff_isCoveringMap [T2Space E] [T2Space X] [CompactSpace E] :
    IsLocalHomeomorph f ↔ IsCoveringMap f := by
  refine ⟨fun h ↦ ?_, IsCoveringMap.isLocalHomeomorph⟩
  have hf : Continuous f := by
    rw [continuous_iff_continuousAt]
    intro e
    obtain ⟨φ, hφ, rfl⟩ := h e
    exact φ.continuousAt hφ
  rw [isCoveringMap_iff_isCoveringMapOn_univ]
  apply IsCoveringMapOn.of_isLocalHomeomorphOn hf
  simpa [← isLocalHomeomorph_iff_isLocalHomeomorphOn_univ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1f79d0dfe2251d25e3cc2b15de0231a2fd54c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
