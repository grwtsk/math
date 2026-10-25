# weighted_error_abs_le_sqrt_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3cb838e14d79afbcf5c540c64c7c32b5d27ded55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:618f5ba0-e0cf-d089-25b5-3b0de77109e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33d8033d-c7a7-6a42-fc81-e467965b009b",
  "kind": "theorem",
  "lexical_name": "weighted_error_abs_le_sqrt_variation",
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
  "slug": "weighted-error-abs-le-sqrt-variation--25053024122b659707c7af4c",
  "source": {
    "blob": "3cb838e14d79afbcf5c540c64c7c32b5d27ded55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25053024122b659707c7af4c991b65bc60a42cefac3f040a44a9a9cb64abfeea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33d8033d-c7a7-6a42-fc81-e467965b009b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_error_abs_le_sqrt_variation (a e : ℕ → ℝ) (δ C : ℝ) (G : ℕ)
    (hbound : ∀ j ∈ Icc 1 G,
      |(∑ g ∈ Icc 1 j, a g) - δ * (j : ℝ)| ≤ C * Real.sqrt (j : ℝ)) :
    |(∑ g ∈ Icc 1 G, a g * e g) - δ * (∑ g ∈ Icc 1 G, e g)| ≤
      C * (Real.sqrt (G : ℝ) * |e G| +
        ∑ j ∈ Icc 1 (G - 1), Real.sqrt (j : ℝ) * |e j - e (j + 1)|) := by
  by_cases hG : G = 0
  · subst G
    simp
  have hG1 : 1 ≤ G := by omega
  let D (j : ℕ) : ℝ := (∑ g ∈ Icc 1 j, a g) - δ * (j : ℝ)
  rw [centered_sum_mul_by_parts]
  change |D G * e G + ∑ j ∈ Icc 1 (G - 1), D j * (e j - e (j + 1))| ≤ _
  calc
    _ ≤ |D G * e G| +
        |∑ j ∈ Icc 1 (G - 1), D j * (e j - e (j + 1))| := abs_add_le _ _
    _ ≤ |D G| * |e G| +
        ∑ j ∈ Icc 1 (G - 1), |D j| * |e j - e (j + 1)| := by
      rw [abs_mul]
      apply add_le_add le_rfl
      simpa only [abs_mul] using
        abs_sum_le_sum_abs (fun j ↦ D j * (e j - e (j + 1))) (Icc 1 (G - 1))
    _ ≤ (C * Real.sqrt (G : ℝ)) * |e G| +
        ∑ j ∈ Icc 1 (G - 1), (C * Real.sqrt (j : ℝ)) * |e j - e (j + 1)| := by
      apply add_le_add
      · exact mul_le_mul_of_nonneg_right (hbound G (mem_Icc.mpr ⟨hG1, le_rfl⟩))
          (abs_nonneg _)
      · apply sum_le_sum
        intro j hj
        have hjG : j ∈ Icc 1 G :=
          mem_Icc.mpr ⟨(mem_Icc.mp hj).1, (mem_Icc.mp hj).2.trans (Nat.sub_le _ _)⟩
        exact mul_le_mul_of_nonneg_right (hbound j hjG) (abs_nonneg _)
    _ = _ := by
      rw [mul_add, mul_sum]
      congr 1
      · ring
      · apply sum_congr rfl
        intro j _
        ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariation/Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cb838e14d79afbcf5c540c64c7c32b5d27ded55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
