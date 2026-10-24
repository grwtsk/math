# lintegral_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a866e79d6e525d1d7bdbfbfeb2574af4639840e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 327,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3af29ffb-910a-b36d-bf69-5e6f6b4b084c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30132d32-14d7-9544-8fc2-0373cc83c604",
  "kind": "theorem",
  "lexical_name": "lintegral_iSup",
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
  "slug": "lintegral-isup--e2696f20a863ee0b321b0126",
  "source": {
    "blob": "a866e79d6e525d1d7bdbfbfeb2574af4639840e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 327,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2696f20a863ee0b321b0126c7d0c1bf8116009d7bc1eb9de5994eb8d7dbc6d4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30132d32-14d7-9544-8fc2-0373cc83c604`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_iSup {f : ℕ → α → ℝ≥0∞} (hf : ∀ n, Measurable (f n)) (h_mono : Monotone f) :
    ∫⁻ a, ⨆ n, f n a ∂μ = ⨆ n, ∫⁻ a, f n a ∂μ := by
  set c : ℝ≥0 → ℝ≥0∞ := (↑)
  set F := fun a : α => ⨆ n, f n a
  have _ : Measurable F := measurable_iSup hf
  refine' le_antisymm _ (iSup_lintegral_le _)
  rw [lintegral_eq_nnreal]
  refine' iSup_le fun s => iSup_le fun hsf => _
  refine' ENNReal.le_of_forall_lt_one_mul_le fun a ha => _
  rcases ENNReal.lt_iff_exists_coe.1 ha with ⟨r, rfl, _⟩
  have ha : r < 1 := ENNReal.coe_lt_coe.1 ha
  let rs := s.map fun a => r * a
  have eq_rs : (const α r : α →ₛ ℝ≥0∞) * map c s = rs.map c := by
    ext1 a
    exact ENNReal.coe_mul.symm
  have eq : ∀ p, rs.map c ⁻¹' {p} = ⋃ n, rs.map c ⁻¹' {p} ∩ { a | p ≤ f n a } := by
    intro p
    rw [← inter_iUnion]; nth_rw 1 [← inter_univ (map c rs ⁻¹' {p})]
    refine' Set.ext fun x => and_congr_right fun hx => true_iff_iff.2 _
    by_cases p_eq : p = 0
    · simp [p_eq]
    simp [-ENNReal.coe_mul] at hx
    subst hx
    have : r * s x ≠ 0 := by rwa [Ne, ← ENNReal.coe_eq_zero]
    have : s x ≠ 0 := by
      refine' mt _ this
      intro h
      rw [h, mul_zero]
    have : (rs.map c) x < ⨆ n : ℕ, f n x := by
      refine' lt_of_lt_of_le (ENNReal.coe_lt_coe.2 _) (hsf x)
      suffices : r * s x < 1 * s x
      simpa
      exact mul_lt_mul_of_pos_right ha (pos_iff_ne_zero.2 this)
    rcases lt_iSup_iff.1 this with ⟨i, hi⟩
    exact mem_iUnion.2 ⟨i, le_of_lt hi⟩
  have mono : ∀ r : ℝ≥0∞, Monotone fun n => rs.map c ⁻¹' {r} ∩ { a | r ≤ f n a } := by
    intro r i j h
    refine' inter_subset_inter (Subset.refl _) _
    intro x (hx : r ≤ f i x)
    exact le_trans hx (h_mono h x)
  have h_meas : ∀ n, MeasurableSet { a : α | (⇑(map c rs)) a ≤ f n a } := fun n =>
    measurableSet_le (SimpleFunc.measurable _) (hf n)
  calc
    (r : ℝ≥0∞) * (s.map c).lintegral μ = ∑ r in (rs.map c).range, r * μ (rs.map c ⁻¹' {r}) := by
      rw [← const_mul_lintegral, eq_rs, SimpleFunc.lintegral]
    _ = ∑ r in (rs.map c).range, r * μ (⋃ n, rs.map c ⁻¹' {r} ∩ { a | r ≤ f n a }) := by
      simp only [(eq _).symm]
    _ = ∑ r in (rs.map c).range, ⨆ n, r * μ (rs.map c ⁻¹' {r} ∩ { a | r ≤ f n a }) :=
      (Finset.sum_congr rfl fun x _ => by
        rw [measure_iUnion_eq_iSup (directed_of_sup <| mono x), ENNReal.mul_iSup])
    _ = ⨆ n, ∑ r in (rs.map c).range, r * μ (rs.map c ⁻¹' {r} ∩ { a | r ≤ f n a }) := by
      rw [ENNReal.finset_sum_iSup_nat]
      intro p i j h
      exact mul_le_mul_left' (measure_mono <| mono p h) _
    _ ≤ ⨆ n : ℕ, ((rs.map c).restrict { a | (rs.map c) a ≤ f n a }).lintegral μ := by
      refine' iSup_mono fun n => _
      rw [restrict_lintegral _ (h_meas n)]
      · refine' le_of_eq (Finset.sum_congr rfl fun r _ => _)
        congr 2 with a
        refine' and_congr_right _
        simp (config := { contextual := true })
    _ ≤ ⨆ n, ∫⁻ a, f n a ∂μ := by
      refine' iSup_mono fun n => _
      rw [← SimpleFunc.lintegral_eq_lintegral]
      refine' lintegral_mono fun a => _
      simp only [map_apply] at h_meas
      simp only [coe_map, restrict_apply _ (h_meas _), (· ∘ ·)]
      exact indicator_apply_le id
#align measure_theory.lintegral_supr MeasureTheory.lintegral_iSup

/-- Monotone convergence theorem -- sometimes called Beppo-Levi convergence. Version with
ae_measurable functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a866e79d6e525d1d7bdbfbfeb2574af4639840e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
