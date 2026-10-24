# IsVonNBounded.image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c57f696a3832faba98223f5bb834de93634f0e5e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35b779ba-273f-af9f-0283-472426d7d524",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a932540-0c57-1a6e-ece7-186bdfef4b68",
  "kind": "theorem",
  "lexical_name": "IsVonNBounded.image",
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
  "slug": "isvonnbounded-image--0dade4eba58748da36b57c7c",
  "source": {
    "blob": "c57f696a3832faba98223f5bb834de93634f0e5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dade4eba58748da36b57c7cb343b8766a45be13ba3909639154b5998c9e62dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a932540-0c57-1a6e-ece7-186bdfef4b68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsVonNBounded.image {σ : 𝕜₁ →+* 𝕜₂} [RingHomSurjective σ] [RingHomIsometric σ] {s : Set E}
    (hs : IsVonNBounded 𝕜₁ s) (f : E →SL[σ] F) : IsVonNBounded 𝕜₂ (f '' s) := by
  let σ' := RingEquiv.ofBijective σ ⟨σ.injective, σ.surjective⟩
  have σ_iso : Isometry σ := AddMonoidHomClass.isometry_of_norm σ fun x => RingHomIsometric.is_iso
  have σ'_symm_iso : Isometry σ'.symm := σ_iso.right_inv σ'.right_inv
  have f_tendsto_zero := f.continuous.tendsto 0
  rw [map_zero] at f_tendsto_zero
  intro V hV
  rcases hs (f_tendsto_zero hV) with ⟨r, hrpos, hr⟩
  refine' ⟨r, hrpos, fun a ha => _⟩
  rw [← σ'.apply_symm_apply a]
  have hanz : a ≠ 0 := norm_pos_iff.mp (hrpos.trans_le ha)
  have : σ'.symm a ≠ 0 := (map_ne_zero σ'.symm.toRingHom).mpr hanz
  change _ ⊆ σ _ • _
  rw [Set.image_subset_iff, preimage_smul_setₛₗ _ _ _ f this.isUnit]
  refine' hr (σ'.symm a) _
  rwa [σ'_symm_iso.norm_map_of_map_zero (map_zero _)]
#align bornology.is_vonN_bounded.image Bornology.IsVonNBounded.image

end Image

section sequence

variable {𝕝 : Type*} [NormedField 𝕜] [NontriviallyNormedField 𝕝] [AddCommGroup E] [Module 𝕜 E]
  [Module 𝕝 E] [TopologicalSpace E] [ContinuousSMul 𝕝 E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57f696a3832faba98223f5bb834de93634f0e5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
