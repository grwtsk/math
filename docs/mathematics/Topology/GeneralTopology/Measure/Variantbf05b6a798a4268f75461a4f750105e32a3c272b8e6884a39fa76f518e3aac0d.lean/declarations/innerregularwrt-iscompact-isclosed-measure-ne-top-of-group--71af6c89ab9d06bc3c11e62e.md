# innerRegularWRT_isCompact_isClosed_measure_ne_top_of_group

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87ac43c27d3a3bcfe5d1b1933c6eb2a6c7aac88d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 658,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f7df45a-7240-b9e6-dea6-eeddfed113e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2a8d564-6ea4-f819-f9eb-b94eb000c6fc",
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
  "slug": "innerregularwrt-iscompact-isclosed-measure-ne-top-of-group--71af6c89ab9d06bc3c11e62e",
  "source": {
    "blob": "87ac43c27d3a3bcfe5d1b1933c6eb2a6c7aac88d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 678,
    "line": 658,
    "path": "GRWTSK/Topology/GeneralTopology/Measure/Variantbf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71af6c89ab9d06bc3c11e62e79cc5b5262a7dd46b4cdab4e176c4df75a75ca16",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Measure/Variantbf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2a8d564-6ea4-f819-f9eb-b94eb000c6fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 658–678.

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
"In an abelian additive group every left invariant measure is also right-invariant. We don't declare
the converse as an instance, since that would loop type-class inference, and we use
`IsAddLeftInvariant` as the default hypothesis in abelian groups."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Measure/Variantbf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Measure/Variantbf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean#L658).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87ac43c27d3a3bcfe5d1b1933c6eb2a6c7aac88d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
