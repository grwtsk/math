# instCompletelyPositiveMapClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d992d3120e0897fae496093d170f463216969963ba77f8e874eb7495ccaf1b67",
  "kind": "instance",
  "lexical_name": "instCompletelyPositiveMapClass",
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
  "slug": "instcompletelypositivemapclass--26d8203cfd093affbc4f1886",
  "source": {
    "blob": "d063b47d8785a7bae4a137b65f371f4a08ecba7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 160,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CompletelyPositiveMap/Variante4206aab66aa56de230e5f09f1b68204bff226c9ac454635cae5be95c1a922c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26d8203cfd093affbc4f1886aa0de7e2adf816e58fe3ca33af2c4fc451ada0fc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CompletelyPositiveMap/Variante4206aab66aa56de230e5f09f1b68204bff226c9ac454635cae5be95c1a922c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d992d3120e0897fae496093d170f463216969963ba77f8e874eb7495ccaf1b67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCompletelyPositiveMapClass : CompletelyPositiveMapClass F A₁ A₂ where
  map_cstarMatrix_nonneg' φ k M hM := by
    change 0 ≤ mapₙₐ (.ofClass φ) M
    exact map_nonneg _ hM

end NonUnitalStarAlgHomClass
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CompletelyPositiveMap/Variante4206aab66aa56de230e5f09f1b68204bff226c9ac454635cae5be95c1a922c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CompletelyPositiveMap/Variante4206aab66aa56de230e5f09f1b68204bff226c9ac454635cae5be95c1a922c4.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d063b47d8785a7bae4a137b65f371f4a08ecba7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
