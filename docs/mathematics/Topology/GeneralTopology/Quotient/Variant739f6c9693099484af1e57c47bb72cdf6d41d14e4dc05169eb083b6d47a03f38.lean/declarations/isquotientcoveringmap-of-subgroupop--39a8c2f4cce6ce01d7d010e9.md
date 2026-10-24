# isQuotientCoveringMap_of_subgroupOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f89e499-a6d2-67c9-8b23-a71d4cc41d58",
  "kind": "lemma",
  "lexical_name": "isQuotientCoveringMap_of_subgroupOp",
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
  "slug": "isquotientcoveringmap-of-subgroupop--39a8c2f4cce6ce01d7d010e9",
  "source": {
    "blob": "3348d2a4068c7336738a5f5144d377e4ea0847dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 271,
    "path": "GRWTSK/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39a8c2f4cce6ce01d7d010e9624325839f6b5b9fa190123486b8e8c66bfd604f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f89e499-a6d2-67c9-8b23-a71d4cc41d58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma isQuotientCoveringMap_of_subgroupOp [Group E] [IsTopologicalGroup E]
    (G : Subgroup E) (hG : IsDiscrete (G : Set E)) (hfG : ∀ {e₁ e₂}, f e₁ = f e₂ ↔ e₁⁻¹ * e₂ ∈ G) :
    IsQuotientCoveringMap f G.op where
  __ := hf
  apply_eq_iff_mem_orbit := hfG.trans QuotientGroup.leftRel_apply.symm
  disjoint e := have ⟨U, hU, _, disj⟩ := hG.exists_nhds_eq_one_of_image_mulRight_inter_nonempty
    ⟨_, singleton_mul_mem_nhds_of_nhds_one e hU, fun ⟨⟨s⟩, hS⟩ hs ↦ Subtype.ext <|
        MulOpposite.unop_injective <| disj _ hS <| by
      obtain ⟨_, ⟨_, ⟨_, rfl, x, hx, rfl⟩, rfl⟩, g, rfl, y, hy, he⟩ := hs
      exact ⟨y, ⟨x, hx, mul_left_cancel (he.trans <| mul_assoc ..).symm⟩, hy⟩⟩

omit hf in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3348d2a4068c7336738a5f5144d377e4ea0847dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
