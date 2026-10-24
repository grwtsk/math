# exists_phi_div_self_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e630ee2-9585-0fe6-19cf-78b0b450d466",
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
  "slug": "exists-phi-div-self-lt--f8c59dc4b2e347406386d7ee",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2643,
    "line": 2619,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8c59dc4b2e347406386d7eecb65f0ecb15611d5e992af71afef348f6bf0dacc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e630ee2-9585-0fe6-19cf-78b0b450d466`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2619–2643.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L2619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
