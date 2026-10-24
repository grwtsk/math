# crossing_pos_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b3b3b33a3e465841f05a443e9584dadfe60e312",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 670,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b11b8117-547e-7601-853d-9f9eacde4db6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f4cada2-2a33-e6b7-5ce9-7a648970ac5d",
  "kind": "theorem",
  "lexical_name": "crossing_pos_eq",
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
  "slug": "crossing-pos-eq--55df3dac68a9327fb667c9cd",
  "source": {
    "blob": "9b3b3b33a3e465841f05a443e9584dadfe60e312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 717,
    "line": 670,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55df3dac68a9327fb667c9cd42b6ad071b1539a26e34f78b879bc79e206555f9",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f4cada2-2a33-e6b7-5ce9-7a648970ac5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 670–717.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem crossing_pos_eq (hab : a < b) :
    upperCrossingTime 0 (b - a) (fun n ω => (f n ω - a)⁺) N n = upperCrossingTime a b f N n ∧
      lowerCrossingTime 0 (b - a) (fun n ω => (f n ω - a)⁺) N n = lowerCrossingTime a b f N n := by
  have hab' : 0 < b - a := sub_pos.2 hab
  have hf : ∀ ω i, b - a ≤ (f i ω - a)⁺ ↔ b ≤ f i ω := by
    intro i ω
    refine' ⟨fun h => _, fun h => _⟩
    · rwa [← sub_le_sub_iff_right a, ←
        LatticeOrderedGroup.pos_eq_self_of_pos_pos (lt_of_lt_of_le hab' h)]
    · rw [← sub_le_sub_iff_right a] at h
      rwa [LatticeOrderedGroup.pos_of_nonneg _ (le_trans hab'.le h)]
  have hf' : ∀ ω i, (f i ω - a)⁺ ≤ 0 ↔ f i ω ≤ a := by
    intro ω i
    rw [LatticeOrderedGroup.pos_nonpos_iff, sub_nonpos]
  induction' n with k ih
  · refine' ⟨rfl, _⟩
    simp only [lowerCrossingTime_zero, hitting, Set.mem_Icc, Set.mem_Iic, Nat.zero_eq]
    ext ω
    split_ifs with h₁ h₂ h₂
    · simp_rw [hf']
    · simp_rw [Set.mem_Iic, ← hf' _ _] at h₂
      exact False.elim (h₂ h₁)
    · simp_rw [Set.mem_Iic, hf' _ _] at h₁
      exact False.elim (h₁ h₂)
    · rfl
  · have : upperCrossingTime 0 (b - a) (fun n ω => (f n ω - a)⁺) N (k + 1) =
        upperCrossingTime a b f N (k + 1) := by
      ext ω
      simp only [upperCrossingTime_succ_eq, ← ih.2, hitting, Set.mem_Ici, tsub_le_iff_right]
      split_ifs with h₁ h₂ h₂
      · simp_rw [← sub_le_iff_le_add, hf ω]
      · refine' False.elim (h₂ _)
        simp_all only [Set.mem_Ici]
      · refine' False.elim (h₁ _)
        simp_all only [Set.mem_Ici]
      · rfl
    refine' ⟨this, _⟩
    ext ω
    simp only [lowerCrossingTime, this, hitting, Set.mem_Iic]
    split_ifs with h₁ h₂ h₂
    · simp_rw [hf' ω]
    · refine' False.elim (h₂ _)
      simp_all only [Set.mem_Iic]
    · refine' False.elim (h₁ _)
      simp_all only [Set.mem_Iic]
    · rfl
#align measure_theory.crossing_pos_eq MeasureTheory.crossing_pos_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean#L670).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b3b3b33a3e465841f05a443e9584dadfe60e312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
