# mul_upcrossingsBefore_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be95c31e-dba6-ce45-580d-79215b96e629",
  "kind": "theorem",
  "lexical_name": "mul_upcrossingsBefore_le",
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
  "slug": "mul-upcrossingsbefore-le--dfe2f08193262b2498e22dda",
  "source": {
    "blob": "c741b9622b69b07d8b5d36b3fcbbbe7576e4786a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 662,
    "line": 607,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfe2f08193262b2498e22ddae1c32a81edc3a8b30cdd7607c7951dcaf266bf62",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be95c31e-dba6-ce45-580d-79215b96e629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 607–662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_upcrossingsBefore_le (hf : a ≤ f N ω) (hab : a < b) :
    (b - a) * upcrossingsBefore a b f N ω ≤
    ∑ k in Finset.range N, upcrossingStrat a b f N k ω * (f (k + 1) - f k) ω := by
  classical
  by_cases hN : N = 0
  · simp [hN]
  simp_rw [upcrossingStrat, Finset.sum_mul, ←
    Set.indicator_mul_left _ _ (fun x ↦ (f (x + 1) - f x) ω), Pi.one_apply, Pi.sub_apply, one_mul]
  rw [Finset.sum_comm]
  have h₁ : ∀ k, ∑ n in Finset.range N, (Set.Ico (lowerCrossingTime a b f N k ω)
      (upperCrossingTime a b f N (k + 1) ω)).indicator (fun m => f (m + 1) ω - f m ω) n =
      stoppedValue f (upperCrossingTime a b f N (k + 1)) ω -
        stoppedValue f (lowerCrossingTime a b f N k) ω := by
    intro k
    rw [Finset.sum_indicator_eq_sum_filter, (_ : Finset.filter (fun i => i ∈ Set.Ico
      (lowerCrossingTime a b f N k ω) (upperCrossingTime a b f N (k + 1) ω)) (Finset.range N) =
      Finset.Ico (lowerCrossingTime a b f N k ω) (upperCrossingTime a b f N (k + 1) ω)),
      Finset.sum_Ico_eq_add_neg _ lowerCrossingTime_le_upperCrossingTime_succ,
      Finset.sum_range_sub fun n => f n ω, Finset.sum_range_sub fun n => f n ω, neg_sub,
      sub_add_sub_cancel]
    · rfl
    · ext i
      simp only [Set.mem_Ico, Finset.mem_filter, Finset.mem_range, Finset.mem_Ico,
        and_iff_right_iff_imp, and_imp]
      exact fun _ h => lt_of_lt_of_le h upperCrossingTime_le
  simp_rw [h₁]
  have h₂ : ∑ _k in Finset.range (upcrossingsBefore a b f N ω), (b - a) ≤
      ∑ k in Finset.range N, (stoppedValue f (upperCrossingTime a b f N (k + 1)) ω -
        stoppedValue f (lowerCrossingTime a b f N k) ω) := by
    calc
      ∑ _k in Finset.range (upcrossingsBefore a b f N ω), (b - a) ≤
          ∑ k in Finset.range (upcrossingsBefore a b f N ω),
            (stoppedValue f (upperCrossingTime a b f N (k + 1)) ω -
              stoppedValue f (lowerCrossingTime a b f N k) ω) := by
        refine' Finset.sum_le_sum fun i hi =>
          le_sub_of_le_upcrossingsBefore (zero_lt_iff.2 hN) hab _
        rwa [Finset.mem_range] at hi
      _ ≤ ∑ k in Finset.range N, (stoppedValue f (upperCrossingTime a b f N (k + 1)) ω -
          stoppedValue f (lowerCrossingTime a b f N k) ω) := by
        refine' Finset.sum_le_sum_of_subset_of_nonneg
          (Finset.range_subset.2 (upcrossingsBefore_le f ω hab)) fun i _ hi => _
        by_cases hi' : i = upcrossingsBefore a b f N ω
        · subst hi'
          simp only [stoppedValue]
          rw [upperCrossingTime_eq_of_upcrossingsBefore_lt hab (Nat.lt_succ_self _)]
          by_cases heq : lowerCrossingTime a b f N (upcrossingsBefore a b f N ω) ω = N
          · rw [heq, sub_self]
          · rw [sub_nonneg]
            exact le_trans (stoppedValue_lowerCrossingTime heq) hf
        · rw [sub_eq_zero_of_upcrossingsBefore_lt hab]
          rw [Finset.mem_range, not_lt] at hi
          exact lt_of_le_of_ne hi (Ne.symm hi')
  refine' le_trans _ h₂
  rw [Finset.sum_const, Finset.card_range, nsmul_eq_mul, mul_comm]
#align measure_theory.mul_upcrossings_before_le MeasureTheory.mul_upcrossingsBefore_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean#L607).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c741b9622b69b07d8b5d36b3fcbbbe7576e4786a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
