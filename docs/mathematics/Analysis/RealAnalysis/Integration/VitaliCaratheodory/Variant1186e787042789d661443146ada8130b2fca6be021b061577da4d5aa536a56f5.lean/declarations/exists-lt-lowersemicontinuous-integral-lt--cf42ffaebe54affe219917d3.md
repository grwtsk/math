# exists_lt_lowerSemicontinuous_integral_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d80913873fa0b783accfad293d215b8870aad78b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 458,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efde3340-3875-67b1-6a0a-df7a7e8193a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:316ff27a-c37d-ae3e-4e81-39bb67cf61d8",
  "kind": "theorem",
  "lexical_name": "exists_lt_lowerSemicontinuous_integral_lt",
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
  "slug": "exists-lt-lowersemicontinuous-integral-lt--cf42ffaebe54affe219917d3",
  "source": {
    "blob": "d80913873fa0b783accfad293d215b8870aad78b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 536,
    "line": 458,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf42ffaebe54affe219917d3656078ca3f83aaf7737bd5e3392cb361732ca870",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:316ff27a-c37d-ae3e-4e81-39bb67cf61d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–536.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lt_lowerSemicontinuous_integral_lt [SigmaFinite μ] (f : α → ℝ) (hf : Integrable f μ)
    {ε : ℝ} (εpos : 0 < ε) :
    ∃ g : α → EReal,
      (∀ x, (f x : EReal) < g x) ∧
      LowerSemicontinuous g ∧
      Integrable (fun x => EReal.toReal (g x)) μ ∧
      (∀ᵐ x ∂μ, g x < ⊤) ∧ (∫ x, EReal.toReal (g x) ∂μ) < (∫ x, f x ∂μ) + ε := by
  let δ : ℝ≥0 := ⟨ε / 2, (half_pos εpos).le⟩
  have δpos : 0 < δ := half_pos εpos
  let fp : α → ℝ≥0 := fun x => Real.toNNReal (f x)
  have int_fp : Integrable (fun x => (fp x : ℝ)) μ := hf.real_toNNReal
  rcases exists_lt_lowerSemicontinuous_integral_gt_nnreal fp int_fp δpos with
    ⟨gp, fp_lt_gp, gpcont, gp_lt_top, gp_integrable, gpint⟩
  let fm : α → ℝ≥0 := fun x => Real.toNNReal (-f x)
  have int_fm : Integrable (fun x => (fm x : ℝ)) μ := hf.neg.real_toNNReal
  rcases exists_upperSemicontinuous_le_integral_le fm int_fm δpos with
    ⟨gm, gm_le_fm, gmcont, gm_integrable, gmint⟩
  let g : α → EReal := fun x => (gp x : EReal) - gm x
  have ae_g : ∀ᵐ x ∂μ, (g x).toReal = (gp x : EReal).toReal - (gm x : EReal).toReal := by
    filter_upwards [gp_lt_top] with _ hx
    rw [EReal.toReal_sub] <;> simp [hx.ne]
  refine' ⟨g, ?lt, ?lsc, ?int, ?aelt, ?intlt⟩
  case int =>
    show Integrable (fun x => EReal.toReal (g x)) μ
    rw [integrable_congr ae_g]
    convert gp_integrable.sub gm_integrable
    simp
  case intlt =>
    show (∫ x : α, (g x).toReal ∂μ) < (∫ x : α, f x ∂μ) + ε;
    exact
      calc
        (∫ x : α, (g x).toReal ∂μ) = ∫ x : α, EReal.toReal (gp x) - EReal.toReal (gm x) ∂μ :=
          integral_congr_ae ae_g
        _ = (∫ x : α, EReal.toReal (gp x) ∂μ) - ∫ x : α, ↑(gm x) ∂μ := by
          simp only [EReal.toReal_coe_ennreal, ENNReal.coe_toReal]
          exact integral_sub gp_integrable gm_integrable
        _ < (∫ x : α, ↑(fp x) ∂μ) + ↑δ - ∫ x : α, ↑(gm x) ∂μ := by
          apply sub_lt_sub_right
          convert gpint
          simp only [EReal.toReal_coe_ennreal]
        _ ≤ (∫ x : α, ↑(fp x) ∂μ) + ↑δ - ((∫ x : α, ↑(fm x) ∂μ) - δ) := (sub_le_sub_left gmint _)
        _ = (∫ x : α, f x ∂μ) + 2 * δ := by
          simp_rw [integral_eq_integral_pos_part_sub_integral_neg_part hf]; ring
        _ = (∫ x : α, f x ∂μ) + ε := by congr 1; field_simp [mul_comm]
  case aelt =>
    show ∀ᵐ x : α ∂μ, g x < ⊤
    filter_upwards [gp_lt_top] with ?_ hx
    simp only [sub_eq_add_neg, Ne.def, (EReal.add_lt_top _ _).ne, lt_top_iff_ne_top,
      lt_top_iff_ne_top.1 hx, EReal.coe_ennreal_eq_top_iff, not_false_iff, EReal.neg_eq_top_iff,
      EReal.coe_ennreal_ne_bot]
  case lt =>
    show ∀ x, (f x : EReal) < g x
    intro x
    rw [EReal.coe_real_ereal_eq_coe_toNNReal_sub_coe_toNNReal (f x)]
    refine' EReal.sub_lt_sub_of_lt_of_le _ _ _ _
    · simp only [EReal.coe_ennreal_lt_coe_ennreal_iff]; exact fp_lt_gp x
    · simp only [ENNReal.coe_le_coe, EReal.coe_ennreal_le_coe_ennreal_iff]
      exact gm_le_fm x
    · simp only [EReal.coe_ennreal_ne_bot, Ne.def, not_false_iff]
    · simp only [EReal.coe_nnreal_ne_top, Ne.def, not_false_iff]
  case lsc =>
    show LowerSemicontinuous g
    apply LowerSemicontinuous.add'
    · exact continuous_coe_ennreal_ereal.comp_lowerSemicontinuous gpcont fun x y hxy =>
          EReal.coe_ennreal_le_coe_ennreal_iff.2 hxy
    · apply continuous_neg.comp_upperSemicontinuous_antitone _ fun x y hxy =>
          EReal.neg_le_neg_iff.2 hxy
      dsimp
      apply continuous_coe_ennreal_ereal.comp_upperSemicontinuous _ fun x y hxy =>
          EReal.coe_ennreal_le_coe_ennreal_iff.2 hxy
      exact ENNReal.continuous_coe.comp_upperSemicontinuous gmcont fun x y hxy =>
          ENNReal.coe_le_coe.2 hxy
    · intro x
      exact EReal.continuousAt_add (by simp) (by simp)
#align measure_theory.exists_lt_lower_semicontinuous_integral_lt MeasureTheory.exists_lt_lowerSemicontinuous_integral_lt

/-- **Vitali-Carathéodory Theorem**: given an integrable real function `f`, there exists an
integrable function `g < f` which is upper semicontinuous, with integral arbitrarily close to that
of `f`. This function has to be `EReal`-valued in general. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VitaliCaratheodory/Variant1186e787042789d661443146ada8130b2fca6be021b061577da4d5aa536a56f5.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d80913873fa0b783accfad293d215b8870aad78b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
