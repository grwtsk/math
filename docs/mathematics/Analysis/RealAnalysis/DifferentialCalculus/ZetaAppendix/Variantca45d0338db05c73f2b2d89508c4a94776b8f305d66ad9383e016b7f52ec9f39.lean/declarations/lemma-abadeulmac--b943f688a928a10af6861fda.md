# lemma_abadeulmac'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1777,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c4f1ddb-26e7-0757-105b-a07cbe718d34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ad8f8f8-930e-38f5-a0ba-e038ddaf333e",
  "kind": "theorem",
  "lexical_name": "lemma_abadeulmac'",
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
  "slug": "lemma-abadeulmac--b943f688a928a10af6861fda",
  "source": {
    "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1847,
    "line": 1777,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b943f688a928a10af6861fda4d2b82394f224c13f0c9a994f5b6354eb0c27e6a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ad8f8f8-930e-38f5-a0ba-e038ddaf333e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1777–1847.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_abadeulmac' {b : ℕ} (hb : 0 < b) {s : ℂ}
    (hs1 : s ≠ 1) (hsigma : 0 < s.re) :
    ∑ n ∈ Icc 1 b, (n : ℂ) ^ (-s) =
      riemannZeta s + (b ^ (1 - s) : ℂ) / (1 - s) + (b ^ (-s) : ℂ) / (2) +
      s * ∫ y in Set.Ioi (b : ℝ), (Int.fract y - 1 / 2) * ((y : ℂ) ^ (-(s + 1))) := by
  rw [← Zeta0EqZeta hb (by linarith) hs1]
  unfold riemannZeta0
  rw [show ∑ n ∈ Icc 1 b, (n : ℂ) ^ (-s) = (∑ n ∈ Icc 1 b, (n : ℂ) ^ (-s)) + 0 by ring]
  rw [show ∑ n ∈ range (b + 1), 1 / (n : ℂ) ^ s = ∑ n ∈ Icc 1 b, (n : ℂ) ^ (-s) by
    rw [range_eq_Ico]
    rw [sum_eq_sum_Ico_succ_bot (by linarith)]
    norm_cast
    rw [zero_cpow (by aesop)]
    simp only [div_zero, zero_add, one_div]
    rw [← Finset.Ico_succ_right_eq_Icc]
    congr
    ext x
    rw [cpow_neg]]
  rw [show (∑ n ∈ Icc 1 b, (n : ℂ) ^ (-s) + -(b : ℂ) ^ (1 - s) / (1 - s) + -(b : ℂ) ^ (-s) / 2 +
          s * ∫ (x : ℝ) in Set.Ioi ↑b, (⌊x⌋ + 1 / 2 - x : ℂ) / (x : ℂ) ^ (s + 1)) +
        (b : ℂ) ^ (1 - s) / (1 - s) +
      (b : ℂ) ^ (-s) / 2 +
    s * ∫ (y : ℝ) in Set.Ioi ↑b, ((Int.fract y) - 1 / 2) * (y : ℂ) ^ (-(s + 1)) =
      ∑ n ∈ Icc 1 b, (n : ℂ) ^ (-s) + (
          s * (∫ (x : ℝ) in Set.Ioi ↑b, (⌊x⌋ + 1 / 2 - x : ℂ) / (x : ℂ) ^ (s + 1))   +
    s * ∫ (y : ℝ) in Set.Ioi ↑b, ((Int.fract y) - 1 / 2) * (y : ℂ) ^ (-(s + 1))) by ring]
  congr! 1
  suffices h : ∫ (x : ℝ) in Set.Ioi ↑b, (⌊x⌋ + 1 / 2 - x : ℂ) / ↑x ^ (s + 1) =
             -∫ (y : ℝ) in Set.Ioi ↑b, ((Int.fract y) - 1 / 2 : ℂ) * ↑y ^ (-(s + 1)) by
    rw [h]; ring
  rw [← MeasureTheory.integral_neg]
  congr 1
  ext x
  unfold Int.fract
  rw [show (x : ℂ) ^ (-(s + 1)) = 1 / (↑x : ℂ) ^ (s + 1) by
    rw [cpow_neg, one_div]]
  rw [mul_one_div, ← neg_div]
  congr
  ring_nf
  push_cast
  ring_nf

set_option backward.isDefEq.respectTransparency false in
@[blueprint
  "lem:abadeulmac"
  (title := "Identity for a partial sum of zeta(s)")
  (statement := /--
Let $b>0$, $b\in \mathbb{Z} + \frac{1}{2}$.
Then, for all $s\in \mathbb{C}\setminus \{1\}$ with $\Re s > 0$,
\begin{equation}\label{eq:abak1}
  \sum_{n\leq b} \frac{1}{n^s} = \zeta(s) + \frac{b^{1-s}}{1-s}
  + s \int_b^\infty \left(\{y\}-\frac{1}{2}\right) \frac{dy}{y^{s+1}}.
\end{equation}
-/)
  (proof := /--
Assume first that $\Re s > 1$. By first-order Euler-Maclaurin and
$b\in \mathbb{Z}+\frac{1}{2}$,
\[\sum_{n>b}\frac{1}{n^s} = \int_b^\infty \frac{dy}{y^s} + \int_b^\infty
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

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean#L1777).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
