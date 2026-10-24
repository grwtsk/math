# hasIntegralIndicatorConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "523f90fc960adca33d7cec696a08c7962a71a154",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d85fc2d-bc21-d487-4ed2-788aad9e77b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4691c50-c37b-7a99-175e-11db1165f114",
  "kind": "theorem",
  "lexical_name": "hasIntegralIndicatorConst",
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
  "slug": "hasintegralindicatorconst--57f5bea42986bffcdfc3dca7",
  "source": {
    "blob": "523f90fc960adca33d7cec696a08c7962a71a154",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57f5bea42986bffcdfc3dca7e73a2056f083d7260bf74e5686ddb30abc8d4add",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4691c50-c37b-7a99-175e-11db1165f114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasIntegralIndicatorConst (l : IntegrationParams) (hl : l.bRiemann = false)
    {s : Set (ι → ℝ)} (hs : MeasurableSet s) (I : Box ι) (y : E) (μ : Measure (ι → ℝ))
    [IsLocallyFiniteMeasure μ] :
    HasIntegral.{u, v, v} I l (s.indicator fun _ => y) μ.toBoxAdditive.toSMul
      ((μ (s ∩ I)).toReal • y) := by
  refine' HasIntegral.of_mul ‖y‖ fun ε ε0 => _
  lift ε to ℝ≥0 using ε0.le; rw [NNReal.coe_pos] at ε0
  /- First we choose a closed set `F ⊆ s ∩ I.Icc` and an open set `U ⊇ s` such that
    both `(s ∩ I.Icc) \ F` and `U \ s` have measure less than `ε`. -/
  have A : μ (s ∩ Box.Icc I) ≠ ∞ :=
    ((measure_mono <| Set.inter_subset_right _ _).trans_lt (I.measure_Icc_lt_top μ)).ne
  have B : μ (s ∩ I) ≠ ∞ :=
    ((measure_mono <| Set.inter_subset_right _ _).trans_lt (I.measure_coe_lt_top μ)).ne
  obtain ⟨F, hFs, hFc, hμF⟩ : ∃ F, F ⊆ s ∩ Box.Icc I ∧ IsClosed F ∧ μ ((s ∩ Box.Icc I) \ F) < ε :=
    (hs.inter I.measurableSet_Icc).exists_isClosed_diff_lt A (ENNReal.coe_pos.2 ε0).ne'
  obtain ⟨U, hsU, hUo, hUt, hμU⟩ :
      ∃ U, s ∩ Box.Icc I ⊆ U ∧ IsOpen U ∧ μ U < ∞ ∧ μ (U \ (s ∩ Box.Icc I)) < ε :=
    (hs.inter I.measurableSet_Icc).exists_isOpen_diff_lt A (ENNReal.coe_pos.2 ε0).ne'
  /- Then we choose `r` so that `closed_ball x (r x) ⊆ U` whenever `x ∈ s ∩ I.Icc` and
    `closed_ball x (r x)` is disjoint with `F` otherwise. -/
  have : ∀ x ∈ s ∩ Box.Icc I, ∃ r : Ioi (0 : ℝ), closedBall x r ⊆ U := fun x hx => by
    rcases nhds_basis_closedBall.mem_iff.1 (hUo.mem_nhds <| hsU hx) with ⟨r, hr₀, hr⟩
    exact ⟨⟨r, hr₀⟩, hr⟩
  choose! rs hrsU using this
  have : ∀ x ∈ Box.Icc I \ s, ∃ r : Ioi (0 : ℝ), closedBall x r ⊆ Fᶜ := fun x hx => by
    obtain ⟨r, hr₀, hr⟩ :=
      nhds_basis_closedBall.mem_iff.1 (hFc.isOpen_compl.mem_nhds fun hx' => hx.2 (hFs hx').1)
    exact ⟨⟨r, hr₀⟩, hr⟩
  choose! rs' hrs'F using this
  set r : (ι → ℝ) → Ioi (0 : ℝ) := s.piecewise rs rs'
  refine' ⟨fun _ => r, fun c => l.rCond_of_bRiemann_eq_false hl, fun c π hπ hπp => _⟩; rw [mul_comm]
  /- Then the union of boxes `J ∈ π` such that `π.tag ∈ s` includes `F` and is included by `U`,
    hence its measure is `ε`-close to the measure of `s`. -/
  dsimp [integralSum]
  simp only [mem_closedBall, dist_eq_norm, ← indicator_const_smul_apply,
    sum_indicator_eq_sum_filter, ← sum_smul, ← sub_smul, norm_smul, Real.norm_eq_abs, ←
    Prepartition.filter_boxes, ← Prepartition.measure_iUnion_toReal]
  refine' mul_le_mul_of_nonneg_right _ (norm_nonneg y)
  set t := (π.filter (π.tag · ∈ s)).iUnion
  change abs ((μ t).toReal - (μ (s ∩ I)).toReal) ≤ ε
  have htU : t ⊆ U ∩ I := by
    simp only [TaggedPrepartition.iUnion_def, iUnion_subset_iff, TaggedPrepartition.mem_filter,
      and_imp]
    refine' fun J hJ hJs x hx => ⟨hrsU _ ⟨hJs, π.tag_mem_Icc J⟩ _, π.le_of_mem' J hJ hx⟩
    simpa only [s.piecewise_eq_of_mem _ _ hJs] using hπ.1 J hJ (Box.coe_subset_Icc hx)
  refine' abs_sub_le_iff.2 ⟨_, _⟩
  · refine' (ENNReal.le_toReal_sub B).trans (ENNReal.toReal_le_coe_of_le_coe _)
    refine' (tsub_le_tsub (measure_mono htU) le_rfl).trans (le_measure_diff.trans _)
    refine' (measure_mono fun x hx => _).trans hμU.le
    exact ⟨hx.1.1, fun hx' => hx.2 ⟨hx'.1, hx.1.2⟩⟩
  · have hμt : μ t ≠ ∞ := ((measure_mono (htU.trans (inter_subset_left _ _))).trans_lt hUt).ne
    refine' (ENNReal.le_toReal_sub hμt).trans (ENNReal.toReal_le_coe_of_le_coe _)
    refine' le_measure_diff.trans ((measure_mono _).trans hμF.le)
    rintro x ⟨⟨hxs, hxI⟩, hxt⟩
    refine' ⟨⟨hxs, Box.coe_subset_Icc hxI⟩, fun hxF => hxt _⟩
    simp only [TaggedPrepartition.iUnion_def, TaggedPrepartition.mem_filter, Set.mem_iUnion,
      exists_prop]
    rcases hπp x hxI with ⟨J, hJπ, hxJ⟩
    refine' ⟨J, ⟨hJπ, _⟩, hxJ⟩
    contrapose hxF
    refine' hrs'F _ ⟨π.tag_mem_Icc J, hxF⟩ _
    simpa only [s.piecewise_eq_of_not_mem _ _ hxF] using hπ.1 J hJπ (Box.coe_subset_Icc hxJ)
#align box_integral.has_integral_indicator_const BoxIntegral.hasIntegralIndicatorConst

/-- If `f` is a.e. equal to zero on a rectangular box, then it has McShane integral zero on this
box. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variant089b5f68a1b6ab0f1ad148ca9cbdd6c2f8ece061f97ab03a4398367e45e58a39.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `523f90fc960adca33d7cec696a08c7962a71a154` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
