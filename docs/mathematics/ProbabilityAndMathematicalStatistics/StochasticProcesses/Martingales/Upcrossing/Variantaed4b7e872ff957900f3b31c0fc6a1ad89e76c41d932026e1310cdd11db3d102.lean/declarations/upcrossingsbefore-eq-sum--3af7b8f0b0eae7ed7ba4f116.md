# upcrossingsBefore_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbded0b0-0423-729d-a6d2-1428cdc30c00",
  "kind": "theorem",
  "lexical_name": "upcrossingsBefore_eq_sum",
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
  "slug": "upcrossingsbefore-eq-sum--3af7b8f0b0eae7ed7ba4f116",
  "source": {
    "blob": "5615b3cb71bcf38481e47a143a068ecc1cc27231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 756,
    "line": 732,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variantaed4b7e872ff957900f3b31c0fc6a1ad89e76c41d932026e1310cdd11db3d102.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3af7b8f0b0eae7ed7ba4f1167ebfbc574d12716877706b5ce214af012f79915a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variantaed4b7e872ff957900f3b31c0fc6a1ad89e76c41d932026e1310cdd11db3d102.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbded0b0-0423-729d-a6d2-1428cdc30c00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 732–756.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upcrossingsBefore_eq_sum (hab : a < b) : upcrossingsBefore a b f N ω =
    ∑ i ∈ Finset.Ico 1 (N + 1), {n | upperCrossingTime a b f N n ω < N}.indicator 1 i := by
  by_cases hN : N = 0
  · simp [hN]
  rw [← Finset.sum_Ico_consecutive _ (Nat.succ_le_succ zero_le)
    (Nat.succ_le_succ (upcrossingsBefore_le f ω hab))]
  have h₁ : ∀ k ∈ Finset.Ico 1 (upcrossingsBefore a b f N ω + 1),
      {n : ℕ | upperCrossingTime a b f N n ω < N}.indicator 1 k = 1 := by
    rintro k hk
    rw [Finset.mem_Ico] at hk
    rw [Set.indicator_of_mem]
    · rfl
    · exact upperCrossingTime_lt_of_le_upcrossingsBefore (zero_lt_iff.2 hN) hab
        (Nat.lt_succ_iff.1 hk.2)
  have h₂ : ∀ k ∈ Finset.Ico (upcrossingsBefore a b f N ω + 1) (N + 1),
      {n : ℕ | upperCrossingTime a b f N n ω < N}.indicator 1 k = 0 := by
    rintro k hk
    rw [Finset.mem_Ico, Nat.succ_le_iff] at hk
    rw [Set.indicator_of_notMem]
    simp only [Set.mem_ofPred_eq, not_lt]
    exact (upperCrossingTime_eq_of_upcrossingsBefore_lt hab hk.1).symm.le
  rw [Finset.sum_congr rfl h₁, Finset.sum_congr rfl h₂, Finset.sum_const, Finset.sum_const,
    smul_eq_mul, mul_one, smul_eq_mul, mul_zero, Nat.card_Ico, Nat.add_succ_sub_one,
    add_zero, add_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variantaed4b7e872ff957900f3b31c0fc6a1ad89e76c41d932026e1310cdd11db3d102.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variantaed4b7e872ff957900f3b31c0fc6a1ad89e76c41d932026e1310cdd11db3d102.lean#L732).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5615b3cb71bcf38481e47a143a068ecc1cc27231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
