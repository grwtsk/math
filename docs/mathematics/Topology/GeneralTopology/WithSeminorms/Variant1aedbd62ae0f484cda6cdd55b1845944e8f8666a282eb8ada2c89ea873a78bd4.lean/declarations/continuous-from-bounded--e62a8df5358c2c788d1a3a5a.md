# continuous_from_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb3f5a35a1d5bd7947227eeedaefe143d574e674",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 621,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:784f5c65-426b-68bb-3d18-30a2e0ac7beb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a22f0f1a-b1eb-a29f-c26c-456234d0eb15",
  "kind": "theorem",
  "lexical_name": "continuous_from_bounded",
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
  "slug": "continuous-from-bounded--e62a8df5358c2c788d1a3a5a",
  "source": {
    "blob": "bb3f5a35a1d5bd7947227eeedaefe143d574e674",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 636,
    "line": 621,
    "path": "GRWTSK/Topology/GeneralTopology/WithSeminorms/Variant1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e62a8df5358c2c788d1a3a5aa99d4d0a1d28d763454be31ad6f2e35d172fe29d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithSeminorms/Variant1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a22f0f1a-b1eb-a29f-c26c-456234d0eb15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–636.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_from_bounded {p : SeminormFamily 𝕝 E ι} {q : SeminormFamily 𝕝₂ F ι'}
    {_ : TopologicalSpace E} (hp : WithSeminorms p) {_ : TopologicalSpace F} (hq : WithSeminorms q)
    (f : E →ₛₗ[τ₁₂] F) (hf : Seminorm.IsBounded p q f) : Continuous f := by
  have : TopologicalAddGroup E := hp.topologicalAddGroup
  refine continuous_of_continuous_comp hq _ fun i => ?_
  rcases hf i with ⟨s, C, hC⟩
  rw [← Seminorm.finset_sup_smul] at hC
  -- Note: we deduce continuouty of `s.sup (C • p)` from that of `∑ i in s, C • p i`.
  -- The reason is that there is no `continuous_finset_sup`, and even if it were we couldn't
  -- really use it since `ℝ` is not an `OrderBot`.
  refine Seminorm.continuous_of_le ?_ (hC.trans <| Seminorm.finset_sup_le_sum _ _)
  change Continuous (fun x ↦ Seminorm.coeFnAddMonoidHom _ _ (∑ i in s, C • p i) x)
  simp_rw [map_sum, Finset.sum_apply]
  exact (continuous_finset_sum _ fun i _ ↦ (hp.continuous_seminorm i).const_smul (C : ℝ))
#align seminorm.continuous_from_bounded Seminorm.continuous_from_bounded

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithSeminorms/Variant1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithSeminorms/Variant1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb3f5a35a1d5bd7947227eeedaefe143d574e674` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
