# tendsto_card_div_pow''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c186935e-5044-d358-1e24-7f58d9c3bb30",
  "kind": "theorem",
  "lexical_name": "tendsto_card_div_pow''",
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
  "slug": "tendsto-card-div-pow--ffa00f9a5ae207249931b4f3",
  "source": {
    "blob": "2ea7846d49f9b471740e48867069f6a6e43c1cc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 238,
    "path": "GRWTSK/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffa00f9a5ae207249931b4f3827936e2aeb53354fe20785b1dcb3d12794fc3b3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c186935e-5044-d358-1e24-7f58d9c3bb30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_card_div_pow'' [FiniteDimensional ℝ E] [MeasurableSpace E] [BorelSpace E]
    {s : Set E} (hs₁ : IsBounded s) (hs₂ : MeasurableSet s)
    (hs₃ : volume (frontier ((b.ofZLatticeBasis ℝ).equivFun '' s)) = 0) :
    Tendsto (fun n : ℕ ↦ (Nat.card (s ∩ (n : ℝ)⁻¹ • L : Set E) : ℝ) / n ^ card ι)
      atTop (𝓝 (volume.real ((b.ofZLatticeBasis ℝ).equivFun '' s))) := by
  refine Tendsto.congr' ?_
    (tendsto_card_div_pow_atTop_volume ((b.ofZLatticeBasis ℝ).equivFun '' s) ?_ ?_ hs₃)
  · filter_upwards [eventually_gt_atTop 0] with n hn
    congr
    refine Nat.card_congr <| ((b.ofZLatticeBasis ℝ).equivFun.toEquiv.subtypeEquiv fun x ↦ ?_).symm
    simp_rw [Set.mem_inter_iff, ← b.ofZLatticeBasis_span ℝ, LinearEquiv.coe_toEquiv,
      Basis.equivFun_apply, Set.mem_image, DFunLike.coe_fn_eq, EmbeddingLike.apply_eq_iff_eq,
      exists_eq_right, and_congr_right_iff, Set.mem_inv_smul_set_iff₀
      (mod_cast hn.ne' : (n : ℝ) ≠ 0), ← Finsupp.coe_smul, ← map_smul, SetLike.mem_coe,
      Basis.mem_span_iff_repr_mem, Pi.basisFun_repr, implies_true]
  · rw [← NormedSpace.isVonNBounded_iff ℝ] at hs₁ ⊢
    exact Bornology.IsVonNBounded.image hs₁ ((b.ofZLatticeBasis ℝ).equivFunL : E →L[ℝ] ι → ℝ)
  · exact (b.ofZLatticeBasis ℝ).equivFunL.toHomeomorph.toMeasurableEquiv.measurableSet_image.mpr hs₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Covolume/Variant75932acc929542f698c9e32913ce883e1a4b0e25bd0d2fca0702f09bd4570393.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ea7846d49f9b471740e48867069f6a6e43c1cc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
