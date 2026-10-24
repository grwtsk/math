# admissible_bound_le_0826

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ceb30bd4-5bb0-0dc4-91c8-ef33e70e688c",
  "kind": "lemma",
  "lexical_name": "admissible_bound_le_0826",
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
  "slug": "admissible-bound-le-0826--cc75dde9eaeffbafc11e6e78",
  "source": {
    "blob": "b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4183,
    "line": 4141,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc75dde9eaeffbafc11e6e781bdfba37c8e09e417eaf0fe98046d192281e37a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceb30bd4-5bb0-0dc4-91c8-ef33e70e688c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4141–4183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma admissible_bound_le_0826 (x : ℝ) (hx : x ≥ 1) : admissible_bound 0.826 0.25 1.00 5.5666305 x ≤ 0.4298 := by
  unfold admissible_bound;
  -- Let $y = \sqrt{\log x / 5.5666305}$. Then the expression becomes $0.826 * y^{1/2} * \exp(-y)$.
  set y : ℝ := Real.sqrt (Real.log x / 5.5666305)
  have h_y : 0.826 * y^(1/2 : ℝ) * Real.exp (-y) ≤ 0.4298 := by
    -- Apply the lemma sqrt_exp_le_half with v = y.
    have h_sqrt_exp : y^(1/2 : ℝ) * Real.exp (-y) ≤ 1 / 2 := by
      convert sqrt_exp_le_half y ( Real.sqrt_nonneg _ ) using 1 ; norm_num [ ← Real.sqrt_eq_rpow ];
    linarith;
  convert h_y using 1 ; norm_num [ Real.sqrt_eq_rpow, ← Real.rpow_mul ( div_nonneg ( Real.log_nonneg hx ) ( by norm_num : ( 0 :ℝ ) ≤ 5.5666305 ) ) ] ; ring_nf;
  rw [ show ( log x * ( 2000000 / 11133261 ) ) = ( Real.sqrt ( log x / 5.5666305 ) ) ^ 2 by rw [ Real.sq_sqrt <| by exact div_nonneg ( Real.log_nonneg hx ) <| by norm_num ] ; ring ] ; rw [ ← Real.rpow_natCast, ← Real.rpow_mul ( by positivity ) ] ; norm_num;
  norm_num +zetaDelta at *
  left
  have hnonneg: 0 ≤ (Real.sqrt (Real.log x)) / (Real.sqrt 11133261 / Real.sqrt 2000000) := by positivity
  simpa [one_div] using (Real.pow_rpow_inv_natCast (x := √(Real.log x) / (√11133261 / √2000000)) (n := 2) hnonneg (by decide))



@[blueprint
  "fks2-corollary-26"
  (title := "FKS2 Corollary 26")
  (statement := /--
  One has
  \[
  |\pi(x) - \mathrm{Li}(x)| \leq 0.4298 \frac{x}{\log x}
  \]
  for all $x \geq 2$.
  -/)
  (proof := /-- We numerically verify that the inequality holds by showing that, for $1 \leq n \leq 25$ and all $x \in [p_n, p_{n+1}]$,
  \[
  \left| \frac{\log(x)}{x} (\pi(x) - \mathrm{Li}(x)) \right| \leq \left| \frac{\log(p_n)}{p_n} (\pi(p_n) - \mathrm{Li}(p_{n+1})) \right| \leq 0.4298.
  \]
  For $x$ satisfying $p_{25} = 97 \leq x \leq 10^{19}$, we use Theorems \ref{buthe-theorem-2e}, \ref{buthe-theorem-2f} and verify
  \[
  \mathcal{E}(x) = \frac{1}{\sqrt{x}} \left( 1.95 + \frac{3.9}{\log(x)} + \frac{19.5}{(\log(x))^2} \right) \leq 0.4298.
  \]
  For $x > 10^{19}$, we use Theorem \ref{fks-theorem-6} as well as values for $\varepsilon_{\pi,num}(x)$ found in Table 4 to conclude
  \[
  \varepsilon_{\pi,num}(x) \leq 0.4298.
  \]
  -/)
  (latexEnv := "corollary")
  (discussion := 723)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean#L4141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
