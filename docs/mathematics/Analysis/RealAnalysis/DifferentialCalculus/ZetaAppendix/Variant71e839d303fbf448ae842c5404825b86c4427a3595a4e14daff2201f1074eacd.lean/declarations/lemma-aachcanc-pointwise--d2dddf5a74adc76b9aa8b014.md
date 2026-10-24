# lemma_aachcanc_pointwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:927b19ef-5e0f-b8e9-0d34-52daae0cc01c",
  "kind": "lemma",
  "lexical_name": "lemma_aachcanc_pointwise",
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
  "slug": "lemma-aachcanc-pointwise--d2dddf5a74adc76b9aa8b014",
  "source": {
    "blob": "31f0e965c048f04d42843bf51db7ae3d45f32361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1638,
    "line": 1559,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2dddf5a74adc76b9aa8b0144f0a41e1929448ac6b531abe3d211c41bb6925e1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:927b19ef-5e0f-b8e9-0d34-52daae0cc01c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1559–1638.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lemma_aachcanc_pointwise (s : ℂ) {n : ℤ} (hn : n ≠ 0)
    (t : ℝ) (ht : t.IsHalfInteger) (ht_pos : t > 0)
    (h_deriv_n : deriv (fun x ↦ (n : ℝ) * x - (s.im / (2 * π)) * Real.log x) t ≠ 0)
    (h_deriv_neg_n : deriv (fun x ↦ -(n : ℝ) * x - (s.im / (2 * π)) * Real.log x) t ≠ 0)
    (h_denom : (n : ℂ) ^ 2 - (s.im / (2 * π * t)) ^ 2 ≠ 0) :
    let ϕ : ℝ → ℝ → ℝ := fun ν t ↦ ν * t - (s.im / (2 * π)) * Real.log t
    let Φ : ℝ → ℝ → ℂ := fun ν t ↦ (t ^ (-s.re) : ℝ) * e (ϕ ν t) / (2 * π * I * (deriv (ϕ ν) t))
    let Ψ : ℝ → ℂ := fun t ↦ (-1) ^ n * (t ^ (-s) : ℂ) * (s.im / (2 * π * t)) /
      (2 * π * I * (n ^ 2 - (s.im / (2 * π * t)) ^ 2))
    (1 / 2) * (Φ n t + Φ (-n) t) = Ψ t := by
  have h_exp : e (n * t - s.im / (2 * Real.pi) * Real.log t) = (-1 : ℝ) ^ n * t ^ (-s.im * I) ∧
      e (-n * t - s.im / (2 * Real.pi) * Real.log t) = (-1 : ℝ) ^ n * t ^ (-s.im * I) := by
    unfold e
    norm_num [exp_re, exp_im, log_re, log_im, cpow_def]
    ring_nf
    have h_inner : exp (Real.pi * I * n * t * 2) = (-1 : ℂ) ^ n ∧ exp (-Real.pi * I * n * t * 2) = (-1 : ℂ) ^ n := by
      obtain ⟨k, rfl⟩ := ht
      norm_num [Complex.ext_iff, exp_re, exp_im, mul_assoc, mul_comm Real.pi]
      rcases Int.even_or_odd' n with ⟨c, rfl | rfl⟩ <;>
      · norm_num [zpow_add₀, zpow_mul]
        ring_nf
        norm_num [mul_assoc, mul_comm Real.pi _, mul_div]
        constructor
        · rw [Real.cos_eq_one_iff]; use c * k * 2; push_cast; ring
        · rw [Real.sin_eq_zero_iff]; use c * k * 4; push_cast; ring
    simp_all [Complex.exp_sub]
    norm_num [ofReal_log ht_pos.le, mul_assoc, mul_comm, mul_left_comm, pi_ne_zero]
    norm_num [Complex.exp_neg, Complex.exp_log, ht_pos.ne', mul_assoc, mul_left_comm, pi_ne_zero]
    ring_nf
    field_simp
  simp_all only [ne_eq, gt_iff_lt, neg_mul, ofReal_neg, ofReal_one, one_div, ofReal_cpow ht_pos.le]
  norm_num [mul_comm, pi_ne_zero, ht_pos.ne', h_deriv_n, h_deriv_neg_n]
  rw [div_add_div, mul_div, div_eq_div_iff]
  · rw [show (-s : ℂ) = -(s.re : ℂ) - I * (s.im : ℂ) by simp [Complex.ext_iff]]
    rw [cpow_def_of_ne_zero (by norm_cast; positivity)]
    ring_nf
    rw [cpow_def_of_ne_zero (by norm_cast; positivity), cpow_def_of_ne_zero (by norm_cast; positivity)]
    ring_nf
    rw [sub_eq_add_neg, Complex.exp_add]
    ring_nf
  · simp_all only [sub_eq_iff_eq_add, zero_add, ne_eq, mul_eq_zero, I_ne_zero, ofReal_eq_zero,
      pi_ne_zero, OfNat.ofNat_ne_zero, false_or, not_or]
    constructor <;> exact fun h ↦ h_denom <| by linear_combination' h * h
  · simp_all [mul_assoc, mul_comm]
  · contrapose! h_deriv_n
    simp_all [mul_assoc, mul_comm, mul_left_comm, div_eq_mul_inv, sub_eq_iff_eq_add]
  · norm_num [Complex.ext_iff, pi_ne_zero, ht_pos.ne'] at *
    norm_cast at *
    simp_all [mul_comm, div_eq_mul_inv]
    grind

@[blueprint
  "lem:aachcanc"
  (title := "Estimating an sum")
  (statement := /--
Let $s = \sigma + i \tau$, $\sigma,\tau \in \mathbb{R}$.
Let $n\in \mathbb{Z}_{>0}$. Let $a,b\in \mathbb{Z} + \frac{1}{2}$,
$b>a>\frac{|\tau|}{2\pi n}$.
Write $\varphi_\nu(t) = \nu t - \frac{\tau}{2\pi} \log t$.
Then
\[\frac{1}{2} \sum_{\nu = \pm n}
  \left. \frac{t^{-\sigma} e(\varphi_\nu(t))}{2\pi i \varphi_\nu'(t)}\right|_a^b =
  \left. \frac{(-1)^n t^{-s} \cdot \frac{\tau}{2\pi t}}
  {2\pi i \left(n^2 - \left(\frac{\tau}{2\pi t}\right)^2\right)}\right|_a^b.
\]
-/)
  (proof := /--
Since $e(\varphi_\nu(t)) = e(\nu t) t^{-i \tau} = (-1)^{\nu} t^{-i \tau}$ for any
half-integer $t$ and any integer $\nu$,
\[\left. \frac{t^{-\sigma} e(\varphi_\nu(t))}{2\pi i \varphi_\nu'(t)}\right|_a^b =
\left. \frac{(-1)^{\nu} t^{-s}}{2\pi i \varphi_\nu'(t)}\right|_a^b
\]
for $\nu = \pm n$. Clearly $(-1)^{\nu} = (-1)^n$.
Since $\varphi_\nu'(t) = \nu - \alpha$ for $\alpha = \frac{\tau}{2\pi t}$,
\[\frac{1}{2} \sum_{\nu = \pm n} \frac{1}{\varphi_\nu'(t)} = \frac{1/2}{n - \alpha} +
\frac{1/2}{- n - \alpha} = \frac{-\alpha}{\alpha^2-n^2} = \frac{\alpha}{n^2-\alpha^2}.
\]
-/)
  (latexEnv := "lemma")
  (discussion := 551)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant71e839d303fbf448ae842c5404825b86c4427a3595a4e14daff2201f1074eacd.lean#L1559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f0e965c048f04d42843bf51db7ae3d45f32361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
