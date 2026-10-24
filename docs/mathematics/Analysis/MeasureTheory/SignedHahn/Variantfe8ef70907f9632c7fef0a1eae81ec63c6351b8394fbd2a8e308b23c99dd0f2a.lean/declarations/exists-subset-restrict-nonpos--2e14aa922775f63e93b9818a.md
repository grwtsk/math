# exists_subset_restrict_nonpos'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b2e6d20-11e7-1f39-5a05-9744f609c621",
  "kind": "theorem",
  "lexical_name": "exists_subset_restrict_nonpos'",
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
  "slug": "exists-subset-restrict-nonpos--2e14aa922775f63e93b9818a",
  "source": {
    "blob": "baddffdf5997e4fcb59160d7dfc5bc243a79d632",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 232,
    "path": "GRWTSK/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e14aa922775f63e93b9818a2d550c871874294cec19b0e652d4677968120b28",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b2e6d20-11e7-1f39-5a05-9744f609c621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exists_subset_restrict_nonpos' (hi₁ : MeasurableSet i) (hi₂ : s i < 0)
    (hn : ¬∀ n : ℕ, ¬s ≤[i \ ⋃ l < n, restrictNonposSeq s i l] 0) :
    ∃ j : Set α, MeasurableSet j ∧ j ⊆ i ∧ s ≤[j] 0 ∧ s j < 0 := by
  by_cases s ≤[i] 0; · exact ⟨i, hi₁, Set.Subset.refl _, h, hi₂⟩
  push_neg at hn
  set k := Nat.find hn
  have hk₂ : s ≤[i \ ⋃ l < k, restrictNonposSeq s i l] 0 := Nat.find_spec hn
  have hmeas : MeasurableSet (⋃ (l : ℕ) (_ : l < k), restrictNonposSeq s i l) :=
    MeasurableSet.iUnion fun _ => MeasurableSet.iUnion fun _ => restrictNonposSeq_measurableSet _
  refine' ⟨i \ ⋃ l < k, restrictNonposSeq s i l, hi₁.diff hmeas, Set.diff_subset _ _, hk₂, _⟩
  rw [of_diff hmeas hi₁, s.of_disjoint_iUnion_nat]
  · have h₁ : ∀ l < k, 0 ≤ s (restrictNonposSeq s i l) := by
      intro l hl
      refine' le_of_lt (measure_of_restrictNonposSeq h _ _)
      refine' mt (restrict_le_zero_subset _ (hi₁.diff _) (Set.Subset.refl _)) (Nat.find_min hn hl)
      exact
        MeasurableSet.iUnion fun _ =>
          MeasurableSet.iUnion fun _ => restrictNonposSeq_measurableSet _
    suffices 0 ≤ ∑' l : ℕ, s (⋃ _ : l < k, restrictNonposSeq s i l) by
      rw [sub_neg]
      exact lt_of_lt_of_le hi₂ this
    refine' tsum_nonneg _
    intro l; by_cases l < k
    · convert h₁ _ h
      ext x
      rw [Set.mem_iUnion, exists_prop, and_iff_right_iff_imp]
      exact fun _ => h
    · convert le_of_eq s.empty.symm
      ext; simp only [exists_prop, Set.mem_empty_iff_false, Set.mem_iUnion, not_and, iff_false_iff]
      exact fun h' => False.elim (h h')
  · intro; exact MeasurableSet.iUnion fun _ => restrictNonposSeq_measurableSet _
  · intro a b hab
    refine' Set.disjoint_iUnion_left.mpr fun _ => _
    refine' Set.disjoint_iUnion_right.mpr fun _ => _
    exact restrictNonposSeq_disjoint hab
  · apply Set.iUnion_subset
    intro a x
    simp only [and_imp, exists_prop, Set.mem_iUnion]
    intro _ hx
    exact restrictNonposSeq_subset _ hx

/-- A measurable set of negative measure has a negative subset of negative measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SignedHahn/Variantfe8ef70907f9632c7fef0a1eae81ec63c6351b8394fbd2a8e308b23c99dd0f2a.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baddffdf5997e4fcb59160d7dfc5bc243a79d632` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
