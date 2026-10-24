# finite_gap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12e9cc85-9e79-d3f9-e01f-808694592809",
  "kind": "theorem",
  "lexical_name": "finite_gap",
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
  "slug": "finite-gap--77bd56648e51bddd64e7ee07",
  "source": {
    "blob": "7d8a34611fd18debb3a1d16fd00e04f6c22b482e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 12,
    "path": "GRWTSK/LinearAlgebra/Matrix/FiniteObservationGap.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77bd56648e51bddd64e7ee074960d57326b11aa5654f281c2171a8e524ebe7a5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/FiniteObservationGap.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12e9cc85-9e79-d3f9-e01f-808694592809`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_gap {V : Type*} {S : Set V} (hS : S.Finite) (E O : V → ℝ)
    (hE : ∀ v, 0 ≤ E v) (hO : ∀ v, 0 ≤ O v)
    (hobs : ∀ v ∈ S, 0 < E v → 0 < O v) :
    ∃ a : ℝ, 0 < a ∧ ∀ v ∈ S, a * E v ≤ O v := by
  classical
  induction S, hS using Set.Finite.induction_on with
  | empty => exact ⟨1, by norm_num, by simp⟩
  | @insert v S hv hS ih =>
    obtain ⟨a, ha, hbound⟩ := ih (fun w hw => hobs w (Set.mem_insert_of_mem _ hw))
    by_cases hvE : 0 < E v
    · have hvO := hobs v (Set.mem_insert _ _) hvE
      refine ⟨min a (O v / E v), lt_min ha (div_pos hvO hvE), ?_⟩
      intro w hw
      rcases Set.mem_insert_iff.mp hw with rfl | hw
      · exact (mul_le_mul_of_nonneg_right (min_le_right _ _) (hE w)).trans
          (le_of_eq (div_mul_cancel₀ _ (ne_of_gt hvE)))
      · exact (mul_le_mul_of_nonneg_right (min_le_left _ _) (hE w)).trans (hbound w hw)
    · have hz : E v = 0 := le_antisymm (le_of_not_gt hvE) (hE v)
      refine ⟨a, ha, ?_⟩
      intro w hw
      rcases Set.mem_insert_iff.mp hw with rfl | hw
      · simpa only [hz, mul_zero] using hO w
      · exact hbound w hw
end GRWTSK.LinearAlgebra.Matrix.FiniteObservationGap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/FiniteObservationGap.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/Matrix/FiniteObservationGap.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d8a34611fd18debb3a1d16fd00e04f6c22b482e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
