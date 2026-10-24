# damping_multiplicative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5e62b161a4abc1c878794a3bddbbc1895c30b63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f85ee6c-cccb-eb9b-3ca5-e351fa351658",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7bdac0df-674c-443b-6ac7-6770a01e2c87",
  "kind": "theorem",
  "lexical_name": "damping_multiplicative",
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
  "slug": "damping-multiplicative--591a0dedc16ba8afccfefe46",
  "source": {
    "blob": "d5e62b161a4abc1c878794a3bddbbc1895c30b63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 18,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:591a0dedc16ba8afccfefe46e855d63c1c4d763eff4638df12fa804f54901050",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bdac0df-674c-443b-6ac7-6770a01e2c87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem damping_multiplicative (ε : ℝ) : (damping ε).IsMultiplicative := by
  rw [IsMultiplicative.iff_ne_zero]
  constructor
  · simp [damping]
  · intro m n hm hn _
    have hmR : (m : ℝ) ≠ 0 := by exact_mod_cast hm
    have hnR : (n : ℝ) ≠ 0 := by exact_mod_cast hn
    simp only [damping, ArithmeticFunction.coe_mk, if_neg hm, if_neg hn,
      if_neg (mul_ne_zero hm hn), Nat.cast_mul]
    rw [Real.log_mul hmR hnR, mul_add, Real.exp_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant7b1d1c2f571186a50eef3ed28fced028478aa5b74d1004a98797665771ca847e.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5e62b161a4abc1c878794a3bddbbc1895c30b63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
