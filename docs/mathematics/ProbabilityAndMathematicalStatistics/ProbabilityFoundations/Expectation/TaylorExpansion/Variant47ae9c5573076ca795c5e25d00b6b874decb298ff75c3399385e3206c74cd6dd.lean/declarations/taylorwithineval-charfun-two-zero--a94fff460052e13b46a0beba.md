# taylorWithinEval_charFun_two_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9a6cc12-8f38-166b-d280-8271c5d2f533",
  "kind": "lemma",
  "lexical_name": "taylorWithinEval_charFun_two_zero",
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
  "slug": "taylorwithineval-charfun-two-zero--a94fff460052e13b46a0beba",
  "source": {
    "blob": "6de8d53bdfb87882b57f3602abeb4db89faaa449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 135,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a94fff460052e13b46a0beba7acf238437690e5557f865be86d70a94ab87d700",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9a6cc12-8f38-166b-d280-8271c5d2f533`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma taylorWithinEval_charFun_two_zero (hX : AEMeasurable X P)
    (hint : MemLp id 2 (P.map X)) (t : ℝ) :
    taylorWithinEval (charFun (P.map X)) 2 univ 0 t =
      1 + (P[X] : ℝ) * t * I - (P[X ^ 2] : ℝ) * t ^ 2 / 2 := by
  convert! taylorWithinEval_charFun_zero hint t with x
  simp only [Pi.pow_apply, Nat.reduceAdd, Finset.sum_range_succ, Finset.range_one,
    Finset.sum_singleton, Nat.factorial_zero, Nat.cast_one, inv_one, pow_zero, mul_one,
    integral_const, probReal_univ, smul_eq_mul, ofReal_one, Nat.factorial_one, pow_one, one_mul,
    Nat.factorial_two, Nat.cast_ofNat]
  rw [integral_map, integral_map]
  any_goals fun_prop
  simp [field]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6de8d53bdfb87882b57f3602abeb4db89faaa449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
