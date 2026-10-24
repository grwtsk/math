# historicalPlacementIsNonauthoritative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:806ad1d8-9ed2-515f-34c0-3918cda1e043",
  "kind": "theorem",
  "lexical_name": "historicalPlacementIsNonauthoritative",
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
  "slug": "historicalplacementisnonauthoritative--621c561a5789a499f6835469",
  "source": {
    "blob": "f36f489218ca94b2fe62a34be93b20273116a930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 40,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subsumption/Variant17efe348cf259828af8edf8ad753ea423ccb941d92089263ca293f027a3ca07c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:621c561a5789a499f68354697edf145d06c6be2dd0f830eb06ba0da713629058",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subsumption/Variant17efe348cf259828af8edf8ad753ea423ccb941d92089263ca293f027a3ca07c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:806ad1d8-9ed2-515f-34c0-3918cda1e043`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem historicalPlacementIsNonauthoritative
    {statement : Prop}
    {seed : EuclideanSeed statement}
    (item : KernelProvedEuclideanItem seed)
    (replacement : List HistoricalProvenance) :
    let relocated := item.withProvenance replacement
    relocated.theoremElement.theoremElementId =
        item.theoremElement.theoremElementId ∧
      relocated.theoremElement.sourceSeedId =
        item.theoremElement.sourceSeedId ∧
      relocated.theoremElement.proof =
        item.theoremElement.proof ∧
      (seed.withProvenance replacement).dependencies =
        seed.dependencies := by
  exact ⟨rfl, rfl, rfl, rfl⟩

/--
The provenance erasure is exact: neither a book coordinate nor a label enters
the ordinary theorem element returned by subsumption.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subsumption/Variant17efe348cf259828af8edf8ad753ea423ccb941d92089263ca293f027a3ca07c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subsumption/Variant17efe348cf259828af8edf8ad753ea423ccb941d92089263ca293f027a3ca07c.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f36f489218ca94b2fe62a34be93b20273116a930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
