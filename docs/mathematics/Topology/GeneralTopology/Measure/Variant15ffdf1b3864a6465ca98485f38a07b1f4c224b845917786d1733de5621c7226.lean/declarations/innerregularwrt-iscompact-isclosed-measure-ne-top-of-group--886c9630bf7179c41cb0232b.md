# innerRegularWRT_isCompact_isClosed_measure_ne_top_of_group

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18bf2143-8d9b-c8b6-edcb-4e81055d02cc",
  "kind": "lemma",
  "lexical_name": "innerRegularWRT_isCompact_isClosed_measure_ne_top_of_group",
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
  "slug": "innerregularwrt-iscompact-isclosed-measure-ne-top-of-group--886c9630bf7179c41cb0232b",
  "source": {
    "blob": "c08d50da36d7f6b84232d58537b55d6e13b88e26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 761,
    "line": 741,
    "path": "GRWTSK/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:886c9630bf7179c41cb0232ba20fcf4f098c2d57ceb056bdabfd6afa21465f10",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18bf2143-8d9b-c8b6-edcb-4e81055d02cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 741–761.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma innerRegularWRT_isCompact_isClosed_measure_ne_top_of_group [h : InnerRegularCompactLTTop μ] :
    InnerRegularWRT μ (fun s ↦ IsCompact s ∧ IsClosed s) (fun s ↦ MeasurableSet s ∧ μ s ≠ ∞) := by
  intro s ⟨s_meas, μs⟩ r hr
  rcases h.innerRegular ⟨s_meas, μs⟩ r hr with ⟨K, Ks, K_comp, hK⟩
  refine ⟨closure K, ?_, ⟨K_comp.closure, isClosed_closure⟩, ?_⟩
  · exact IsCompact.closure_subset_measurableSet K_comp s_meas Ks
  · rwa [K_comp.measure_closure]

end IsTopologicalGroup

section CommSemigroup

variable [CommSemigroup G]

/-- In an abelian group every left invariant measure is also right-invariant.
  We don't declare the converse as an instance, since that would loop type-class inference, and
  we use `IsMulLeftInvariant` as the default hypothesis in abelian groups. -/
@[to_additive IsAddLeftInvariant.isAddRightInvariant
/-- In an abelian additive group every left invariant measure is also right-invariant. We don't
declare the converse as an instance, since that would loop type-class inference, and we use
`IsAddLeftInvariant` as the default hypothesis in abelian groups. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Measure/Variant15ffdf1b3864a6465ca98485f38a07b1f4c224b845917786d1733de5621c7226.lean#L741).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c08d50da36d7f6b84232d58537b55d6e13b88e26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
