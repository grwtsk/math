# tendsto_mul_right_approximateUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9247cd48596becdf6465ea1c472dc8a7869ed8e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a343f48b813e6f987382b85117e8436f0c0cb776a977770b3351f4aa4b361bdd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:033b3b53-20b9-623a-5768-3cd19e079dc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fdb28df-46e0-db98-473a-935830e925fa",
  "kind": "lemma",
  "lexical_name": "tendsto_mul_right_approximateUnit",
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
  "slug": "tendsto-mul-right-approximateunit--207e089d7e7c40bccf02ef4b",
  "source": {
    "blob": "9247cd48596becdf6465ea1c472dc8a7869ed8e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 268,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Varianta343f48b813e6f987382b85117e8436f0c0cb776a977770b3351f4aa4b361bdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:207e089d7e7c40bccf02ef4b6d53d618739cb908b99f34f9cd7faebfae91ca14",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximateUnit/Varianta343f48b813e6f987382b85117e8436f0c0cb776a977770b3351f4aa4b361bdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fdb28df-46e0-db98-473a-935830e925fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma tendsto_mul_right_approximateUnit (m : A) :
    Tendsto (· * m) (approximateUnit A) (𝓝 m) := by
  refine tendsto_mul_right_of_forall_nonneg_tendsto (fun m hm₁ hm₂ ↦ ?_) m
  rw [(hasBasis_approximateUnit A).tendsto_iff nhds_basis_closedBall]
  intro ε hε
  lift ε to ℝ≥0 using hε.le
  rw [coe_pos] at hε
  refine ⟨cfcₙ (fun y : ℝ≥0 ↦ 1 - (1 + y)⁻¹) (ε⁻¹ ^ 2 • m),
    ⟨cfcₙ_nonneg_of_predicate, norm_cfcₙ_one_sub_one_add_inv_lt_one (ε⁻¹ ^ 2 • m)⟩, ?_⟩
  rintro x ⟨(hx₁ : _ ≤ x), hx₂⟩
  simp only [mem_closedBall, dist_eq_norm', zero_sub, norm_neg] at hx₂ ⊢
  rw [← coe_nnnorm, coe_le_coe]
  have hx₀ : 0 ≤ x := cfcₙ_nonneg_of_predicate.trans hx₁
  rw [← inr_le_inr_iff, nnreal_cfcₙ_eq_cfc_inr _ _ (by simp [tsub_self]), inr_smul] at hx₁
  rw [← norm_inr (𝕜 := ℂ)] at hm₂ hx₂
  rw [← inr_nonneg_iff] at hx₀ hm₁
  rw [← nnnorm_inr (𝕜 := ℂ), inr_sub, inr_mul]
  generalize (x : A⁺¹) = x, (m : A⁺¹) = m at *
  set g : ℝ≥0 → ℝ≥0 := fun y ↦ 1 - (1 + y)⁻¹
  have hg : Continuous g := by
    rw [← continuousOn_univ]
    fun_prop (disch := intro _ _; positivity)
  have hg' : ContinuousOn (fun y ↦ (1 + ε⁻¹ ^ 2 • y)⁻¹) (spectrum ℝ≥0 m) :=
    ContinuousOn.inv₀ (by fun_prop) fun _ _ ↦ by positivity
  have hx : x ∈ Set.Icc 0 1 := mem_Icc_iff_norm_le_one.mpr ⟨hx₀, hx₂⟩
  have hx' : x ∈ Set.Icc _ 1 := ⟨hx₁, hx.2⟩
  refine nnnorm_sub_mul_self_le m cfc_nonneg_of_predicate hx' ?_
  suffices star m * (1 - cfc g (ε⁻¹ ^ 2 • m)) * m =
      cfc (fun y : ℝ≥0 ↦ y * (1 + ε⁻¹ ^ 2 • y)⁻¹ * y) m by
    rw [this]
    refine nnnorm_cfc_nnreal_le fun y hy ↦ ?_
    calc
      y * (1 + ε⁻¹ ^ 2 • y)⁻¹ * y = y * ε ^ 2 * (y / (ε ^ 2 + y)) := by simp [field]
      _ ≤ ε ^ 2 * 1 := by
        gcongr
        · apply mul_le_of_le_one_left'
          have hm' := hm₂.le
          rw [norm_le_one_iff_of_nonneg m hm₁, ← cfc_id' ℝ≥0 m, ← cfc_one (R := ℝ≥0) m,
            cfc_nnreal_le_iff _ _ _ (QuasispectrumRestricts.nnreal_of_nonneg hm₁)] at hm'
          exact hm' y hy
        · exact div_le_one (by positivity) |>.mpr le_add_self
      _ = ε ^ 2 := mul_one _
  rw [cfc_mul _ _ m (continuousOn_id' _ |>.fun_mul hg') (continuousOn_id' _),
    cfc_mul _ _ m (continuousOn_id' _) hg', cfc_id' .., hm₁.star_eq]
  congr
  rw [← cfc_one (R := ℝ≥0) m, ← cfc_comp_smul _ _ _ hg.continuousOn hm₁,
    ← cfc_tsub _ _ m (by simp [g]) hm₁ (by fun_prop) (Continuous.continuousOn <| by fun_prop)]
  congr! 1 with y _
  simp [g, tsub_tsub_cancel_of_le]

/-- The filter `CStarAlgebra.approximateUnit` generated by the sections
`{x | a ≤ x} ∩ closedBall 0 1` for `0 ≤ a` forms an increasing approximate unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximateUnit/Varianta343f48b813e6f987382b85117e8436f0c0cb776a977770b3351f4aa4b361bdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximateUnit/Varianta343f48b813e6f987382b85117e8436f0c0cb776a977770b3351f4aa4b361bdd.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9247cd48596becdf6465ea1c472dc8a7869ed8e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
