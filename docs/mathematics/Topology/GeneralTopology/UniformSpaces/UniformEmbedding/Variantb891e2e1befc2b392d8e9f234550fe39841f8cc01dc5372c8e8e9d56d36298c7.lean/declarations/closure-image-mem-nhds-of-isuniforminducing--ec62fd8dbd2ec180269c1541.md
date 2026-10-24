# closure_image_mem_nhds_of_isUniformInducing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed6fe22f-c7a7-0720-7b15-5c9ae238c9a1",
  "kind": "theorem",
  "lexical_name": "closure_image_mem_nhds_of_isUniformInducing",
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
  "slug": "closure-image-mem-nhds-of-isuniforminducing--ec62fd8dbd2ec180269c1541",
  "source": {
    "blob": "525c5aab94ef608eafc2c73d11eb2e92229a3d71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 258,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantb891e2e1befc2b392d8e9f234550fe39841f8cc01dc5372c8e8e9d56d36298c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec62fd8dbd2ec180269c15418763b699302316886637b9aa415fe73d3b875753",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantb891e2e1befc2b392d8e9f234550fe39841f8cc01dc5372c8e8e9d56d36298c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed6fe22f-c7a7-0720-7b15-5c9ae238c9a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_image_mem_nhds_of_isUniformInducing {s : Set (α × α)} {e : α → β} (b : β)
    (he₁ : IsUniformInducing e) (he₂ : IsDenseInducing e) (hs : s ∈ 𝓤 α) :
    ∃ a, closure (e '' { a' | (a, a') ∈ s }) ∈ 𝓝 b := by
  obtain ⟨U, ⟨hU, hUo, hsymm⟩, hs⟩ :
    ∃ U, (U ∈ 𝓤 β ∧ IsOpen U ∧ IsSymmetricRel U) ∧ Prod.map e e ⁻¹' U ⊆ s := by
      rwa [← he₁.comap_uniformity, (uniformity_hasBasis_open_symmetric.comap _).mem_iff] at hs
  rcases he₂.dense.mem_nhds (UniformSpace.ball_mem_nhds b hU) with ⟨a, ha⟩
  refine ⟨a, mem_of_superset ?_ (closure_mono <| image_subset _ <| UniformSpace.ball_mono hs a)⟩
  have ho : IsOpen (UniformSpace.ball (e a) U) := UniformSpace.isOpen_ball (e a) hUo
  refine mem_of_superset (ho.mem_nhds <| (UniformSpace.mem_ball_symmetry hsymm).2 ha) fun y hy => ?_
  refine mem_closure_iff_nhds.2 fun V hV => ?_
  rcases he₂.dense.mem_nhds (inter_mem hV (ho.mem_nhds hy)) with ⟨x, hxV, hxU⟩
  exact ⟨e x, hxV, mem_image_of_mem e hxU⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantb891e2e1befc2b392d8e9f234550fe39841f8cc01dc5372c8e8e9d56d36298c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantb891e2e1befc2b392d8e9f234550fe39841f8cc01dc5372c8e8e9d56d36298c7.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `525c5aab94ef608eafc2c73d11eb2e92229a3d71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
