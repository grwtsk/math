# gram_plus_minus_reflection_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:427554cf-53e1-2376-cec0-5218f94074a1",
  "kind": "theorem",
  "lexical_name": "gram_plus_minus_reflection_nonneg",
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
  "slug": "gram-plus-minus-reflection-nonneg--18d09f2824e6ea55bbceb9ab",
  "source": {
    "blob": "2785b41e2b3ce6629293c3e24598f273f42fd28c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 138,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramQuotient/Variant52c52ba6dbc93691180ddb5d915e03108d0013f17bbe64b9dfa01868331faa71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18d09f2824e6ea55bbceb9ab7d90ed7e7af3153b1ddc77cd41bb7ff9576522ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramQuotient/Variant52c52ba6dbc93691180ddb5d915e03108d0013f17bbe64b9dfa01868331faa71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:427554cf-53e1-2376-cec0-5218f94074a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gram_plus_minus_reflection_nonneg (q : ComplexL2) (I : Finset ℕ)
    (x : GramQuotient q I) :
    0 ≤ (⟪x, x⟫_ℂ + signedForm q I x x).re ∧
    0 ≤ (⟪x, x⟫_ℂ - signedForm q I x x).re := by
  have hp := augmented_gram_nonneg q I x x
  have hm := augmented_gram_nonneg q I x (-x)
  simp only [signedForm, map_neg, inner_neg_left, inner_neg_right,
    inner_neg_neg, Complex.add_re, Complex.sub_re, Complex.neg_re] at hp hm ⊢
  constructor <;> linarith

/-- Common-source comparison supplies uniqueness before any cocycle assertion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramQuotient/Variant52c52ba6dbc93691180ddb5d915e03108d0013f17bbe64b9dfa01868331faa71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramQuotient/Variant52c52ba6dbc93691180ddb5d915e03108d0013f17bbe64b9dfa01868331faa71.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2785b41e2b3ce6629293c3e24598f273f42fd28c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
