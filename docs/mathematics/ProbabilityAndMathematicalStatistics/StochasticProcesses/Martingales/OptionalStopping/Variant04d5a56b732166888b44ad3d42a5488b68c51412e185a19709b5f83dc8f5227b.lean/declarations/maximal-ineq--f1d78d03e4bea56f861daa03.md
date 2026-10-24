# maximal_ineq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca1b4e8edfa5c4c386991e04ea1b34e01bd03203",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce9edbc0-766c-e51b-c00b-2a549b1de14a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57b171d3-7f02-ca2a-8fda-e2f8b09a8d41",
  "kind": "theorem",
  "lexical_name": "maximal_ineq",
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
  "slug": "maximal-ineq--f1d78d03e4bea56f861daa03",
  "source": {
    "blob": "ca1b4e8edfa5c4c386991e04ea1b34e01bd03203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 134,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1d78d03e4bea56f861daa0396cdaf07e44ef176a3b573343899a1afed081d3a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57b171d3-7f02-ca2a-8fda-e2f8b09a8d41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maximal_ineq [IsFiniteMeasure μ] (hsub : Submartingale f 𝒢 μ) (hnonneg : 0 ≤ f) {ε : ℝ≥0}
    (n : ℕ) : ε • μ {ω | (ε : ℝ) ≤ (range (n + 1)).sup' nonempty_range_succ fun k => f k ω} ≤
    ENNReal.ofReal (∫ ω in {ω | (ε : ℝ) ≤ (range (n + 1)).sup' nonempty_range_succ fun k => f k ω},
      f n ω ∂μ) := by
  suffices ε • μ {ω | (ε : ℝ) ≤ (range (n + 1)).sup' nonempty_range_succ fun k => f k ω} +
      ENNReal.ofReal
          (∫ ω in {ω | ((range (n + 1)).sup' nonempty_range_succ fun k => f k ω) < ε}, f n ω ∂μ) ≤
      ENNReal.ofReal (μ[f n]) by
    have hadd : ENNReal.ofReal (∫ ω, f n ω ∂μ) =
      ENNReal.ofReal
        (∫ ω in {ω | ↑ε ≤ (range (n+1)).sup' nonempty_range_succ fun k => f k ω}, f n ω ∂μ) +
      ENNReal.ofReal
        (∫ ω in {ω | ((range (n+1)).sup' nonempty_range_succ fun k => f k ω) < ↑ε}, f n ω ∂μ) := by
      rw [← ENNReal.ofReal_add, ← setIntegral_union]
      · rw [← setIntegral_univ]
        convert rfl
        ext ω
        change (ε : ℝ) ≤ _ ∨ _ < (ε : ℝ) ↔ _
        simp only [le_or_lt, Set.mem_univ]
      · rw [disjoint_iff_inf_le]
        rintro ω ⟨hω₁, hω₂⟩
        change (ε : ℝ) ≤ _ at hω₁
        change _ < (ε : ℝ) at hω₂
        exact (not_le.2 hω₂) hω₁
      · exact measurableSet_lt (Finset.measurable_range_sup'' fun n _ =>
          (hsub.stronglyMeasurable n).measurable.le (𝒢.le n)) measurable_const
      exacts [(hsub.integrable _).integrableOn, (hsub.integrable _).integrableOn,
        integral_nonneg (hnonneg _), integral_nonneg (hnonneg _)]
    rwa [hadd, ENNReal.add_le_add_iff_right ENNReal.ofReal_ne_top] at this
  calc
    ε • μ {ω | (ε : ℝ) ≤ (range (n + 1)).sup' nonempty_range_succ fun k => f k ω} +
        ENNReal.ofReal
          (∫ ω in {ω | ((range (n + 1)).sup' nonempty_range_succ fun k => f k ω) < ε}, f n ω ∂μ) ≤
        ENNReal.ofReal
          (∫ ω in {ω | (ε : ℝ) ≤ (range (n + 1)).sup' nonempty_range_succ fun k => f k ω},
            stoppedValue f (hitting f {y : ℝ | ↑ε ≤ y} 0 n) ω ∂μ) +
        ENNReal.ofReal
          (∫ ω in {ω | ((range (n + 1)).sup' nonempty_range_succ fun k => f k ω) < ε},
            stoppedValue f (hitting f {y : ℝ | ↑ε ≤ y} 0 n) ω ∂μ) := by
      refine add_le_add (smul_le_stoppedValue_hitting hsub _)
        (ENNReal.ofReal_le_ofReal (setIntegral_mono_on (hsub.integrable n).integrableOn
          (Integrable.integrableOn (hsub.integrable_stoppedValue
            (hitting_isStoppingTime hsub.adapted measurableSet_Ici) hitting_le))
              (measurableSet_lt (Finset.measurable_range_sup'' fun n _ =>
                (hsub.stronglyMeasurable n).measurable.le (𝒢.le n)) measurable_const) ?_))
      intro ω hω
      rw [Set.mem_setOf_eq] at hω
      have : hitting f {y : ℝ | ↑ε ≤ y} 0 n ω = n := by
        classical simp only [hitting, Set.mem_setOf_eq, exists_prop, Pi.natCast_def, Nat.cast_id,
          ite_eq_right_iff, forall_exists_index, and_imp]
        intro m hm hεm
        exact False.elim
          ((not_le.2 hω) ((le_sup'_iff _).2 ⟨m, mem_range.2 (Nat.lt_succ_of_le hm.2), hεm⟩))
      simp_rw [stoppedValue, this, le_rfl]
    _ = ENNReal.ofReal (∫ ω, stoppedValue f (hitting f {y : ℝ | ↑ε ≤ y} 0 n) ω ∂μ) := by
      rw [← ENNReal.ofReal_add, ← setIntegral_union]
      · rw [← setIntegral_univ (μ := μ)]
        convert rfl
        ext ω
        change _ ↔ (ε : ℝ) ≤ _ ∨ _ < (ε : ℝ)
        simp only [le_or_lt, Set.mem_univ]
      · rw [disjoint_iff_inf_le]
        rintro ω ⟨hω₁, hω₂⟩
        change (ε : ℝ) ≤ _ at hω₁
        change _ < (ε : ℝ) at hω₂
        exact (not_le.2 hω₂) hω₁
      · exact measurableSet_lt (Finset.measurable_range_sup'' fun n _ =>
          (hsub.stronglyMeasurable n).measurable.le (𝒢.le n)) measurable_const
      · exact Integrable.integrableOn (hsub.integrable_stoppedValue
          (hitting_isStoppingTime hsub.adapted measurableSet_Ici) hitting_le)
      · exact Integrable.integrableOn (hsub.integrable_stoppedValue
          (hitting_isStoppingTime hsub.adapted measurableSet_Ici) hitting_le)
      exacts [integral_nonneg fun x => hnonneg _ _, integral_nonneg fun x => hnonneg _ _]
    _ ≤ ENNReal.ofReal (μ[f n]) := by
      refine ENNReal.ofReal_le_ofReal ?_
      rw [← stoppedValue_const f n]
      exact hsub.expected_stoppedValue_mono (hitting_isStoppingTime hsub.adapted measurableSet_Ici)
        (isStoppingTime_const _ _) (fun ω => hitting_le ω) (fun _ => le_refl n)

end Maximal

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca1b4e8edfa5c4c386991e04ea1b34e01bd03203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
