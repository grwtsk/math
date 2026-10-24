# riemannZeta_neg_nat_eq_bernoulli

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fde4914c-bbd9-f3ae-afe9-3247632d7698",
  "kind": "theorem",
  "lexical_name": "riemannZeta_neg_nat_eq_bernoulli",
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
  "slug": "riemannzeta-neg-nat-eq-bernoulli--cf088f5557889e20a022f626",
  "source": {
    "blob": "3202a1b71118103de05b67901cdac2dd1dc460bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 244,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf088f5557889e20a022f626af304673518ea6faa2f9e0eacc830318d38e2986",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fde4914c-bbd9-f3ae-afe9-3247632d7698`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannZeta_neg_nat_eq_bernoulli (k : ℕ) :
    riemannZeta (-k) = (-1 : ℂ) ^ k * bernoulli (k + 1) / (k + 1) := by
  rw [riemannZeta_neg_nat_eq_bernoulli', bernoulli, Rat.cast_mul, Rat.cast_pow, Rat.cast_neg,
    Rat.cast_one, ← neg_one_mul, ← mul_assoc, pow_succ, ← mul_assoc, ← mul_pow, neg_one_mul (-1),
    neg_neg, one_pow, one_mul]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant1c3426f9f323b2db8acc765900ca0b078cbb05284e620b51ec8ebf379854846f.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3202a1b71118103de05b67901cdac2dd1dc460bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
