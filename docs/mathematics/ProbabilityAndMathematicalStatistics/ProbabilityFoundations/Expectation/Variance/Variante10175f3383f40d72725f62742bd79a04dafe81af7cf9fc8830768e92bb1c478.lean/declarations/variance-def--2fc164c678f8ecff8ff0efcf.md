# variance_def'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47920753-8fb4-b580-a7f5-68e598d38cc1",
  "kind": "theorem",
  "lexical_name": "variance_def'",
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
  "slug": "variance-def--2fc164c678f8ecff8ff0efcf",
  "source": {
    "blob": "34a4c6fa3818b09f2413169a1f56da463914c95a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 218,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fc164c678f8ecff8ff0efcf1febd2a59ce696a8da53498f0567b2878185a794",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47920753-8fb4-b580-a7f5-68e598d38cc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem variance_def' [@IsProbabilityMeasure Ω _ ℙ] {X : Ω → ℝ} (hX : Memℒp X 2) :
    Var[X] = 𝔼[X ^ 2] - 𝔼[X] ^ 2 := by
  rw [hX.variance_eq, sub_sq', integral_sub', integral_add']; rotate_left
  · exact hX.integrable_sq
  · convert @integrable_const Ω ℝ (_) ℙ _ _ (𝔼[X] ^ 2)
  · apply hX.integrable_sq.add
    convert @integrable_const Ω ℝ (_) ℙ _ _ (𝔼[X] ^ 2)
  · exact ((hX.integrable one_le_two).const_mul 2).mul_const' _
  simp [integral_mul_right, integral_mul_left]
  ring
#align probability_theory.variance_def' ProbabilityTheory.variance_def'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34a4c6fa3818b09f2413169a1f56da463914c95a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
