# pruneBoxForMin_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "522802911ff0d2feac536666bffbcb40dbd25969",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:968b76d6-505c-99a0-05ae-28ff32873699",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de58f056-d636-eb80-9212-4537bed0d2e1",
  "kind": "theorem",
  "lexical_name": "pruneBoxForMin_subset",
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
  "slug": "pruneboxformin-subset--d7a2dbc96835858f6e164f75",
  "source": {
    "blob": "522802911ff0d2feac536666bffbcb40dbd25969",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 310,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7a2dbc96835858f6e164f75f718b514963fc816afdc781582a49729e8e941e2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de58f056-d636-eb80-9212-4537bed0d2e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pruneBoxForMin_subset (B : Box) (grad : List IntervalRat) :
    ∀ ρ, Box.envMem ρ (pruneBoxForMin B grad).1 → Box.envMem ρ B := by
  intro ρ hρ'
  let B' := (pruneBoxForMin B grad).1
  intro ⟨j, hj⟩
  have hj' : j < B'.length := by
    simp only [B', pruneBoxForMin, List.length_map, List.length_zipIdx]
    exact hj
  have hρ'_mem : ρ j ∈ B'[j] := hρ' ⟨j, hj'⟩
  -- Get the j-th element of B'
  simp only [B', pruneBoxForMin] at hρ'_mem
  rw [List.getElem_map, List.getElem_map] at hρ'_mem
  have h_zipIdx_len : j < (B.zipIdx).length := by simp only [List.length_zipIdx]; exact hj
  have h_zipIdx : (B.zipIdx)[j] = (B[j], j) := by
    rw [List.getElem_zipIdx (h := h_zipIdx_len)]
    simp only [Nat.zero_add]
  simp only [h_zipIdx] at hρ'_mem
  -- Now analyze the cases
  cases hgrad_j : grad[j]? with
  | none =>
    simp only [hgrad_j] at hρ'_mem
    exact hρ'_mem
  | some di =>
    simp only [hgrad_j] at hρ'_mem
    by_cases hlo : canPruneToLo di
    · simp only [hlo, ↓reduceIte] at hρ'_mem
      simp only [IntervalRat.mem_def]
      have hρ_eq : ρ j = B[j].lo := by
        simp only [IntervalRat.singleton, IntervalRat.mem_def] at hρ'_mem
        linarith [hρ'_mem.1, hρ'_mem.2]
      rw [hρ_eq]
      exact ⟨le_refl _, by exact_mod_cast B[j].le⟩
    · by_cases hhi : canPruneToHi di
      · simp only [hlo, Bool.false_eq_true, ↓reduceIte, hhi] at hρ'_mem
        simp only [IntervalRat.mem_def]
        have hρ_eq : ρ j = B[j].hi := by
          simp only [IntervalRat.singleton, IntervalRat.mem_def] at hρ'_mem
          linarith [hρ'_mem.1, hρ'_mem.2]
        rw [hρ_eq]
        exact ⟨by exact_mod_cast B[j].le, le_refl _⟩
      · simp only [hlo, Bool.false_eq_true, ↓reduceIte, hhi] at hρ'_mem
        exact hρ'_mem

/-- The pruned box has the same length as the original box -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `522802911ff0d2feac536666bffbcb40dbd25969` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
