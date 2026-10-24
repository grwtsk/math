# blockLeftCoefficient_norm_le_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6dfd6a331d07998d68d2e7d5d700bf4593184b07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bec01d95-2a55-b390-824d-2fef9f67556f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6460094a-70cd-2924-b7de-f9ba58d1c1b0",
  "kind": "theorem",
  "lexical_name": "blockLeftCoefficient_norm_le_log",
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
  "slug": "blockleftcoefficient-norm-le-log--0f9b09b8217811b384f82d2f",
  "source": {
    "blob": "6dfd6a331d07998d68d2e7d5d700bf4593184b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 157,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f9b09b8217811b384f82d2f51d24814e7181aca3f45af2d11925d2f06cde5a5",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6460094a-70cd-2924-b7de-f9ba58d1c1b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem blockLeftCoefficient_norm_le_log {N : ℕ}
    (B : TypeIIDyadicBlock N) (m : B.Left) :
    ‖blockLeftCoefficient B m‖ ≤ Real.log (2 * N : ℝ) := by
  by_cases hcut : vaughanFourthRootCutoff N < m.1.1
  · have hLambda : ArithmeticFunction.vonMangoldt m.1.1 ≤
        Real.log (m.1.1 : ℝ) :=
      ArithmeticFunction.vonMangoldt_le_log
    have hmpos : 0 < m.1.1 := by omega
    have hlog : Real.log (m.1.1 : ℝ) ≤ Real.log (2 * N : ℝ) := by
      apply Real.log_le_log
      · exact_mod_cast hmpos
      · exact_mod_cast block_index_le_two_mul_scale m
    rw [blockLeftCoefficient, conductorThreeVaughanLeft, if_pos hcut]
    rw [Complex.norm_real, Real.norm_eq_abs, abs_mul,
      abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
    calc
      |(conductorThreeIntegerValue m.1.1 : ℝ)| *
          ArithmeticFunction.vonMangoldt m.1.1 ≤
          1 * ArithmeticFunction.vonMangoldt m.1.1 := by
        exact mul_le_mul_of_nonneg_right
          (abs_conductorThreeIntegerValue_cast_le_one m.1.1)
          ArithmeticFunction.vonMangoldt_nonneg
      _ ≤ Real.log (2 * N : ℝ) := by linarith
  · simp [blockLeftCoefficient, conductorThreeVaughanLeft, hcut,
      log_two_mul_N_nonneg B]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf81d3318291572cba10970a48aaf8bebdb1ee2e9658cf3198dcd256f4e650a18.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dfd6a331d07998d68d2e7d5d700bf4593184b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
