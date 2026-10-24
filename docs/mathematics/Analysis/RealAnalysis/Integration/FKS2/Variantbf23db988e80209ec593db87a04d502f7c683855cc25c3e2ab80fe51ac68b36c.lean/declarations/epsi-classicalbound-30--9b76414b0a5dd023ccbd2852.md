# epsi_classicalBound_30

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c44057c-aba5-fc7b-6f7a-764db58c2ca4",
  "kind": "lemma",
  "lexical_name": "epsi_classicalBound_30",
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
  "slug": "epsi-classicalbound-30--9b76414b0a5dd023ccbd2852",
  "source": {
    "blob": "b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1492,
    "line": 1477,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b76414b0a5dd023ccbd28524d5a9b8fab9b0ddc7b5542cde23a0cbfc445897c",
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

Occurrence: `result:8c44057c-aba5-fc7b-6f7a-764db58c2ca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1477–1492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma epsi_classicalBound_30 : Eψ.classicalBound 121.096 (3 / 2) 2 5.5666305 (Real.exp 30) := by
  intro y hy
  have h2exp30 : (2 : ℝ) ≤ Real.exp 30 :=
    le_trans Real.exp_one_gt_two.le ((Real.exp_le_exp).2 (by norm_num : (1 : ℝ) ≤ 30))
  exact FKS.FKS_corollary_1_3 y (le_trans h2exp30 hy)

@[blueprint
  "fks2-corollary-14"
  (title := "FKS2 Corollary 14")
  (statement := /--
  We have an admissible bound for $E_\theta$ with $A = 121.0961$, $B=3/2$, $C=2$,
  $R = 5.5666305$, $x_0=2$.
  -/)
  (proof := /-- By Corollary \ref{fks_cor_13}, with $R = 5.5666305$, and using the admissible asymptotic bound for $E_\psi(x)$ with $A_\psi = 121.096$, $B = 3/2$, $C = 2$, for all $x \geq x_0 = e^{30}$, we can obtain $\nu_{asymp}(x_0) \leq 6.3376 \cdot 10^{-7}$, from which one can conclude an admissible asymptotic bound for $E_\theta(x)$ with $A_\theta = 121.0961$, $B = 3/2$, $C = 2$, for all $x \geq x_0 = e^{30}$. Additionally, the minimum value of $\varepsilon_{\theta,asymp}(x)$ for $2 \leq x \leq e^{30}$ is roughly $2.6271\ldots$ at $x=2$. The results found in \cite[Table 13 and 14]{BKLNW} give $E_\theta(x) \leq 1 < \varepsilon_{\theta,asymp}(2) \leq \varepsilon_{\theta,asymp}(x)$ for all $2 \leq x \leq e^{30}$. -/)
  (latexEnv := "corollary")
  (discussion := 672)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean#L1477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
