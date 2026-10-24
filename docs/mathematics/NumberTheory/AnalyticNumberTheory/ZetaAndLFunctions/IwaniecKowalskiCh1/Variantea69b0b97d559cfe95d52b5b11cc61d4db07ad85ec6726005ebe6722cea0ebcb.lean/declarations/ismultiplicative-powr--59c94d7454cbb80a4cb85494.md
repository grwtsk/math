# isMultiplicative_powR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48d89f6e-a032-c6fa-59eb-f40d64acb11a",
  "kind": "theorem",
  "lexical_name": "isMultiplicative_powR",
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
  "slug": "ismultiplicative-powr--59c94d7454cbb80a4cb85494",
  "source": {
    "blob": "d1e130d856dabeec0e70683332be624b1a15c231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 512,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59c94d7454cbb80a4cb85494bc25fa950d70e033c58d4a3e3683ee6ad54bfd65",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48d89f6e-a032-c6fa-59eb-f40d64acb11a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMultiplicative_powR {ν : ℂ} : IsMultiplicative (powR ν) := by
  refine ⟨by simp [powR], fun {m n : ℕ} mCn => ?_⟩
  simp only [powR, ArithmeticFunction.coe_mk]
  rcases Nat.eq_zero_or_pos m with rfl | hm
  · simp only [zero_mul, ↓reduceIte, mul_ite, mul_zero, ite_self]
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · simp only [mul_zero, ↓reduceIte]
  have hmn_pos : m * n ≠ 0 := Nat.mul_ne_zero hm.ne' hn.ne'
  simp only [hm.ne', hn.ne', hmn_pos, if_false]
  push_cast
  exact Complex.natCast_mul_natCast_cpow m n ν

@[blueprint
  "sigmaR_eq_zeta_mul_powR"
  (title := "sigmaR-eq-zeta-mul-powR")
  (statement := /-- $\sigma^R(\nu) = \zeta * \text{pow}^R(\nu)$, where $\zeta$ is the constant function $1$. -/)
  (proof := /--
  The function $\sigma^R(\nu)$ is defined as the sum of the $\nu$-th powers of the divisors of $n$. The function $\text{pow}^R(\nu)$ is defined as $n \mapsto n^\nu$ for $n \neq 0$ and $0$ for $n = 0$. The Dirichlet convolution of $\zeta$ (the constant function $1$) and $\text{pow}^R(\nu)$ is exactly $\sigma^R(\nu)$, since for each divisor $d$ of $n$, we have $(\zeta * \text{pow}^R(\nu))(n) = \sum_{d|n} 1 \cdot d^\nu = \sigma^R(\nu)(n)$. Thus, we have $\sigma^R(\nu) = \zeta * \text{pow}^R(\nu)$.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e130d856dabeec0e70683332be624b1a15c231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
