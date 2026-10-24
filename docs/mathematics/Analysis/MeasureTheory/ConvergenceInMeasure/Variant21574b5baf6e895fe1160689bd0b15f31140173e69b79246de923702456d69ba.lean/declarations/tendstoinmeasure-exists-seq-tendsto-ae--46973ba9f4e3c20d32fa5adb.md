# TendstoInMeasure.exists_seq_tendsto_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65e73967-9677-a1cb-c067-1c7f59155ce3",
  "kind": "theorem",
  "lexical_name": "TendstoInMeasure.exists_seq_tendsto_ae",
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
  "slug": "tendstoinmeasure-exists-seq-tendsto-ae--46973ba9f4e3c20d32fa5adb",
  "source": {
    "blob": "ea81916c9b9bb173df04ddb5f9933c88f7b9a3de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 281,
    "path": "GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46973ba9f4e3c20d32fa5adbaa32d4a8c2d5cc51f3d0f02d8da9f73706d099e0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65e73967-9677-a1cb-c067-1c7f59155ce3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TendstoInMeasure.exists_seq_tendsto_ae (hfg : TendstoInMeasure μ f atTop g) :
    ∃ ns : ℕ → ℕ, StrictMono ns ∧ ∀ᵐ x ∂μ, Tendsto (fun i => f (ns i) x) atTop (𝓝 (g x)) := by
  /- Since `f` tends to `g` in measure, it has a subsequence `k ↦ f (ns k)` such that
    `μ {|f (ns k) - g| ≥ 2⁻ᵏ} ≤ 2⁻ᵏ` for all `k`. Defining
    `s := ⋂ k, ⋃ i ≥ k, {|f (ns k) - g| ≥ 2⁻ᵏ}`, we see that `μ s = 0` by the
    first Borel-Cantelli lemma.

    On the other hand, as `s` is precisely the set for which `f (ns k)`
    doesn't converge to `g`, `f (ns k)` converges almost everywhere to `g` as required. -/
  have h_lt_ε_real (ε : ℝ≥0∞) (hε : 0 < ε) : ∃ k : ℕ, 2 * (2 : ℝ≥0∞)⁻¹ ^ k < ε := by
    obtain ⟨k, h_k⟩ : ∃ k : ℕ, (2 : ℝ≥0∞)⁻¹ ^ k < ε := ENNReal.exists_inv_two_pow_lt hε.ne'
    refine ⟨k + 1, lt_of_eq_of_lt ?_ h_k⟩
    rw [pow_succ', ← mul_assoc, ENNReal.mul_inv_cancel, one_mul]
    · positivity
    · simp
  set ns := ExistsSeqTendstoAe.seqTendstoAeSeq hfg
  use ns
  let S := fun k => { x | (2 : ℝ≥0∞)⁻¹ ^ k ≤ edist (f (ns k) x) (g x) }
  have hμS_le : ∀ k, μ (S k) ≤ (2 : ℝ≥0∞)⁻¹ ^ k :=
    fun k => ExistsSeqTendstoAe.seqTendstoAeSeq_spec hfg k (ns k) le_rfl
  set s := Filter.atTop.limsup S with hs
  have hμs : μ s = 0 := by
    refine measure_limsup_atTop_eq_zero (ne_top_of_le_ne_top ?_ (ENNReal.tsum_le_tsum hμS_le))
    simpa only [ENNReal.tsum_geometric, ENNReal.one_sub_inv_two, inv_inv] using ENNReal.ofNat_ne_top
  have h_tendsto : ∀ x ∈ sᶜ, Tendsto (fun i => f (ns i) x) atTop (𝓝 (g x)) := by
    refine fun x hx => EMetric.tendsto_atTop.mpr fun ε hε => ?_
    rw [hs, limsup_eq_iInf_iSup_of_nat] at hx
    simp only [S, Set.iSup_eq_iUnion, Set.iInf_eq_iInter, Set.compl_iInter, Set.compl_iUnion,
      Set.mem_iUnion, Set.mem_iInter, Set.mem_compl_iff, Set.mem_ofPred_eq, not_le] at hx
    obtain ⟨N, hNx⟩ := hx
    obtain ⟨k, hk_lt_ε⟩ := h_lt_ε_real ε hε
    refine ⟨max N (k - 1), fun n hn_ge => lt_of_le_of_lt ?_ hk_lt_ε⟩
    specialize hNx n ((le_max_left _ _).trans hn_ge)
    have h_inv_n_le_k : (2 : ℝ≥0∞)⁻¹ ^ n ≤ 2 * (2 : ℝ≥0∞)⁻¹ ^ k := by
      nth_rw 2 [← pow_one (2 : ℝ≥0∞)]
      rw [mul_comm, ← ENNReal.inv_pow, ← ENNReal.inv_pow, ENNReal.inv_le_iff_le_mul, ← mul_assoc,
        mul_comm (_ ^ n), mul_assoc, ← ENNReal.inv_le_iff_le_mul, inv_inv, ← pow_add]
      · gcongr
        · simp
        · omega
      all_goals simp
    exact le_trans hNx.le h_inv_n_le_k
  rw [ae_iff]
  refine ⟨ExistsSeqTendstoAe.seqTendstoAeSeq_strictMono hfg, measure_mono_null (fun x => ?_) hμs⟩
  rw [Set.mem_ofPred_eq, ← @Classical.not_not (x ∈ s), not_imp_not]
  exact h_tendsto x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant21574b5baf6e895fe1160689bd0b15f31140173e69b79246de923702456d69ba.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea81916c9b9bb173df04ddb5f9933c88f7b9a3de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
