# rank_trace_mult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca2d83a9-d625-cd46-b5bd-be330653da02",
  "kind": "theorem",
  "lexical_name": "rank_trace_mult",
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
  "slug": "rank-trace-mult--ae4a800db229f935504662a7",
  "source": {
    "blob": "aafc530a17776d8aaf5d40bb1ca78e6131f6e88b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 289,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae4a800db229f935504662a7b3942e92c5c0a3fca64903b5d6d31b04b9f14b04",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca2d83a9-d625-cd46-b5bd-be330653da02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_trace_mult {m : ι → ℝ} (hm : ∀ j, 0 ≤ m j) (v : ι → n → 𝕜)
    {Q : Matrix n n 𝕜} (hQ : Q.IsHermitian) {b : ℕ} (hb : posIndex hQ ≤ b) {c : ℝ} (hc : 0 < c) :
    c * rtrace (Pmat m v) + (∑ j, gc c (m j * xsq v j)) + 2 * c * rtrace Q - c ^ 2 * b
      ≤ frobSq (Pmat m v + Q) := by
  classical
  set P := Pmat m v with hPdef
  have hP : P.PosSemidef := Pmat_posSemidef m v
  -- Positive/negative parts of Q (verbatim from RHLinalg.rank_trace_ineq).
  set Qp := hermPosPart hQ with hQp_def
  set Qm := hermNegPart hQ with hQm_def
  have hQdec : Q = Qp - Qm := (hermPosPart_sub_hermNegPart hQ).symm
  have hQp_psd : Qp.PosSemidef := hermPosPart_posSemidef hQ
  have hQm_psd : Qm.PosSemidef := hermNegPart_posSemidef hQ
  have hQpQm : Qp * Qm = 0 := hermPosPart_mul_hermNegPart hQ
  set d := Fintype.card n
  set p : Fin d → ℝ := hP.isHermitian.eigenvalues₀
  set mm : Fin d → ℝ := hQm_psd.isHermitian.eigenvalues₀
  have hp_nn : ∀ k, 0 ≤ p k := fun k => by
    rw [show p k = hP.isHermitian.eigenvalues (eigEquiv k) from (eigenvalues_eigEquiv hP.isHermitian k).symm]
    exact hP.eigenvalues_nonneg _
  have hm_nn : ∀ k, 0 ≤ mm k := fun k => by
    rw [show mm k = hQm_psd.isHermitian.eigenvalues (eigEquiv k) from (eigenvalues_eigEquiv hQm_psd.isHermitian k).symm]
    exact hQm_psd.eigenvalues_nonneg _
  have htraceP : rtrace P = ∑ k, p k := by
    rw [rtrace_eq_sum_eigenvalues hP.isHermitian]; exact sum_eigenvalues_reindex hP.isHermitian id
  have htraceQm : rtrace Qm = ∑ k, mm k := by
    rw [rtrace_eq_sum_eigenvalues hQm_psd.isHermitian]; exact sum_eigenvalues_reindex hQm_psd.isHermitian id
  have hfrobP : frobSq P = ∑ k, (p k) ^ 2 := by
    rw [frobSq_hermitian_eq_sum_sq_eigenvalues hP.isHermitian]; exact sum_eigenvalues_reindex hP.isHermitian (· ^ 2)
  have hfrobQm : frobSq Qm = ∑ k, (mm k) ^ 2 := by
    rw [frobSq_hermitian_eq_sum_sq_eigenvalues hQm_psd.isHermitian]
    exact sum_eigenvalues_reindex hQm_psd.isHermitian (· ^ 2)
  -- Step 1: Frobenius expansion.
  have hexpand : frobSq (P + Q)
      = frobSq P + 2 * RCLike.re (P * Qp).trace - 2 * RCLike.re (P * Qm).trace + frobSq Qp + frobSq Qm := by
    have h1 : frobSq (-Qm) = frobSq Qm := by unfold frobSq; rw [conjTranspose_neg, neg_mul_neg]
    have h2 : RCLike.re (Qp * -Qm).trace = 0 := by rw [mul_neg, hQpQm]; simp
    rw [hQdec, frobSq_add_hermitian hP.isHermitian (hQp_psd.isHermitian.sub hQm_psd.isHermitian),
      sub_eq_add_neg Qp Qm, frobSq_add_hermitian hQp_psd.isHermitian hQm_psd.isHermitian.neg,
      h1, h2, mul_add, mul_neg, trace_add, trace_neg, map_add, map_neg]
    ring
  -- Step 2: drop tr(PQ₊) ≥ 0.
  have hPQp : 0 ≤ RCLike.re (P * Qp).trace := trace_mul_nonneg_of_posSemidef hP hQp_psd
  -- Step 3: von Neumann.
  have hvN : RCLike.re (P * Qm).trace ≤ ∑ k, p k * mm k := vonNeumann_trace_ineq hP.isHermitian hQm_psd.isHermitian
  have hstep4 : ∑ k, (p k - mm k) ^ 2 ≤ frobSq P - 2 * RCLike.re (P * Qm).trace + frobSq Qm := by
    have hsplit : ∑ k, (p k - mm k) ^ 2 = ∑ k, (p k)^2 - 2 * ∑ k, p k * mm k + ∑ k, (mm k)^2 := by
      simp only [sub_sq, Finset.sum_add_distrib, Finset.sum_sub_distrib, Finset.mul_sum, mul_assoc]
    rw [hsplit, hfrobP, hfrobQm]; linarith
  -- Step 5': the multiplicity-aware termwise estimate + Schur/transfer.
  have hgc_eig : ∑ j, gc c (m j * xsq v j) ≤ ∑ k, gc c (p k) := by
    calc ∑ j, gc c (m j * xsq v j) ≤ ∑ i, gc c (hP.1.eigenvalues i) := sum_gc_eigenvalues_ge hm v hc.le
      _ = ∑ k, gc c (p k) := sum_eigenvalues_reindex hP.isHermitian (gc c)
  have hstep5 : c * rtrace P + (∑ j, gc c (m j * xsq v j)) - 2 * c * rtrace Qm ≤ ∑ k, (p k - mm k) ^ 2 := by
    rw [htraceP, htraceQm]
    have := sum_sq_sub_ge_gc hp_nn hm_nn hc.le
    linarith
  -- Step 6: estimate on Q₊ (verbatim).
  have hstep6 : 2 * c * rtrace Qp - c^2 * b ≤ frobSq Qp := by
    rw [hQp_def, rtrace_hermPosPart, frobSq_hermPosPart]
    refine sum_sq_lower_of_card_pos_le ?_ c
    calc #{i | (hQ.eigenvalues i)⁺ ≠ 0} = #{i | 0 < hQ.eigenvalues i} := by
          congr 1; ext i; simp [posPart_eq_zero, not_le]
      _ ≤ b := hb
  have htraceQ : 2 * c * rtrace Q = 2 * c * rtrace Qp - 2 * c * rtrace Qm := by rw [hQdec, rtrace_sub]; ring
  linarith [hstep4, hstep5, hstep6, hPQp, hexpand, htraceQ]

/-! ### the k_c form (leak-free target) and the integer specializations -/

/-- k_c(p) := c² − ((c−p)₊)²  (= 2cp − p² for p ≤ c, = c² for p ≥ c): nondecreasing, concave, k_c(0) = 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTraceMult/Variant340e07435b75fcde5789054e4319279cad17cc6eff73846453001209a4ae90e3.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aafc530a17776d8aaf5d40bb1ca78e6131f6e88b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
