# lemma_aachcanc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:759050ce-07ca-08cb-c737-f81e65a63dc7",
  "kind": "theorem",
  "lexical_name": "lemma_aachcanc",
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
  "slug": "lemma-aachcanc--a0becc0aad49223ca7ca03c4",
  "source": {
    "blob": "8d4e5744caad9c4a9cac4d9b39a2102c21fd6987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1703,
    "line": 1639,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0becc0aad49223ca7ca03c4cd1714c7a8ebea29492aa1d8389131b6f632fb84",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:759050ce-07ca-08cb-c737-f81e65a63dc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1639–1703.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_aachcanc (s : ℂ) {n : ℤ} (hn : 0 < n) {a b : ℝ}
    (ha : a > |s.im| / (2 * π * n)) (hb : b > a)
    (ha' : a.IsHalfInteger) (hb' : b.IsHalfInteger) :
    let ϕ : ℝ → ℝ → ℝ := fun ν t ↦ ν * t - (s.im / (2 * π)) * Real.log t
    let Φ : ℝ → ℝ → ℂ := fun ν t ↦
      (t ^ (-s.re) : ℝ) * e (ϕ ν t) / (2 * π * I * (deriv (ϕ ν) t))
    let Ψ : ℝ → ℂ := fun t ↦ (-1) ^ n * (t ^ (-s) : ℂ) * (s.im / (2 * π * t)) /
      (2 * π * I * (n ^ 2 - (s.im / (2 * π * t)) ^ 2))
    (1 / 2) * (Φ n b - Φ n a + Φ (-n) b - Φ (-n) a) = Ψ b - Ψ a := by
  intro phi Φ Ψ
  have h_apply : ∀ t : ℝ, t > |s.im| / (2 * .pi * n) → t.IsHalfInteger → t > 0 →
      (1 / 2) * (Φ n t + Φ (-n) t) = Ψ t := by
    intro t ht ht' ht''
    have h_bound : |s.im| < t * (2 * .pi * n) := by
      rw [gt_iff_lt] at ht; exact (div_lt_iff₀ (by positivity)).mp ht
    convert lemma_aachcanc_pointwise s (show n ≠ 0 by linarith) t ht' ht'' ?_ ?_ ?_ using 1
    all_goals norm_num [mul_comm]
    · norm_num [ht''.ne', pi_ne_zero, mul_comm]
      field_simp
      cases abs_cases s.im <;> nlinarith [pi_pos, h_bound]
    · norm_num [ht''.ne', Real.differentiableAt_log]
      field_simp
      cases abs_cases s.im <;> nlinarith [pi_pos, h_bound]
    · rw [sub_eq_zero, eq_comm]
      norm_num [div_pow, ← mul_assoc, Complex.ext_iff]
      norm_cast
      norm_num
      rw [div_eq_iff (by positivity)]
      rw [abs_lt] at h_bound
      nlinarith [pi_pos]
  have hb_pos : b > 0 := lt_trans (lt_of_le_of_lt (by positivity) ha) hb
  trans (1 / 2) * (Φ n b + Φ (-n) b) - (1 / 2) * (Φ n a + Φ (-n) a)
  · ring
  rw [h_apply b (lt_trans ha hb) hb' hb_pos, h_apply a ha ha' (lt_of_le_of_lt (by positivity) ha)]

blueprint_comment /--
It is this easy step that gives us quadratic decay on $n$. It is just as
in the proof of van der Corput's Process B in, say, \cite[I.6.3, Thm.~4]{zbMATH06471876}.
-/

set_option backward.isDefEq.respectTransparency false in
@[blueprint
  "prop:applem"
  (title := "Estimating a Fourier cosine integral")
  (statement := /--
Let $s = \sigma + i \tau$, $\sigma\geq 0$, $\tau\in \mathbb{R}$.
Let $a,b\in \mathbb{Z} + \frac{1}{2}$, $b>a>\frac{|\tau|}{2\pi}$.
Write $\vartheta = \frac{\tau}{2\pi a}$. Then, for any integer $n\geq 1$,
$$\begin{aligned}\int_a^b t^{-s} \cos 2\pi n t\, dt &=
\left. \left(\frac{(-1)^n t^{-s}}{2\pi i} \cdot
  \frac{\frac{\tau}{2\pi t}}{n^2 - \left(\frac{\tau}{2\pi t}\right)^2}\right)\right|_a^b \\
&\quad+ \frac{a^{-\sigma-1}}{4\pi^2}\, O^*\left(\frac{\sigma}{(n-\vartheta)^2}
  + \frac{\sigma}{(n+\vartheta)^2}
  + \frac{|\vartheta|}{|n-\vartheta|^3}
  + \frac{|\vartheta|}{|n+\vartheta|^3}\right).\end{aligned}$$
-/)
  (proof := /--
Write $\cos 2\pi n t = \frac{1}{2} (e(n t) + e(-n t))$. Since $n\geq 1$ and
$a>\frac{|\tau|}{2\pi}$, we know that $a>\frac{|\tau|}{2 \pi n}$, and so we can apply
Lemma \ref{lem:aachfour} with $\nu = \pm n$.
We then apply Lemma~\ref{lem:aachcanc} to combine the boundary contributions
$\left. \right|_a^b$ for $\nu=\pm n$.
-/)
  (latexEnv := "proposition")
  (discussion := 552)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean#L1639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4e5744caad9c4a9cac4d9b39a2102c21fd6987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
