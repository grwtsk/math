# shiftUp_bottom_subset_bottoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ffc0ba9-f204-a2ba-2534-68d5da34dd99",
  "kind": "theorem",
  "lexical_name": "shiftUp_bottom_subset_bottoms",
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
  "slug": "shiftup-bottom-subset-bottoms--d82b2fda19f877801bf7be37",
  "source": {
    "blob": "665ab04f8dd696df288baad6819bd671f1607043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 193,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d82b2fda19f877801bf7be37c1e12b8fa6e781cd8896a065c831c359ce786615",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ffc0ba9-f204-a2ba-2534-68d5da34dd99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftUp_bottom_subset_bottoms (hc : (cs i).xm ≠ 1) :
    (cs i).shiftUp.bottom ⊆ ⋃ i : ι, (cs i).bottom := by
  intro p hp; obtain ⟨hp0, hps⟩ := hp; rw [tail_shiftUp] at hps
  have : p ∈ (unitCube : Cube (n + 1)).toSet := by
    simp only [toSet, forall_iff_succ, hp0, side_unitCube, mem_ofPred_eq, mem_Ico, head_shiftUp]
    refine ⟨⟨?_, ?_⟩, ?_⟩
    · rw [← zero_add (0 : ℝ)]; apply add_le_add
      · apply zero_le_b h
      · apply (cs i).hw'
    · exact lt_of_le_of_ne (b_add_w_le_one h) hc
    intro j; exact side_subset h (hps j)
  rw [← h.2, mem_iUnion] at this; rcases this with ⟨i', hi'⟩
  rw [mem_iUnion]; use i'; refine ⟨?_, fun j => hi' j.succ⟩
  have : i ≠ i' := by rintro rfl; apply not_le_of_gt (hi' 0).2; rw [hp0]; rfl
  have := h.1 this
  rw [onFun, comp_apply, comp_apply, toSet_disjoint, exists_fin_succ] at this
  rcases this with (h0 | ⟨j, hj⟩)
  · rw [hp0]; symm; apply eq_of_Ico_disjoint h0 (by simp [hw]) _
    convert! hi' 0; rw [hp0]; rfl
  · exfalso; apply not_disjoint_iff.mpr ⟨tail p j, hps j, hi' j.succ⟩ hj

end Correct

/-- A valley is a square on which cubes in the family of cubes are placed, so that the cubes
  completely cover the valley and none of those cubes is partially outside the square.
  We also require that no cube on it has the same size as the valley (so that there are at least
  two cubes on the valley).
  This is the main concept in the formalization.
  We prove that the smallest cube on a valley has another valley on the top of it, which
  gives an infinite sequence of cubes in the partition, which contradicts the finiteness.
  A valley is characterized by a cube `c` (which is not a cube in the family `cs`) by considering
  the bottom face of `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variant64324dd47d66bf9bec3c748818be9c7f3dd21a6bc7687c5eb2c3eb9a9c464a23.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `665ab04f8dd696df288baad6819bd671f1607043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
