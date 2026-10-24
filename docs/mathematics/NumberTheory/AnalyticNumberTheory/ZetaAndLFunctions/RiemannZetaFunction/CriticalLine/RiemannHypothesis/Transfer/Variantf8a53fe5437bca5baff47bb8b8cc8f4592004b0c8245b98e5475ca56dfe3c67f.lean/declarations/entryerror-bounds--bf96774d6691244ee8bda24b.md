# entryError_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "469a31ec055d6db903e9095cdca737f5b904f019",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e98047f0-b8f8-5b24-e975-80728d48cee7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b676116-4916-4a45-ca0c-5c5509eeba87",
  "kind": "theorem",
  "lexical_name": "entryError_bounds",
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
  "slug": "entryerror-bounds--bf96774d6691244ee8bda24b",
  "source": {
    "blob": "469a31ec055d6db903e9095cdca737f5b904f019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 231,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf96774d6691244ee8bda24bd8adc97531148e4ed60d722b4a71459c9f71949f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b676116-4916-4a45-ca0c-5c5509eeba87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem entryError_bounds (Z : ZeroConfig) (P : Params) (T : ℝ) (M : Matrix (Fin (P.d T)) (Fin (P.d T)) ℂ)
    {C δ : ℝ} (hC : 0 ≤ C) (hT : 0 < T) (hh : 0 < P.hgrid T)
    (hEF : ∀ k l : Fin (P.d T), ‖Z.Gz P T k l - M k l‖
      ≤ C * T ^ (-δ) * (1 / max 1 ((P.tau T k - P.tau T l) ^ 2) + 1 / T)) :
    |rtrace (Z.Gz P T - M)| ≤ (P.d T : ℝ) * (C * T ^ (-δ) * (1 + 1 / T)) ∧
    frobSq (Z.Gz P T - M)
      ≤ 2 * (C * T ^ (-δ)) ^ 2 * ((P.d T : ℝ) * (8 * (1 + 1 / P.hgrid T)) + (P.d T : ℝ) ^ 2 / T ^ 2) := by
  have hCT : 0 ≤ C * T ^ (-δ) := mul_nonneg hC (Real.rpow_nonneg hT.le _)
  have hentry : ∀ k l : Fin (P.d T), ‖(Z.Gz P T - M) k l‖
      ≤ C * T ^ (-δ) * (1 / max 1 (((((k:ℕ):ℝ) - ((l:ℕ):ℝ)) * P.hgrid T) ^ 2) + 1 / T) := by
    intro k l
    have := hEF k l
    rw [tau_sub_tau] at this
    simpa [Matrix.sub_apply] using this
  constructor
  · refine (Transfer.abs_rtrace_le_sum_norm_diag _).trans ?_
    calc ∑ k : Fin (P.d T), ‖(Z.Gz P T - M) k k‖
        ≤ ∑ _k : Fin (P.d T), C * T ^ (-δ) * (1 + 1 / T) := by
          refine Finset.sum_le_sum fun k _ => (hentry k k).trans ?_
          simp
      _ = (P.d T : ℝ) * (C * T ^ (-δ) * (1 + 1 / T)) := by simp
  · set t : ℕ → ℕ → ℝ := fun k l => 1 / max 1 ((((k:ℝ) - (l:ℝ)) * P.hgrid T) ^ 2) with ht
    have ht0 : ∀ k l, 0 ≤ t k l := fun k l => by simp only [ht]; positivity
    have ht1 : ∀ k l, t k l ≤ 1 := fun k l => by
      simp only [ht]; exact div_le_one_of_le₀ (le_max_left _ _) (by positivity)
    refine (Transfer.frobSq_le_of_norm_le _ (fun k l : Fin (P.d T) => C * T ^ (-δ) * (t k l + 1 / T))
      (fun k l => by simpa [ht] using hentry k l)).trans ?_
    -- (CT^{-δ})²(t + 1/T)² ≤ 2(CT^{-δ})²(t² + 1/T²)
    have hsq : ∀ k l : Fin (P.d T), (C * T ^ (-δ) * (t k l + 1 / T)) ^ 2
        ≤ 2 * (C * T ^ (-δ)) ^ 2 * (t k l ^ 2) + 2 * (C * T ^ (-δ)) ^ 2 / T ^ 2 := by
      intro k l
      have : (t k l + 1 / T) ^ 2 ≤ 2 * (t k l ^ 2 + (1 / T) ^ 2) := by
        nlinarith [sq_nonneg (t k l - 1 / T)]
      calc (C * T ^ (-δ) * (t k l + 1 / T)) ^ 2 = (C * T ^ (-δ)) ^ 2 * (t k l + 1 / T) ^ 2 := by ring
        _ ≤ (C * T ^ (-δ)) ^ 2 * (2 * (t k l ^ 2 + (1 / T) ^ 2)) := by gcongr
        _ = _ := by ring
    refine (Finset.sum_le_sum fun k _ => Finset.sum_le_sum fun l _ => hsq k l).trans ?_
    have hlat : ∀ k : Fin (P.d T), ∑ l : Fin (P.d T), t k l ^ 2 ≤ 8 * (1 + 1 / P.hgrid T) := by
      intro k
      rw [Fin.sum_univ_eq_sum_range (fun l => t k l ^ 2) (P.d T)]
      simpa only [ht] using Transfer.lattice_sum_le hh (P.d T) k k.isLt
    calc ∑ k : Fin (P.d T), ∑ l : Fin (P.d T),
          (2 * (C * T ^ (-δ)) ^ 2 * t k l ^ 2 + 2 * (C * T ^ (-δ)) ^ 2 / T ^ 2)
        = 2 * (C * T ^ (-δ)) ^ 2 * ∑ k : Fin (P.d T), ∑ l : Fin (P.d T), t k l ^ 2
          + (P.d T : ℝ) ^ 2 * (2 * (C * T ^ (-δ)) ^ 2 / T ^ 2) := by
          simp only [Finset.sum_add_distrib, Finset.sum_const, Finset.card_univ, Fintype.card_fin,
            nsmul_eq_mul, Finset.mul_sum]
          ring
      _ ≤ 2 * (C * T ^ (-δ)) ^ 2 * ∑ _k : Fin (P.d T), 8 * (1 + 1 / P.hgrid T)
          + (P.d T : ℝ) ^ 2 * (2 * (C * T ^ (-δ)) ^ 2 / T ^ 2) := by
          gcongr with k _
          · exact hlat k
      _ = 2 * (C * T ^ (-δ)) ^ 2 * ((P.d T : ℝ) * (8 * (1 + 1 / P.hgrid T)) + (P.d T : ℝ) ^ 2 / T ^ 2) := by
          simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
          ring

/-- rtrace / frobSq in hat units. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `469a31ec055d6db903e9095cdca737f5b904f019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
