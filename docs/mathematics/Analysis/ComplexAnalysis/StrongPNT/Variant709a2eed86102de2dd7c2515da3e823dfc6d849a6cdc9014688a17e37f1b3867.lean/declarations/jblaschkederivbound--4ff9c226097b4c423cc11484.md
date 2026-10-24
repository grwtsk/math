# JBlaschkeDerivBound

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
      "line": 904,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09bb9ec3-388b-fcfa-1431-5abe451622cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce48ca3e-f884-cb3b-aab3-52f46156a6b5",
  "kind": "theorem",
  "lexical_name": "JBlaschkeDerivBound",
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
  "slug": "jblaschkederivbound--4ff9c226097b4c423cc11484",
  "source": {
    "blob": "1c48c109844c36b325a02f1a5e0d04058a3d9ca2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 973,
    "line": 904,
    "path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ff9c226097b4c423cc114849b1fac1a399c2c7d53c8a22f53d547e2f02fbc9f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce48ca3e-f884-cb3b-aab3-52f46156a6b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 904–973.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem JBlaschkeDerivBound {B r' r R : ℝ} {f : ℂ → ℂ} {z : ℂ}
    (one_lt_B : 1 < B) (r'_pos : 0 < r') (r'_lt_r : r' < r) (r_pos : 0 < r) (r_lt_R : r < R) (R_lt_one : R < 1)
    (hfAnalytic : AnalyticOnNhd ℂ f (Metric.closedBall (0 : ℂ) 1)) (hf0_eq_one : f 0 = 1)
    (finiteZeros : (SetOfZeros 1 f).Finite) (fz_bound : ∀ z : ℂ, ‖z‖ ≤ R → ‖f z‖ ≤ B)
    (hz : z ∈ Metric.closedBall (0 : ℂ) r') :
    ‖deriv (JBlaschke r'_pos r'_lt_r r_pos r_lt_R R_lt_one hfAnalytic hf0_eq_one finiteZeros) z‖
      ≤ 16 * Real.log (B) * r ^ 2 / (r - r') ^ 3 := by
  have r_pos : 0 < r := lt_trans r'_pos r'_lt_r
  let blaschkeAnalytic := BlaschkeAnalytic r_pos r_lt_R R_lt_one finiteZeros hfAnalytic (hf0_eq_one ▸ one_ne_zero)
  let blaschkeNonzero := BlaschkeNonzero r_pos r_lt_R R_lt_one finiteZeros hfAnalytic (hf0_eq_one ▸ one_ne_zero)
  let logOfAnalytic := LogOfAnalyticFunction' r'_pos r'_lt_r r_lt_R blaschkeAnalytic blaschkeNonzero
  set JB := logOfAnalytic.choose with JB_def
  obtain ⟨JB_Analytic, JB_0_eq_0, deriv_JB_eq, JB_re⟩ := logOfAnalytic.choose_spec
  rw [← JB_def] at JB_Analytic JB_0_eq_0 deriv_JB_eq JB_re
  have JB_def' : JB = (JBlaschke r'_pos r'_lt_r r_pos r_lt_R R_lt_one hfAnalytic hf0_eq_one finiteZeros) := by
    unfold JBlaschke
    rw [← JB_def]
  rw[← JB_def']
  refine BorelCaratheodoryDeriv (Real.log_pos one_lt_B) r'_pos r'_lt_r (JB_Analytic.analyticOn) JB_0_eq_0 ?_ hz
  intro w hw
  rw[← JB_re w hw]
  have hwr : w ∈ Metric.closedBall (0 : ℂ) r := by exact Metric.ball_subset_closedBall hw
  have hlog : 0 ≤ Real.log ‖BlaschkeB r R f 0‖ := by
    rw [← Real.log_one]
    apply Real.log_le_log zero_lt_one
    rw [← norm_one (α := ℂ), ← hf0_eq_one]
    exact norm_fOfZero_le_norm_BlaschkeOfZero r_pos r_lt_R R_lt_one finiteZeros (hf0_eq_one ▸ one_ne_zero)
  suffices h : Real.log ‖BlaschkeB r R f w‖ ≤ Real.log B by linarith
  exact Real.log_le_log (norm_pos_iff.mpr (blaschkeNonzero w hwr))
    (DiskBound r_pos r_lt_R R_lt_one finiteZeros hfAnalytic (hf0_eq_one ▸ one_ne_zero) fz_bound (Metric.closedBall_subset_closedBall r_lt_R.le hwr))



@[blueprint "FinalBound"
  (title := "FinalBound")
  (statement := /--
    Let $B>1$ and $0 < r' < r < R' < R<1$. If $f:\mathbb{C}\to\mathbb{C}$ is a function
    analytic on neighborhoods of points in $\overline{\mathbb{D}_1}$ with $f(0)=1$ and
    $|f(z)|\leq B$ for all $|z|\leq R$, then for all
    $z\in\overline{\mathbb{D}_{r'}}\setminus\mathcal{K}_f(R')$ we have
    $$\left|\frac{f'}{f}(z)-\sum_{\rho\in\mathcal{K}_f(r)}\frac{m_f(\rho)}{z-\rho}\right|
      \leq\left(\frac{16r^2}{(r-r')^3}+\frac{1}{(R^2/R'-R')\,\log(R/R')}\right)\log B.$$
  -/)
  (proof := /--
    Since $z\in\overline{\mathbb{D}_{r'}}\setminus\mathcal{K}_f(R')$ we know that
    $z\not\in\mathcal{K}_f(R')$; thus, by Definition \ref{CFunction} we know that
    $$C_f(z)=\frac{f(z)}{\displaystyle\prod_{\rho\in\mathcal{K}_f(r)}(z-\rho)^{m_f(\rho)}}.$$
    Substituting this into Definition \ref{BlaschkeB} we have that
    $$B_f(z)=f(z)\prod_{\rho\in\mathcal{K}_f(r)}
      \left(\frac{R-z\overline{\rho}/R}{z-\rho}\right)^{m_f(\rho)}.$$
    Taking the complex logarithm of both sides we have that
    $$\mathrm{Log}\,B_f(z)=\mathrm{Log}\,f(z)
      +\sum_{\rho\in\mathcal{K}_f(r)}m_f(\rho)\,\mathrm{Log}(R-z\overline{\rho}/R)
      -\sum_{\rho\in\mathcal{K}_f(r)}m_f(\rho)\,\mathrm{Log}(z-\rho).$$
    Taking the derivative of both sides we have that
    $$\frac{B_f'}{B_f}(z)=\frac{f'}{f}(z)
      +\sum_{\rho\in\mathcal{K}_f(r)}\frac{m_f(\rho)}{z-R^2/\overline{\rho}}
      -\sum_{\rho\in\mathcal{K}_f(r)}\frac{m_f(\rho)}{z-\rho}.$$
    By Definition \ref{JBlaschke} and Theorem \ref{LogOfAnalyticFunction},
    since $L_f(z)=J_{B_f}(z)$ we have $L_f'(z)=J'_{B_f}(z)=(B_f'/B_f)(z)$. Thus,
    $$\frac{f'}{f}(z)-\sum_{\rho\in\mathcal{K}_f(r)}\frac{m_f(\rho)}{z-\rho}
      =L_f'(z)-\sum_{\rho\in\mathcal{K}_f(r)}\frac{m_f(\rho)}{z-R^2/\overline{\rho}}.$$
    Now since $z\in\overline{\mathbb{D}_{r'}}\subseteq\overline{\mathbb{D}_{R'}}$ and $\rho\in\mathcal{K}_f(r)\subseteq\mathcal{K}_f(R')$, we know that
    $R^2/R'-R'\leq|z-R^2/\overline{\rho}|$. Thus by the triangle inequality we have
    $$\left|\frac{f'}{f}(z)-\sum_{\rho\in\mathcal{K}_f(r)}\frac{m_f(\rho)}{z-\rho}\right|
      \leq|L_f'(z)|+\left(\frac{1}{R^2/R'-R'}\right)\sum_{\rho\in\mathcal{K}_f(r)}m_f(\rho).$$
    Now by Theorem \ref{ZerosBound} and \ref{JBlaschkeDerivBound} we get our desired result
    with a little algebraic manipulation.
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean#L904).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c48c109844c36b325a02f1a5e0d04058a3d9ca2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
