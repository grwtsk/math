# exists_phi_div_self_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2611,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5bb9ebb-07ab-336c-63e9-83aecb0a8c9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a4fadd1-30ba-64fc-f558-23c5f74d38b5",
  "kind": "lemma",
  "lexical_name": "exists_phi_div_self_lt",
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
  "slug": "exists-phi-div-self-lt--1326146177cdaa0340280519",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2635,
    "line": 2611,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1326146177cdaa0340280519cbae29b84925cc212a3dcf5bba572d6ec674774e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a4fadd1-30ba-64fc-f558-23c5f74d38b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2611–2635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_phi_div_self_lt {ε : ℝ} (hε : 0 < ε) :
    ∃ a : ℕ, a ≠ 0 ∧ (a.totient : ℝ) / a < ε := by
  obtain ⟨n, hn⟩ : ∃ n : ℕ, ∏ p ∈ filter Prime (range n), (1 - 1 / (p : ℝ)) < ε :=
    (prod_one_sub_one_div_prime_tendsto_zero.eventually (gt_mem_nhds hε)).exists
  use ∏ p ∈ filter Prime (range n), p
  rw [totient_eq_div_primeFactors_mul, primeFactors_prod]
  · rw [Nat.div_self] <;> norm_num
    · rw [← Finset.prod_div_distrib]
      refine ⟨prod_ne_zero_iff.mpr fun p hp ↦ (mem_filter.mp hp).2.ne_zero, ?_⟩
      convert hn using 1
      exact prod_congr rfl fun x hx ↦ by
        rw [cast_sub <| succ_le_of_lt (mem_filter.mp hx).2.pos]
        simp [sub_div, (mem_filter.mp hx).2.ne_zero]
    · exact fun _ _ hi' ↦ hi'.pos
  · aesop

@[blueprint
  "primeCounting-is-o-id"
  (statement := /-- $$\pi(n) = o(n) \quad \text{as } n \to \infty.$$ -/)
  (proof := /-- Given $\varepsilon > 0$, choose $a \neq 0$ with $\varphi(a)/a < \varepsilon/2$
(using $\prod_{p \leq n}(1 - 1/p) \to 0$). For $n \geq a + 2$,
$$\pi(n) \leq \frac{\varphi(a)}{a} \cdot n + \varphi(a) + \pi(a+1) + 1.$$
Since $\varphi(a)/a < \varepsilon/2$, for $n$ large enough the constant terms are absorbed,
giving $\pi(n) < \varepsilon n$. -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L2611).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
