# IsClosed.tendsto_coe_cofinite_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa549508-5a3d-7272-62b0-aeef54d72a56",
  "kind": "lemma",
  "lexical_name": "IsClosed.tendsto_coe_cofinite_iff",
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
  "slug": "isclosed-tendsto-coe-cofinite-iff--2c908f466b206f5f87e82027",
  "source": {
    "blob": "45d7db780c6f6e51ae8d5c4bf115b981e0f92a85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c908f466b206f5f87e820276649fe29d1055453ce37c774add7c9f513b79c0e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa549508-5a3d-7272-62b0-aeef54d72a56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsClosed.tendsto_coe_cofinite_iff [T1Space X] [WeaklyLocallyCompactSpace X]
    {s : Set X} (hs : IsClosed s) :
    Tendsto ((↑) : s → X) cofinite (cocompact _) ↔ DiscreteTopology s :=
  ⟨continuous_subtype_val.discrete_of_tendsto_cofinite_cocompact,
   fun _ ↦ hs.tendsto_coe_cofinite_of_discreteTopology inferInstance⟩

end cofinite_cocompact

section codiscrete_filter

variable [TopologicalSpace X]

/-- Criterion for a subset `S ⊆ X` to be closed and discrete in terms of the punctured
neighbourhood filter at an arbitrary point of `X`. (Compare `discreteTopology_subtype_iff`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variant0f7f0b07093a97798735ffbac8097a46f5d2a8092907694d5f4fb0669e3978fd.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45d7db780c6f6e51ae8d5c4bf115b981e0f92a85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
