# integral_of_hasLaw_binomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d5da595-e9c4-8f36-26ff-3fcb42df59dc",
  "kind": "theorem",
  "lexical_name": "integral_of_hasLaw_binomial",
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
  "slug": "integral-of-haslaw-binomial--d2b9d3c4c4ba9dbfe6b3979d",
  "source": {
    "blob": "5fb61b8573666f061338493d6f0efdc179c3bbaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 194,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2b9d3c4c4ba9dbfe6b3979d528e244882c92d254edd09249ee7c2f94f50c8fd",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d5da595-e9c4-8f36-26ff-3fcb42df59dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_of_hasLaw_binomial (hX : HasLaw X Bin(ℝ, n, p) P) : P[X] = p.val * n := by
  rw [hX.integral_eq, integral_map_cast_binomial, ← n.range_succ_eq_Iic, Finset.sum_range_succ']
  cases n with norm_num | succ n
  calc
    _ = p * ∑ x ∈ Finset.range (n + 1), (n + 1).choose (x + 1) * (x + 1) *
        p.val ^ x * (1 - p) ^ (n - x) := by grind [Finset.mul_sum]
    _ = p * ∑ x ∈ Finset.range (n + 1), n.choose x * (n + 1) * p.val ^ x * (1 - p) ^ (n - x) := by
      congrm p * ∑ x ∈ Finset.range (n + 1), ?_ * p.val ^ x * (1 - p) ^ (n - x)
      norm_cast
      rw [← Nat.add_one_mul_choose_eq n x, mul_comm]
    _ = p * (n + 1) * ∑ x ∈ Finset.range (n + 1), n.choose x * p.val ^ x * (1 - p) ^ (n - x) := by
      rw [mul_assoc, Finset.mul_sum (a := (n : ℝ) + 1)]
      group
    _ = p * (n + 1) := by grind [add_pow p.val (1 - p) n, one_pow]

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variant72b2c036455acb4aca6e971e95b85c206357f9a693798c6e617d6506136fb67e.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fb61b8573666f061338493d6f0efdc179c3bbaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
