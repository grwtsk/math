# proposition_applem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:301cec77-03c4-9946-f064-11b66110fd0a",
  "kind": "theorem",
  "lexical_name": "proposition_applem",
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
  "slug": "proposition-applem--de26df17e148dba3cd3d3ed7",
  "source": {
    "blob": "31f0e965c048f04d42843bf51db7ae3d45f32361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1784,
    "line": 1704,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de26df17e148dba3cd3d3ed7d7f3a7f386d2b64d0eb3849bbdbf8f2aecff8608",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:301cec77-03c4-9946-f064-11b66110fd0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1704–1784.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proposition_applem (s : ℂ) (hsigma : 0 ≤ s.re) {a b : ℝ} (ha : a > |s.im| / (2 * π))
    (hb : b > a) (ha' : a.IsHalfInteger) (hb' : b.IsHalfInteger) {n : ℕ} (hn : 1 ≤ n) :
    let ϑ : ℝ := s.im / (2 * π * a)
    ∃ E, ∫ t in Set.Icc a b, (t : ℂ) ^ (-s) * Real.cos (2 * π * (n : ℝ) * t) =
      ((-1) ^ n * (b ^ (-s) : ℂ) * (s.im / (2 * π * b)) /
        (2 * π * I * ((n : ℝ) ^ 2 - (s.im / (2 * π * b)) ^ 2)) -
       (-1) ^ n * (a ^ (-s) : ℂ) * (s.im / (2 * π * a)) /
        (2 * π * I * ((n : ℝ) ^ 2 - (s.im / (2 * π * a)) ^ 2))) +
      ((a ^ (-s.re - 1) : ℝ) / (4 * π ^ 2)) * E ∧
      ‖E‖ ≤ s.re / ((n - ϑ) ^ 2) + s.re / ((n + ϑ) ^ 2) +
        |ϑ| / (|n - ϑ| ^ 3) + |ϑ| / (|n + ϑ| ^ 3) := by
  have h_pos_a : 0 < a := lt_of_le_of_lt (by positivity) ha
  have h_bound_aux : |s.im| / (2 * π * n) < a := by
    refine ha.trans_le' <| div_le_div_of_nonneg_left (abs_nonneg _) (by positivity) ?_
    nlinarith [pi_gt_three, show (n : ℝ) ≥ 1 by norm_cast]
  have h_neg := lemma_aachfour s hsigma (-n : ℝ) (by norm_num; linarith) a b (by
    simp only [abs_neg, abs_of_nonneg (show 0 ≤ (n : ℝ) by positivity)]
    exact h_bound_aux) hb
  have h_pos := lemma_aachfour s hsigma (n : ℝ) (by norm_num; linarith) a b (by
    simp only [abs_of_nonneg (show 0 ≤ (n : ℝ) by positivity)]
    exact h_bound_aux) hb
  obtain ⟨E1, hE1_eq, hE1_bound⟩ := h_pos
  obtain ⟨E2, hE2_eq, hE2_bound⟩ := h_neg
  use E1 + E2
  have h_cont_pow : ContinuousOn (fun t : ℝ ↦ (t : ℂ) ^ (-s)) (Set.Icc a b) :=
    ContinuousOn.cpow continuous_ofReal.continuousOn continuousOn_const
      fun x hx ↦ Or.inl (by norm_cast; linarith [hx.1, h_pos_a])
  have h_integral : ∫ t in Set.Icc a b, (t : ℂ) ^ (-s) * (Real.cos (2 * Real.pi * n * t)) =
      (1 / 2) * (∫ t in Set.Icc a b, (t : ℂ) ^ (-s) * e (n * t)) +
        (1 / 2) * (∫ t in Set.Icc a b, (t : ℂ) ^ (-s) * e (-n * t)) := by
    rw [← mul_add, ← integral_add]
    · rw [← integral_const_mul]
      congr with t
      norm_num [e, Complex.cos]
      ring_nf
    · exact (h_cont_pow.mul (Complex.continuous_exp.comp (by continuity)).continuousOn).integrableOn_Icc
    · exact (h_cont_pow.mul (Complex.continuous_exp.comp (by continuity)).continuousOn).integrableOn_Icc
  constructor
  · have h_lem := lemma_aachcanc s (by grind) h_bound_aux hb ha' hb'
    simp only [zpow_natCast, Int.cast_natCast, one_div, neg_mul] at h_lem
    simp only [h_integral, hE1_eq, hE2_eq]
    convert congrArg (· + (↑(a ^ (-s.re - 1)) / (4 * ↑π ^ 2)) * (E1 + E2)) h_lem using 1; ring_nf
  · have : |-(n : ℝ) - s.im / (2 * π * a)| = |(n : ℝ) + s.im / (2 * π * a)| := by
      rw [show -(n : ℝ) - s.im / (2 * π * a) = -((n : ℝ) + s.im / (2 * π * a)) by ring, abs_neg]
    calc ‖E1 + E2‖ ≤ ‖E1‖ + ‖E2‖ := norm_add_le E1 E2
      _ ≤ _ := add_le_add hE1_bound hE2_bound
      _ = _ := by simp only [sq_abs, this]; ring


blueprint_comment /--
\subsection{Approximating zeta(s)}
We start with an application of Euler-Maclaurin.
-/

@[blueprint
  "lem:abadeulmac'"
  (title := "Identity for a partial sum of zeta(s) for integer b")
  (statement := /--
Let $b>0$, $b\in \mathbb{Z}$.
Then, for all $s\in \mathbb{C}\setminus \{1\}$ with $\Re s > 0$,
\begin{equation}\label{eq:abak1'}
  \sum_{n \leq b} \frac{1}{n^s} = \zeta(s) + \frac{b^{1-s}}{1-s} + \frac{b^{-s}}{2}
  + s \int_b^\infty \left(\{y\}-\frac{1}{2}\right) \frac{dy}{y^{s+1}}.
\end{equation}
-/)
  (proof := /--
Assume first that $\Re s > 1$. By first-order Euler-Maclaurin,
\[\sum_{n > b}\frac{1}{n^s} = \int_b^\infty \frac{dy}{y^s} + \int_b^\infty
 \left(\{y\}-\frac{1}{2}\right) d\left(\frac{1}{y^s}\right).
\]
Here $\int_b^\infty \frac{dy}{y^s} = -\frac{b^{1-s}}{1-s}$ and
$d\left(\frac{1}{y^s}\right) = - \frac{s}{y^{s+1}} dy$.
Hence, by $\sum_{n\leq b} \frac{1}{n^s} = \zeta(s) - \sum_{n>b} \frac{1}{n^s}$
for $\Re s > 1$,
$$\sum_{n\leq b} \frac{1}{n^s} = \zeta(s) + \frac{b^{1-s}}{1-s} +
\int_b^\infty \left(\{y\}-\frac{1}{2}\right) \frac{s}{y^{s+1}} dy.$$
Since the integral converges absolutely for $\Re s > 0$, both sides extend holomorphically
to $\{s\in \mathbb{C}: \Re s>0, s\ne 1\}$; thus, the equation holds throughout that region.
-/)
  (latexEnv := "lemma")
  (discussion := 566)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean#L1704).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f0e965c048f04d42843bf51db7ae3d45f32361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
