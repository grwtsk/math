# IsVonNBounded.image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:baa5013d-05a8-7aad-3ba4-0ae74cc32e81",
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
  "slug": "isvonnbounded-image--e2445b5e6b0c93e01a664afe",
  "source": {
    "blob": "8c49cd1856d66addd45ccc716974270a850b87b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2445b5e6b0c93e01a664afee3115e0c6542f8900afbca15ac5d5a3adf1d12ae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:baa5013d-05a8-7aad-3ba4-0ae74cc32e81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–154.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c49cd1856d66addd45ccc716974270a850b87b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
