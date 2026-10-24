# instInnerRegularCompactLTTopOfIsCompletelyPseudoMetrizableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:538e004f67a628576673410e6e27b0764f1e01a145628c41c542135a1d842e18",
  "kind": "instance",
  "lexical_name": "instInnerRegularCompactLTTopOfIsCompletelyPseudoMetrizableSpace",
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
  "slug": "instinnerregularcompactlttopofiscompletelypseudometrizablespace--7b361c90f117c8319bdb09aa",
  "source": {
    "blob": "31c164d3cc1eabefc8433e0833f0fb992f4b2cd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 188,
    "path": "GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b361c90f117c8319bdb09aacd551522bd7ab728afbcd595db3f275360183e11",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RegularityCompacts/Variant619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:538e004f67a628576673410e6e27b0764f1e01a145628c41c542135a1d842e18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instInnerRegularCompactLTTopOfIsCompletelyPseudoMetrizableSpace
    [TopologicalSpace α] [SecondCountableTopology α] [IsCompletelyPseudoMetrizableSpace α]
    [BorelSpace α] (μ : Measure α) :
    μ.InnerRegularCompactLTTop := by
  constructor
  intro A ⟨hA1, hA2⟩ r hr
  have := Fact.mk hA2.lt_top
  have hA2' : (μ.restrict A) A ≠ ⊤ := by
    rwa [Measure.restrict_apply_self]
  have hr' : r < μ.restrict A A := by
    rwa [Measure.restrict_apply_self]
  obtain ⟨K, ⟨hK1, hK2, hK3⟩⟩ := MeasurableSet.exists_lt_isCompact_of_ne_top hA1 hA2' hr'
  use K, hK1, hK2
  rwa [Measure.restrict_eq_self μ hK1] at hK3

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RegularityCompacts/Variant619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RegularityCompacts/Variant619bf517192adecf955f277fc98c2b94ae46ff03b98ce767e6ec9d516e04ef94.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31c164d3cc1eabefc8433e0833f0fb992f4b2cd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
