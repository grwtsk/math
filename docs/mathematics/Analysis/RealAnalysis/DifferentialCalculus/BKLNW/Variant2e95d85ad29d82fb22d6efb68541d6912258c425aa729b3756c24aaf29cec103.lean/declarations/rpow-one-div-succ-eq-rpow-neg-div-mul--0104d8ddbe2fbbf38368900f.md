# rpow_one_div_succ_eq_rpow_neg_div_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31d573af61253eda377326baebeb36929353a168",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1675,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f39890ca-ead3-5807-1d57-a29e7a4a89ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df85b056-293e-70f7-bfdf-0c495c94c408",
  "kind": "lemma",
  "lexical_name": "rpow_one_div_succ_eq_rpow_neg_div_mul",
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
  "slug": "rpow-one-div-succ-eq-rpow-neg-div-mul--0104d8ddbe2fbbf38368900f",
  "source": {
    "blob": "31d573af61253eda377326baebeb36929353a168",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1712,
    "line": 1675,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0104d8ddbe2fbbf38368900ffbab8ee781d92476c4a880b22afc84e258ac4e3d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df85b056-293e-70f7-bfdf-0c495c94c408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1675–1712.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma rpow_one_div_succ_eq_rpow_neg_div_mul (ℓ : ℝ) (hℓ : 0 ≤ ℓ) (x : ℝ) (hx_pos : 0 < x) :
    x ^ (1 / (ℓ + 1)) = x ^ (-ℓ / (ℓ + 1)) * x := by
  nth_rw 3 [← Real.rpow_one x]
  rw [← Real.rpow_add hx_pos]
  congr 1
  field_simp [show ℓ + 1 ≠ 0 by linarith]
  ring

@[blueprint
  "bklnw-corollary-9-1"
  (title := "BKLNW Corollary 9.1")
  (statement := /--  Let $(v,c,C) \in \{(5 \cdot 10^{10}, 0.8, 0.81), (32 \cdot 10^{12}, 0.88, 0.86), (10^{19}, 0.94, 0.94) \}$. Let $k \ge 0$ and let $b$ satisfy
 $\max(10^4, e^{2k}) \le e^{b} \le v$. Then
 \begin{equation}
  \label{eqn:C-Section-Post-Corollary}
  \theta(x) \ge x - \frac{\mathcal{C}_{b,k}x}{(\log x)^k} \qquad  \text{for all } x \in [e^b,v] \end{equation}
 where
  \begin{equation}
    \label{defn:mathcalCbk}
    \mathcal{C}_{b,k} = b^k ( (C+1)e^{-b/2} + c_0e^{-2b/3}+ c e^{-3b/4}+ c_0 e^{-4b/5}  ),
  \end{equation}
and where $c_0$ is defined in Rosser-Schoenfeld.-/)
  (proof := /-- We apply \eqref{eqn:C-Section-Post-Lemma} with $u=e^{\frac{b}{2}} $:
 \[
   \theta(x) \ge x-(C +1)x^{\frac12} - cx^{\frac14}  - c_0 x^{\frac13} - c_0 x^{\frac15} \ \text{for all}\ x \in [e^b,v].
 \]
We now set
 \begin{equation}
  \label{eqn:C-Section-prebound}
   \mathcal{C}_{b,k} = \max_{x \in [e^b,v]  } \Big\{
  (C+1)\frac{(\log x)^k}{x^\frac12} + c_0\frac{(\log x)^k}{x^\frac23} + c\frac{(\log x)^k}{x^\frac34} + c_0\frac{(\log x)^k}{x^\frac45}
  \Big\}.
 \end{equation}
We find that this equals the expression in \eqref{defn:mathcalCbk} by observing that
for  $a \in \{ \frac12, \frac23, \frac34, \frac45 \}$, $\frac{(\log x)^k}{ x^{a}}$ is decreasing for  $x \ge e^b$ as long as $e^{b} \ge e^{k/a}$.
This last inequality leads to the condition $b \ge 2k$.  -/)
  (latexEnv := "corollary")
  (discussion := 1262)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean#L1675).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31d573af61253eda377326baebeb36929353a168` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
