# BlaschkeNonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c48c109844c36b325a02f1a5e0d04058a3d9ca2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 769,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10bf7502-09b2-738d-50e3-6a1c5f301f6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7d6488e-fc3c-414f-46f1-9fe49b5489dc",
  "kind": "lemma",
  "lexical_name": "BlaschkeNonzero",
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
  "slug": "blaschkenonzero--6ce944f60570552bb13497a9",
  "source": {
    "blob": "1c48c109844c36b325a02f1a5e0d04058a3d9ca2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 831,
    "line": 769,
    "path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ce944f60570552bb13497a98023acb01d7742c1fa0c9a7da4b5d06a6ad28383",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7d6488e-fc3c-414f-46f1-9fe49b5489dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 769–831.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma BlaschkeNonzero {r R : ℝ} {f : ℂ → ℂ}
    (r_pos : 0 < r) (r_lt_R : r < R) (R_lt_one : R < 1)
    (finiteZeros : (SetOfZeros 1 f).Finite)
    (hfAnalytic : AnalyticOnNhd ℂ f (Metric.closedBall (0 : ℂ) 1))
    (hf_neq_zero_at_zero : f 0 ≠ 0) :
    ∀ z ∈ Metric.closedBall (0 : ℂ) r, BlaschkeB r R f z ≠ 0 := by
  have r_lt_one : r < 1 := lt_trans r_lt_R R_lt_one
  have R_pos : 0 < R := lt_trans r_pos r_lt_R
  intro z hz
  have hz_norm_le_r : ‖z‖ ≤ r := by rwa [mem_closedBall_iff_norm, sub_zero] at hz
  have hz_norm_lt_R : ‖z‖ < R := by linarith
  let hFin := finiteSetOfZeros_mono r_lt_one finiteZeros
  have hBProd : ∏ ρ ∈ hFin.toFinset,
      (↑R - z * (starRingEnd ℂ) ρ / ↑R) ^ analyticOrderNatAt f ρ ≠ 0 := by
    apply Finset.prod_ne_zero_iff.mpr
    intro ρ hρ
    apply pow_ne_zero
    norm_num [ sub_eq_zero, Complex.ext_iff ];
    simp only [SetOfZeros, Finite.mem_toFinset, mem_setOf_eq] at hρ
    rw [ eq_div_iff ] <;> norm_num [ Complex.normSq, Complex.norm_def ] at *;
    · rw [Real.sqrt_lt' (by linarith)] at hz_norm_lt_R
      rw [ Real.sqrt_le_iff ] at hρ
      exact fun h => absurd h ( by nlinarith [ sq_nonneg ( z.re - ρ.re ), sq_nonneg ( z.im - ρ.im ), mul_lt_mul_of_pos_left r_lt_R R_pos ] )
    · linarith
  unfold BlaschkeB Cf
  by_cases z_in_zeros : z ∈ SetOfZeros r f
  · simp only [hFin, z_in_zeros, ↓reduceDIte]
    obtain ⟨_, _, hne, heq⟩ :=
      ZeroFactorization (by linarith) (hfAnalytic.mono (Metric.closedBall_subset_closedBall (by linarith)))
        hf_neq_zero_at_zero z_in_zeros
    rw [heq.1]
    refine mul_ne_zero (div_ne_zero hne (Finset.prod_ne_zero_iff.mpr fun ρ hρ =>
      pow_ne_zero _ (sub_ne_zero.mpr fun h =>
        (Finset.mem_sdiff.mp hρ).2 (Finset.mem_singleton.mpr h.symm)))) hBProd
  · simp only [hFin, z_in_zeros, ↓reduceDIte]
    refine mul_ne_zero (div_ne_zero (fun hfz => z_in_zeros ⟨hz_norm_le_r, hfz⟩)
      (Finset.prod_ne_zero_iff.mpr fun ρ hρ =>
        pow_ne_zero _ (sub_ne_zero.mpr fun h => z_in_zeros (h ▸ hFin.mem_toFinset.mp hρ)))) hBProd



@[blueprint "ZerosBound"
  (title := "ZerosBound")
  (statement := /--
    Let $0< r < R<1$. If $f:\mathbb{C}\to\mathbb{C}$ is a function analytic on
    neighborhoods of points in $\overline{\mathbb{D}_1}$ with $f(0)=1$ and $|f(z)|\leq B$
    for $|z|\leq R$, then
    $$\sum_{\rho\in\mathcal{K}_f(r)}m_f(\rho)\leq\frac{\log B}{\log(R/r)}.$$
  -/)
   (proof := /--
    Since $f(0)=1$, by Lemma \ref{BlaschkeOfZero} we know that
    $$|B_f(0)|
      =|f(0)|\prod_{\rho\in\mathcal{K}_f(r)}\left(\frac{R}{|\rho|}\right)^{m_f(\rho)}
      =\prod_{\rho\in\mathcal{K}_f(r)}\left(\frac{R}{|\rho|}\right)^{m_f(\rho)}.$$
    Thus, substituting this into Definition \ref{BlaschkeB},
    $$(R/r)^{\sum_{\rho\in\mathcal{K}_f(r)}m_f(\rho)}
      =\prod_{\rho\in\mathcal{K}_f(r)}\left(\frac{R}{r}\right)^{m_f(\rho)}
      \leq\prod_{\rho\in\mathcal{K}_f(r)}\left(\frac{R}{|\rho|}\right)^{m_f(\rho)}
      =|B_f(0)|\leq B$$
    whereby Lemma \ref{DiskBound} we know that $|B_f(z)|\leq B$ for all $|z|\leq R$.
    Taking the logarithm of both sides and rearranging gives the desired result.
  -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean#L769).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c48c109844c36b325a02f1a5e0d04058a3d9ca2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
