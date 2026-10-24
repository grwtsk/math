# exists_eq_dirac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59366ba4-d7ad-f48c-20c0-63fc6c1308de",
  "kind": "theorem",
  "lexical_name": "exists_eq_dirac",
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
  "slug": "exists-eq-dirac--83f40cc66acd2cb2ca33b434",
  "source": {
    "blob": "011d27664715cb21327b9546e48ab163530b45b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 106,
    "path": "GRWTSK/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83f40cc66acd2cb2ca33b434a3e7ac0fa90e72de0916fa796521356a329da83f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59366ba4-d7ad-f48c-20c0-63fc6c1308de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_dirac [StandardBorelSpace α] [NeZero μ] : ∃ x₀, μ = Measure.dirac x₀ := by
  have : IsProbabilityMeasure μ := by
    rcases IsZeroOrProbabilityMeasure.measure_univ (μ := μ) with (h | h)
    · simp_all
    · exact ⟨h⟩
  obtain ⟨A, hAm, hAsep⟩ := exists_seq_separating (α := α) MeasurableSet.univ univ
  let B := fun n => if h : μ (A n) = 1 then A n else (A n)ᶜ
  have mBn : MeasurableSet (⋂ n, B n) := by
    refine MeasurableSet.iInter fun n ↦ ?_
    simp only [dite_eq_ite, B]
    split_ifs
    · exact hAm n
    · exact (hAm n).compl
  have hBn : μ (⋂ n, B n) = 1 := by
    refine (prob_compl_eq_zero_iff mBn).mp ?_
    simp only [dite_eq_ite, compl_iInter, measure_iUnion_null_iff, B]
    intro n
    split_ifs with h
    · simp_all
    · rw [compl_compl]
      rcases μ.zero_one (A n) with (h₀ | h₁)
      · exact h₀
      · simp_all
  obtain ⟨x₀, hx₀⟩ : ∃ x₀, ⋂ n, B n = {x₀} := by
    simp_rw [eq_singleton_iff_unique_mem]
    have neBn : (⋂ n, B n).Nonempty := by
      by_contra! h
      rw [h] at hBn
      simp_all
    refine ⟨neBn.some, neBn.some_mem, fun y hy ↦ ?_⟩
    refine hAsep y (by trivial) neBn.some (by trivial) fun n ↦ ?_
    have hsome := neBn.some_mem
    simp only [dite_eq_ite, mem_iInter, B] at hsome hy
    specialize hsome n
    specialize hy n
    constructor
    · intro h
      split_ifs at hy with hμAn
      · simpa [hμAn] using! hsome
      · contradiction
    · intro h
      split_ifs at hsome with hμAn
      · simpa [hμAn] using! hy
      · contradiction
  use x₀
  ext s hs
  by_cases h : x₀ ∈ s
  · simp [h]
    have : μ {x₀} ≤ μ s := measure_mono (μ := μ) (by grind)
    rw [← hx₀, hBn] at this
    simp_all
  · simp [h]
    have : μ s ≤ μ {x₀}ᶜ := measure_mono (μ := μ) (by grind)
    rw [← hx₀, measure_compl mBn (by simp), MeasureTheory.measure_univ, hBn] at this
    simp_all

end IsZeroOneMeasure

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `011d27664715cb21327b9546e48ab163530b45b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
