# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:893dd1adcf987aa45a5b668f3a6a19a0f73f646d69e710d3aa64806859993968",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fcd0c3126f24cd46b0264b34",
  "source": {
    "blob": "229f9f7bcec84d7fc5fadb885583409f82989077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 53,
    "path": "GRWTSK/Topology/ArchimedeanDiscrete/Variantd8da81818c2687e7f4ec30ae681cce41a1c755f8fd6a34993d100a0ad4f607ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcd0c3126f24cd46b0264b34e8f1a9dc77f62a2db3ec1cb06d7f77dc2aac1324",
  "verification": {
    "reference": "docs/verification/Topology/ArchimedeanDiscrete/Variantd8da81818c2687e7f4ec30ae681cce41a1c755f8fd6a34993d100a0ad4f607ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:893dd1adcf987aa45a5b668f3a6a19a0f73f646d69e710d3aa64806859993968`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [DiscreteTopology G] : IsCyclic G := by
  nontriviality G
  exact LinearOrderedCommGroup.isCyclic_iff_not_denselyOrdered.mpr fun h ↦
    have := h.subsingleton_of_discreteTopology; false_of_nontrivial_of_subsingleton G

/-- In an Archimedean linearly ordered group (with the order topology), a subgroup is
discrete iff it is cyclic. -/
@[to_additive /-- In an Archimedean linearly ordered additive group (with the order topology), a
subgroup is discrete iff it is cyclic. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/ArchimedeanDiscrete/Variantd8da81818c2687e7f4ec30ae681cce41a1c755f8fd6a34993d100a0ad4f607ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/ArchimedeanDiscrete/Variantd8da81818c2687e7f4ec30ae681cce41a1c755f8fd6a34993d100a0ad4f607ec.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `229f9f7bcec84d7fc5fadb885583409f82989077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
