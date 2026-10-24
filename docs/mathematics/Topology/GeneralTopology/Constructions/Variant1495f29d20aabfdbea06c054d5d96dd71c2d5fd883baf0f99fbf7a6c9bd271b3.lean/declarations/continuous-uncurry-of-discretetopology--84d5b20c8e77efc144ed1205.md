# continuous_uncurry_of_discreteTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4be5ffb4a037990bd5741d9d4dc4612c49930e5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 527,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/1495f29d20aabfdbea06c054d5d96dd71c2d5fd883baf0f99fbf7a6c9bd271b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f2269dd-427e-58e5-5246-44f2d99d3466",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40b848db-71e6-7a48-db6d-67ca061c7c25",
  "kind": "theorem",
  "lexical_name": "continuous_uncurry_of_discreteTopology",
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
  "slug": "continuous-uncurry-of-discretetopology--84d5b20c8e77efc144ed1205",
  "source": {
    "blob": "4be5ffb4a037990bd5741d9d4dc4612c49930e5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 527,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant1495f29d20aabfdbea06c054d5d96dd71c2d5fd883baf0f99fbf7a6c9bd271b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84d5b20c8e77efc144ed12053049ced8761594689dad408effbc363c0ff0512c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant1495f29d20aabfdbea06c054d5d96dd71c2d5fd883baf0f99fbf7a6c9bd271b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40b848db-71e6-7a48-db6d-67ca061c7c25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_uncurry_of_discreteTopology [DiscreteTopology α] {f : α → β → γ}
    (hf : ∀ a, Continuous (f a)) : Continuous (uncurry f) := by
  apply continuous_iff_continuousAt.2
  rintro ⟨a, x⟩
  change map _ _ ≤ _
  rw [nhds_prod_eq, nhds_discrete, Filter.map_pure_prod]
  exact (hf a).continuousAt
#align continuous_uncurry_of_discrete_topology continuous_uncurry_of_discreteTopology

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant1495f29d20aabfdbea06c054d5d96dd71c2d5fd883baf0f99fbf7a6c9bd271b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant1495f29d20aabfdbea06c054d5d96dd71c2d5fd883baf0f99fbf7a6c9bd271b3.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4be5ffb4a037990bd5741d9d4dc4612c49930e5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
