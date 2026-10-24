# tendsto_card_div_pow''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7810ba00e80e2e69c5122f174733290d8d03c1c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7177d568-2c50-f0df-ee55-30131ed7550b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92fbf444-53c5-5a05-1437-f553fb8a5a77",
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
  "slug": "tendsto-card-div-pow--2290700e7f9b71c14b512f6d",
  "source": {
    "blob": "7810ba00e80e2e69c5122f174733290d8d03c1c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 178,
    "path": "GRWTSK/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2290700e7f9b71c14b512f6da153fe0448d7e89cccd4590fddaf1ccd73781ced",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92fbf444-53c5-5a05-1437-f553fb8a5a77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_card_div_pow'' [FiniteDimensional ℝ E] [MeasurableSpace E] [BorelSpace E]
    {s : Set E} (hs₁ : IsBounded s) (hs₂ : MeasurableSet s)
    (hs₃ : volume (frontier ((b.ofZLatticeBasis ℝ).equivFun '' s)) = 0):
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
      (mod_cast hn.ne' : (n : ℝ) ≠ 0), ← Finsupp.coe_smul, ← LinearEquiv.map_smul, SetLike.mem_coe,
      Basis.mem_span_iff_repr_mem, Pi.basisFun_repr, implies_true]
  · rw [← NormedSpace.isVonNBounded_iff ℝ] at hs₁ ⊢
    exact Bornology.IsVonNBounded.image hs₁ ((b.ofZLatticeBasis ℝ).equivFunL : E →L[ℝ] ι → ℝ)
  · exact (b.ofZLatticeBasis ℝ).equivFunL.toHomeomorph.toMeasurableEquiv.measurableSet_image.mpr hs₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Covolume/Variant79cbc18c0df8e561df9e9839aeb38a621b2adc5b8f809db8c50510f43504bca7.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7810ba00e80e2e69c5122f174733290d8d03c1c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
