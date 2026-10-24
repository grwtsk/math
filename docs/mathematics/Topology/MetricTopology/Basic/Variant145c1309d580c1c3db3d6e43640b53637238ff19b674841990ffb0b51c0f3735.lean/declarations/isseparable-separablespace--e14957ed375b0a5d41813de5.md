# IsSeparable.separableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e611a2b-ebe8-0dee-fd25-709b1c9a75c1",
  "kind": "theorem",
  "lexical_name": "IsSeparable.separableSpace",
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
  "slug": "isseparable-separablespace--e14957ed375b0a5d41813de5",
  "source": {
    "blob": "6d82b893419269f80478c8a70e46cecb48ca8b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 316,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e14957ed375b0a5d41813de593e87a1b8245d9dc0f9d6981ba2aedaae57fe460",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e611a2b-ebe8-0dee-fd25-709b1c9a75c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSeparable.separableSpace {s : Set α} (hs : IsSeparable s) :
    SeparableSpace s := by
  rcases hs.exists_countable_dense_subset with ⟨t, hts, htc, hst⟩
  lift t to Set s using hts
  refine ⟨⟨t, countable_of_injective_of_countable_image Subtype.coe_injective.injOn htc, ?_⟩⟩
  rwa [IsInducing.subtypeVal.dense_iff, Subtype.forall]

end Compact

end TopologicalSpace

section LebesgueNumberLemma

variable {s : Set α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d82b893419269f80478c8a70e46cecb48ca8b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
