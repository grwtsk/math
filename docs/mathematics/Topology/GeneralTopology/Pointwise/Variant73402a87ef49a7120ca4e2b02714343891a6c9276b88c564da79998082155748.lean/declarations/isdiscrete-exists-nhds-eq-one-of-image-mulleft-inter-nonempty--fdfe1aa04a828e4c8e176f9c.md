# IsDiscrete.exists_nhds_eq_one_of_image_mulLeft_inter_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b30147ef-22fb-f200-efef-e898917bd080",
  "kind": "lemma",
  "lexical_name": "IsDiscrete.exists_nhds_eq_one_of_image_mulLeft_inter_nonempty",
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
  "slug": "isdiscrete-exists-nhds-eq-one-of-image-mulleft-inter-nonempty--fdfe1aa04a828e4c8e176f9c",
  "source": {
    "blob": "ab9ceb3691597dacbcac8a32c3188eb54abf2b51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 434,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant73402a87ef49a7120ca4e2b02714343891a6c9276b88c564da79998082155748.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdfe1aa04a828e4c8e176f9c5ac69f567c0915e348f2b9bd2367aba57b5825d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variant73402a87ef49a7120ca4e2b02714343891a6c9276b88c564da79998082155748.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b30147ef-22fb-f200-efef-e898917bd080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma IsDiscrete.exists_nhds_eq_one_of_image_mulLeft_inter_nonempty
    (S : Subgroup G) (hS : IsDiscrete (S : Set G)) :
    ∃ U ∈ 𝓝 (1 : G), U⁻¹ = U ∧ ∀ g ∈ S, ((g * ·) '' U ∩ U).Nonempty → g = 1 := by
  obtain ⟨V, hV⟩ := nhds_inter_eq_singleton_of_mem_discrete hS S.one_mem
  obtain ⟨U, hU, -, hUinv, hUV⟩ := exists_closed_nhds_one_inv_eq_mul_subset hV.1
  refine ⟨U, hU, hUinv, fun g hgS ↦ ?_⟩
  rintro ⟨_, ⟨x, hx, rfl⟩, hgx⟩
  refine hV.2.subset ⟨hUV ?_, hgS⟩
  rw [← hUinv] at hx
  exact ⟨_, hgx, _, hx, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variant73402a87ef49a7120ca4e2b02714343891a6c9276b88c564da79998082155748.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variant73402a87ef49a7120ca4e2b02714343891a6c9276b88c564da79998082155748.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab9ceb3691597dacbcac8a32c3188eb54abf2b51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
