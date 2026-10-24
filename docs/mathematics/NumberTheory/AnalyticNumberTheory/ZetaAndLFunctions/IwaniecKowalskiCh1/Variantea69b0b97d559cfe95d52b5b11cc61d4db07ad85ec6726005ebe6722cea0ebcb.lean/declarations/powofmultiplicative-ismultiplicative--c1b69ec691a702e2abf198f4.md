# powOfMultiplicative_isMultiplicative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b53faafd-de1c-1393-f417-78023df6d87b",
  "kind": "lemma",
  "lexical_name": "powOfMultiplicative_isMultiplicative",
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
  "slug": "powofmultiplicative-ismultiplicative--c1b69ec691a702e2abf198f4",
  "source": {
    "blob": "d1e130d856dabeec0e70683332be624b1a15c231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1089,
    "line": 1071,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1b69ec691a702e2abf198f49eb98a61fae2ae4dd268f3d4504a8e3c11212195",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b53faafd-de1c-1393-f417-78023df6d87b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1071–1089.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma powOfMultiplicative_isMultiplicative {R : Type u_1} [CommMonoidWithZero R]
    {f : ArithmeticFunction R} (hf : f.IsMultiplicative) (k : ℕ) :
    (toArithmeticFunction (fun n ↦ (f n) ^ k)).IsMultiplicative := by
  simp only [IsMultiplicative, toArithmeticFunction, coe_mk, one_ne_zero, ↓reduceIte, _root_.mul_eq_zero, mul_ite, mul_zero, ite_mul, zero_mul, hf.1, one_pow, true_and]
  intro m n mCn
  by_cases m_eq_zero : m = 0 <;> simp only [m_eq_zero, true_or, ↓reduceIte, ite_self]
  by_cases n_eq_zero : n = 0 <;> simp only [n_eq_zero, or_true, ↓reduceIte]
  simp only [or_self, ↓reduceIte, hf.2 mCn, mul_pow]

@[blueprint
  "moebius_sq_LSeries.term_isMultiplicative"
  (title := "moebius-sq-LSeries.term-isMultiplicative")
  (statement := /--
    We have that $n\mapsto \mu^2(n)/n^{-s}$ is a multiplicative function.
  -/)
  (proof := /--
    Follows as a consequence of Lemma \ref{LSeries.term-isMultiplicative-if-fun-isMultiplicative}
    and \ref{moebius-sq-isMultiplicative}.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantea69b0b97d559cfe95d52b5b11cc61d4db07ad85ec6726005ebe6722cea0ebcb.lean#L1071).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e130d856dabeec0e70683332be624b1a15c231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
