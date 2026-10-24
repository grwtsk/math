# sacScore_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:affbc692-07b4-fb14-2169-087862cc20d5",
  "kind": "theorem",
  "lexical_name": "sacScore_eq_one_iff",
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
  "slug": "sacscore-eq-one-iff--8cf1e5b700286ee9da91d46e",
  "source": {
    "blob": "b0b79b548a2012dbdf9497d3caa034411d533544",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 228,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cf1e5b700286ee9da91d46eff5a80c0c13d03b01b8e881663a024dd7b280298",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:affbc692-07b4-fb14-2169-087862cc20d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sacScore_eq_one_iff {n : Nat} (H : Bits n → Bits n) :
    sacScore H = 1 ↔ StrictSAC H := by
  by_cases hn : n = 0
  · subst n
    simp [sacScore, StrictSAC]
  · rw [strictSAC_iff_sacEntry_eq_half]
    constructor
    · intro hscore
      rw [sacScore, if_neg hn] at hscore
      have hden : (((n * n : Nat) : ℚ)) ≠ 0 := by positivity
      have hsum :
          (∑ i : Fin n, ∑ j : Fin n,
            |2 * sacEntry H i j - 1|) = 0 := by
        have hdiv :
            (∑ i : Fin n, ∑ j : Fin n,
              |2 * sacEntry H i j - 1|) / ((n * n : Nat) : ℚ) = 0 := by
          linarith
        exact (div_eq_zero_iff).mp hdiv |>.resolve_right hden
      intro i j
      have hi : (∑ j : Fin n, |2 * sacEntry H i j - 1|) = 0 :=
        (Finset.sum_eq_zero_iff_of_nonneg fun i _ =>
          Finset.sum_nonneg fun j _ => abs_nonneg _).mp hsum i
            (Finset.mem_univ i)
      have hij : |2 * sacEntry H i j - 1| = 0 :=
        (Finset.sum_eq_zero_iff_of_nonneg fun j _ => abs_nonneg _).mp hi j
          (Finset.mem_univ j)
      rw [abs_eq_zero] at hij
      linarith
    · intro hhalf
      rw [sacScore, if_neg hn]
      simp [hhalf]

/-- The variance score is nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/MarginalDistributions/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/MarginalBalanceScores.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0b79b548a2012dbdf9497d3caa034411d533544` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
