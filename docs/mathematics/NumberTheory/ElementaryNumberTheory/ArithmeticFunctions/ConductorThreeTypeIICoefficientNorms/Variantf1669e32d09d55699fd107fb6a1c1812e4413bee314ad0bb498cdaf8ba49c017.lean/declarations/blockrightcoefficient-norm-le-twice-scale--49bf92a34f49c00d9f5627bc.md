# blockRightCoefficient_norm_le_twice_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72f38c4c-177f-f5ca-1eec-95031c781c26",
  "kind": "theorem",
  "lexical_name": "blockRightCoefficient_norm_le_twice_scale",
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
  "slug": "blockrightcoefficient-norm-le-twice-scale--49bf92a34f49c00d9f5627bc",
  "source": {
    "blob": "35cc5b7b3b112ca7891f1d33a5973f7a070c3e89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 191,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49bf92a34f49c00d9f5627bcd7339b9c97d2b1d97c2856f4429a1da940d2882f",
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

Occurrence: `result:72f38c4c-177f-f5ca-1eec-95031c781c26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem blockRightCoefficient_norm_le_twice_scale {N : ℕ}
    (B : TypeIIDyadicBlock N) (k : B.Right) :
    ‖blockRightCoefficient B k‖ ≤ (2 * B.K : ℝ) := by
  by_cases hcut : vaughanFourthRootCutoff N < k.1.1
  · rw [blockRightCoefficient, conductorThreeVaughanRight, if_pos hcut]
    rw [Complex.norm_real, Real.norm_eq_abs, abs_mul]
    calc
      |(conductorThreeIntegerValue k.1.1 : ℝ)| *
          |vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k.1.1| ≤
          1 * |vaughanDivisorCoefficient
            (vaughanFourthRootCutoff N) k.1.1| := by
        exact mul_le_mul_of_nonneg_right
          (abs_conductorThreeIntegerValue_cast_le_one k.1.1)
          (abs_nonneg _)
      _ ≤ (k.1.1.divisors.card : ℝ) := by
        simpa using abs_vaughanDivisorCoefficient_le_card_divisors
          (vaughanFourthRootCutoff N) k.1.1
      _ ≤ (k.1.1 : ℝ) := by
        exact_mod_cast Nat.card_divisors_le_self k.1.1
      _ ≤ (2 * B.K : ℝ) := by exact_mod_cast k.2.2
  · simp [blockRightCoefficient, conductorThreeVaughanRight, hcut]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeTypeIICoefficientNorms/Variantf1669e32d09d55699fd107fb6a1c1812e4413bee314ad0bb498cdaf8ba49c017.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35cc5b7b3b112ca7891f1d33a5973f7a070c3e89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
