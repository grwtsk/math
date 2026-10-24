# uniformIntegrable_average

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a20fe34047ff03983087f39f261020e75101cf0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 920,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb542f45-8f97-6cca-4de7-2f69a3eb7d18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:940202c2-5f4a-2e0b-7e0b-6971fb7d3d69",
  "kind": "theorem",
  "lexical_name": "uniformIntegrable_average",
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
  "slug": "uniformintegrable-average--9939ecf94a3879442454b2d2",
  "source": {
    "blob": "0a20fe34047ff03983087f39f261020e75101cf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 972,
    "line": 920,
    "path": "GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9939ecf94a3879442454b2d2ef7f7dc02361881ee1c236f0eed2def38aaad710",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:940202c2-5f4a-2e0b-7e0b-6971fb7d3d69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 920–972.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformIntegrable_average (hp : 1 ≤ p) {f : ℕ → α → ℝ} (hf : UniformIntegrable f p μ) :
    UniformIntegrable (fun n => (∑ i in Finset.range n, f i) / (n : α → ℝ)) p μ := by
  obtain ⟨hf₁, hf₂, hf₃⟩ := hf
  refine' ⟨fun n => _, fun ε hε => _, _⟩
  · simp_rw [div_eq_mul_inv]
    exact (Finset.aestronglyMeasurable_sum' _ fun i _ => hf₁ i).mul
      (aestronglyMeasurable_const : AEStronglyMeasurable (fun _ => (↑n : ℝ)⁻¹) μ)
  · obtain ⟨δ, hδ₁, hδ₂⟩ := hf₂ hε
    refine' ⟨δ, hδ₁, fun n s hs hle => _⟩
    simp_rw [div_eq_mul_inv, Finset.sum_mul, Set.indicator_finset_sum]
    refine' le_trans (snorm_sum_le (fun i _ => ((hf₁ i).mul_const (↑n)⁻¹).indicator hs) hp) _
    have : ∀ i, s.indicator (f i * (n : α → ℝ)⁻¹) = (↑n : ℝ)⁻¹ • s.indicator (f i) := by
      intro i
      rw [mul_comm, (_ : (↑n)⁻¹ * f i = fun ω => (↑n : ℝ)⁻¹ • f i ω)]
      · rw [Set.indicator_const_smul s (↑n : ℝ)⁻¹ (f i)]
        rfl
      · rfl
    simp_rw [this, snorm_const_smul, ← Finset.mul_sum, nnnorm_inv, Real.nnnorm_coe_nat]
    by_cases hn : (↑(↑n : ℝ≥0)⁻¹ : ℝ≥0∞) = 0
    · simp only [hn, zero_mul, zero_le]
    refine' le_trans _ (_ : ↑(↑n : ℝ≥0)⁻¹ * n • ENNReal.ofReal ε ≤ ENNReal.ofReal ε)
    · refine' (ENNReal.mul_le_mul_left hn ENNReal.coe_ne_top).2 _
      conv_rhs => rw [← Finset.card_range n]
      exact Finset.sum_le_card_nsmul _ _ _ fun i _ => hδ₂ _ _ hs hle
    · simp only [ENNReal.coe_eq_zero, inv_eq_zero, Nat.cast_eq_zero] at hn
      rw [nsmul_eq_mul, ← mul_assoc, ENNReal.coe_inv, ENNReal.coe_nat,
        ENNReal.inv_mul_cancel _ (ENNReal.nat_ne_top _), one_mul]
      all_goals simpa only [Ne.def, Nat.cast_eq_zero]
  · obtain ⟨C, hC⟩ := hf₃
    simp_rw [div_eq_mul_inv, Finset.sum_mul]
    refine' ⟨C, fun n => (snorm_sum_le (fun i _ => (hf₁ i).mul_const (↑n)⁻¹) hp).trans _⟩
    have : ∀ i, (fun ω => f i ω * (↑n)⁻¹) = (↑n : ℝ)⁻¹ • fun ω => f i ω := by
      intro i
      ext ω
      simp only [mul_comm, Pi.smul_apply, Algebra.id.smul_eq_mul]
    simp_rw [this, snorm_const_smul, ← Finset.mul_sum, nnnorm_inv, Real.nnnorm_coe_nat]
    by_cases hn : (↑(↑n : ℝ≥0)⁻¹ : ℝ≥0∞) = 0
    · simp only [hn, zero_mul, zero_le]
    refine' le_trans _ (_ : ↑(↑n : ℝ≥0)⁻¹ * (n • C : ℝ≥0∞) ≤ C)
    · refine' (ENNReal.mul_le_mul_left hn ENNReal.coe_ne_top).2 _
      conv_rhs => rw [← Finset.card_range n]
      -- Porting note: Originally `exact Finset.sum_le_card_nsmul _ _ _ fun i hi => hC i`
      convert Finset.sum_le_card_nsmul _ _ _ fun i _ => hC i
      rw [ENNReal.coe_smul]
    · simp only [ENNReal.coe_eq_zero, inv_eq_zero, Nat.cast_eq_zero] at hn
      rw [ENNReal.coe_smul, nsmul_eq_mul, ← mul_assoc, ENNReal.coe_inv, ENNReal.coe_nat,
        ENNReal.inv_mul_cancel _ (ENNReal.nat_ne_top _), one_mul]
      all_goals simpa only [Ne.def, Nat.cast_eq_zero]
#align measure_theory.uniform_integrable_average MeasureTheory.uniformIntegrable_average

end UniformIntegrable

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variant95fa7b9bb1072b70e0bd776ca88cb957d33bb22a0c8931e7833937f55ebf4278.lean#L920).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a20fe34047ff03983087f39f261020e75101cf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
