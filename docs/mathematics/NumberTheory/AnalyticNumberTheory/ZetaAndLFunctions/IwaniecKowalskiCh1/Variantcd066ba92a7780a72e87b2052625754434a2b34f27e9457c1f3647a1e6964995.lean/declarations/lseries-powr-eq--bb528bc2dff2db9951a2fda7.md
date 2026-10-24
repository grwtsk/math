# LSeries_powR_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b365865c3c2c3a2b16519910930a7370ed08f5fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 575,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e3097b2-5a65-3818-13ab-628021659112",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d7b451d-bff8-3e25-e6d5-99235b41ddd8",
  "kind": "lemma",
  "lexical_name": "LSeries_powR_eq",
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
  "slug": "lseries-powr-eq--bb528bc2dff2db9951a2fda7",
  "source": {
    "blob": "b365865c3c2c3a2b16519910930a7370ed08f5fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 575,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb528bc2dff2db9951a2fda733f264f097fe73d804e272601a2435f93104f5a2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d7b451d-bff8-3e25-e6d5-99235b41ddd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries_powR_eq (ν : ℂ) {s : ℂ} (hs : 1 < (s - ν).re) :
    LSeries (powR ν) s = riemannZeta (s - ν) := by
  convert ( LSeries_congr _ _ ) using 1;
  · rw [ zeta_eq_tsum_one_div_nat_cpow hs ];
    · refine tsum_congr fun n => ?_;
      by_cases hn : n = 0
      · simp only [LSeries.term, hn, one_div, CharP.cast_eq_zero, ↓reduceIte, inv_eq_zero, Complex.cpow_eq_zero_iff,
          ne_eq, true_and]
        exact sub_ne_zero_of_ne (by rintro rfl; norm_num at hs)
      · simp only [one_div];
        rw [← Complex.cpow_neg, neg_sub, Complex.cpow_sub];
        · exact Eq.symm (LSeries.term_of_ne_zero hn (fun n ↦ ↑n ^ ν) s)
        · exact cast_ne_zero.mpr hn
  · unfold ArithmeticFunction.powR; aesop;

@[blueprint
  "abscissa_powR_le"
  (title := "abscissa powR le")
  (statement := /-- The abscissa of absolute convergence of $L(\text{pow}^R(\nu), s)$ is at most $\Re(\nu) + 1$. -/)
  (proof := /--
  We apply \ref{LSeries.abscissaOfAbsConv_le_of_le_const_mul_rpow} which states that if there exists a constant $C$ such that $\|f(n)\| \leq C \cdot n^r$ for all $n$ sufficiently large, then the abscissa of absolute convergence of $L(f, s)$ is at most $r + 1$. In our case, we can take $f(n) = n^\nu$ and observe that $\|n^\nu\| = n^{\Re(\nu)}$. Thus, we can choose $C = 1$ and $r = \Re(\nu)$, which gives us the desired result that the abscissa of absolute convergence of $L(\text{pow}^R(\nu), s)$ is at most $\Re(\nu) + 1$.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantcd066ba92a7780a72e87b2052625754434a2b34f27e9457c1f3647a1e6964995.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b365865c3c2c3a2b16519910930a7370ed08f5fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
