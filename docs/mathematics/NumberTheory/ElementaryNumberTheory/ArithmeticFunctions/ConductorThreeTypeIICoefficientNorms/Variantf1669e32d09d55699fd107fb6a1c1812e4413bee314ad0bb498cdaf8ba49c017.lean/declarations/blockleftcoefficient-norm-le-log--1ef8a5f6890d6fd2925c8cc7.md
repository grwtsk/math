# blockLeftCoefficient_norm_le_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c3a148f-5835-1b9a-3b08-37a67d422a90",
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
  "slug": "blockleftcoefficient-norm-le-log--1ef8a5f6890d6fd2925c8cc7",
  "source": {
    "blob": "35cc5b7b3b112ca7891f1d33a5973f7a070c3e89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 165,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ef8a5f6890d6fd2925c8cc7d01f82fcd046df6d3a3e5dbc9ea307728dd15b6b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c3a148f-5835-1b9a-3b08-37a67d422a90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–190.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35cc5b7b3b112ca7891f1d33a5973f7a070c3e89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
