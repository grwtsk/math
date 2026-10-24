# of_measurable_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "256cb3bff218421de976104a3231aacad07c5b6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72e7aecd-0292-dd23-f1c2-1edc523a61ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6cfb827-ef8b-4648-90f7-5b24a73f4e9f",
  "kind": "lemma",
  "lexical_name": "of_measurable_add_one",
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
  "slug": "of-measurable-add-one--11dd95074b641364d1b8f535",
  "source": {
    "blob": "256cb3bff218421de976104a3231aacad07c5b6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 205,
    "path": "GRWTSK/Analysis/MeasureTheory/Predictable/Variantc630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11dd95074b641364d1b8f535ad8cddd68eb5bbe7a367bd56e4b242d94b0dcbc0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Predictable/Variantc630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6cfb827-ef8b-4648-90f7-5b24a73f4e9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_measurable_add_one {𝓕 : Filtration ℕ m} {u : ℕ → Ω → E}
    (h₀ : StronglyMeasurable[𝓕 0] (u 0)) (h : ∀ n, StronglyMeasurable[𝓕 n] (u (n + 1))) :
    IsStronglyPredictable 𝓕 u := by
  let : MeasurableSpace (ℕ × Ω) := 𝓕.predictable
  -- first layer of approximation
  let X m (x : ℕ × Ω) := match x.1 with
    | 0 => h₀.approx m x.2
    | n + 1 => (h n).approx m x.2
  -- second layer of approximation (to ensure the whole process has finite range)
  let Y m (x : ℕ × Ω) := if x.1 ≤ m then X m x else X m ⟨0, x.2⟩
  refine ⟨fun m ↦ SimpleFunc.mk (Y m) ?_ ?_, ?_⟩
  · intro s
    rw [(by aesop : Y m ⁻¹' {s} = ⋃ n : ℕ, {n} ×ˢ ((Function.curry (Y m) n) ⁻¹' {s}))]
    refine MeasurableSet.iUnion <| fun n ↦ ?_
    rcases n with rfl | n
    · apply measurableSet_predictable_singleton_bot_prod
      let : MeasurableSpace Ω := 𝓕 0
      exact (h₀.approx m).measurableSet_fiber s
    · apply measurableSet_predictable_singleton_prod
      by_cases! hmk : n + 1 ≤ m
      · rw [(by aesop : Function.curry (Y m) (n + 1) = Function.curry (X m) (n + 1))]
        let : MeasurableSpace Ω := 𝓕 n
        exact ((h n).approx m).measurableSet_fiber s
      · rw [(by aesop : Function.curry (Y m) (n + 1) = Function.curry (X m) 0)]
        apply 𝓕.mono (i := 0) (by simp)
        let : MeasurableSpace Ω := 𝓕 0
        exact (h₀.approx m).measurableSet_fiber s
  · apply Set.Finite.subset (s := ⋃ k ∈ Finset.range (m + 1), Set.range (Function.curry (X m) k))
    · refine Set.Finite.biUnion' (by aesop) (fun n hn ↦ ?_)
      rcases n with rfl | n
      · exact @(h₀.approx m).finite_range
      · exact @((h n).approx m).finite_range
    · intro e he
      obtain ⟨⟨n, ω⟩, hnω⟩ := Set.mem_range.mp he
      simp_rw [Set.mem_iUnion, Set.mem_range]
      exact ⟨if n ≤ m then n else 0, by aesop, ω, by aesop⟩
  · intro ⟨n, ω⟩
    rw [tendsto_congr' (f₂ := fun m ↦ X m ⟨n, ω⟩)]
    · rcases n with rfl | n
      · exact h₀.tendsto_approx ω
      · exact (h n).tendsto_approx ω
    · filter_upwards [eventually_ge_atTop n] with m hm using by simp; grind

/-- A discrete process `u` is predictable iff `u (n + 1)` is `𝓕 n`-measurable for all `n` and
`u 0` is `𝓕 0`-measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Predictable/Variantc630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Predictable/Variantc630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `256cb3bff218421de976104a3231aacad07c5b6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
