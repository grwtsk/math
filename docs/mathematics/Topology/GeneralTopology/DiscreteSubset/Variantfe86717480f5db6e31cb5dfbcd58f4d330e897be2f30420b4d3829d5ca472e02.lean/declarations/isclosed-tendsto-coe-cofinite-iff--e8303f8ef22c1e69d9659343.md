# IsClosed.tendsto_coe_cofinite_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e70837c6-d575-9775-d718-7c602f681121",
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
  "slug": "isclosed-tendsto-coe-cofinite-iff--e8303f8ef22c1e69d9659343",
  "source": {
    "blob": "c3f3ea1f154904c59164564b00ca3de3977939d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 221,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantfe86717480f5db6e31cb5dfbcd58f4d330e897be2f30420b4d3829d5ca472e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8303f8ef22c1e69d96593431efc6470f5e1571a6190dfe30891ce7307105282",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiscreteSubset/Variantfe86717480f5db6e31cb5dfbcd58f4d330e897be2f30420b4d3829d5ca472e02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e70837c6-d575-9775-d718-7c602f681121`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsClosed.tendsto_coe_cofinite_iff [T1Space X] [WeaklyLocallyCompactSpace X]
    {s : Set X} (hs : IsClosed s) :
    Tendsto ((↑) : s → X) cofinite (cocompact _) ↔ IsDiscrete s :=
  ⟨fun h ↦ ⟨continuous_subtype_val.discrete_of_tendsto_cofinite_cocompact h⟩,
   fun hs' ↦ hs.tendsto_coe_cofinite_of_isDiscrete hs'⟩

end cofinite_cocompact

section codiscrete_filter

/-- Criterion for a subset `S ⊆ X` to be closed and discrete in terms of the punctured
neighbourhood filter at an arbitrary point of `X`. (Compare `isDiscrete_iff_nhds_ne`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteSubset/Variantfe86717480f5db6e31cb5dfbcd58f4d330e897be2f30420b4d3829d5ca472e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantfe86717480f5db6e31cb5dfbcd58f4d330e897be2f30420b4d3829d5ca472e02.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f3ea1f154904c59164564b00ca3de3977939d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
