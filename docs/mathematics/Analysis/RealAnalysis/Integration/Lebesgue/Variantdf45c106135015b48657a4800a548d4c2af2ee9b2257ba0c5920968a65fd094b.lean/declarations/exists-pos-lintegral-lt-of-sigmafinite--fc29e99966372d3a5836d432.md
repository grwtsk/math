# exists_pos_lintegral_lt_of_sigmaFinite

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
      "line": 1899,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ba3ad01-1f2c-6cac-7fd7-0cf2dd21fd71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c14f8704-7afc-c2f7-2317-26161a02ed06",
  "kind": "theorem",
  "lexical_name": "exists_pos_lintegral_lt_of_sigmaFinite",
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
  "slug": "exists-pos-lintegral-lt-of-sigmafinite--fc29e99966372d3a5836d432",
  "source": {
    "blob": "a866e79d6e525d1d7bdbfbfeb2574af4639840e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1916,
    "line": 1899,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc29e99966372d3a5836d432ca3c202c09e953023dd18a89ea40d58dde2f9701",
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

Occurrence: `result:c14f8704-7afc-c2f7-2317-26161a02ed06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1899–1916.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pos_lintegral_lt_of_sigmaFinite (μ : Measure α) [SigmaFinite μ] {ε : ℝ≥0∞}
    (ε0 : ε ≠ 0) : ∃ g : α → ℝ≥0, (∀ x, 0 < g x) ∧ Measurable g ∧ ∫⁻ x, g x ∂μ < ε := by
  /- Let `s` be a covering of `α` by pairwise disjoint measurable sets of finite measure. Let
    `δ : ℕ → ℝ≥0` be a positive function such that `∑' i, μ (s i) * δ i < ε`. Then the function that
     is equal to `δ n` on `s n` is a positive function with integral less than `ε`. -/
  set s : ℕ → Set α := disjointed (spanningSets μ)
  have : ∀ n, μ (s n) < ∞ := fun n =>
    (measure_mono <| disjointed_subset _ _).trans_lt (measure_spanningSets_lt_top μ n)
  obtain ⟨δ, δpos, δsum⟩ : ∃ δ : ℕ → ℝ≥0, (∀ i, 0 < δ i) ∧ (∑' i, μ (s i) * δ i) < ε
  exact ENNReal.exists_pos_tsum_mul_lt_of_countable ε0 _ fun n => (this n).ne
  set N : α → ℕ := spanningSetsIndex μ
  have hN_meas : Measurable N := measurable_spanningSetsIndex μ
  have hNs : ∀ n, N ⁻¹' {n} = s n := preimage_spanningSetsIndex_singleton μ
  refine' ⟨δ ∘ N, fun x => δpos _, measurable_from_nat.comp hN_meas, _⟩
  erw [lintegral_comp measurable_from_nat.coe_nnreal_ennreal hN_meas]
  simpa [hNs, lintegral_countable', measurable_spanningSetsIndex, mul_comm] using δsum
#align measure_theory.exists_pos_lintegral_lt_of_sigma_finite MeasureTheory.exists_pos_lintegral_lt_of_sigmaFinite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean#L1899).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a866e79d6e525d1d7bdbfbfeb2574af4639840e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
