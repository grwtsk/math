# toZ_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:855a741f-9029-0e6f-4d44-c8794c9dc22b",
  "kind": "theorem",
  "lexical_name": "toZ_mono",
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
  "slug": "toz-mono--f2805d89f804ce30d4be3d44",
  "source": {
    "blob": "9e8100fdb58f703d1b1ba2feb76e29892752e498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 306,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2805d89f804ce30d4be3d441a8718cf22158e0496ddd3abc3e294658fb01757",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:855a741f-9029-0e6f-4d44-c8794c9dc22b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toZ_mono {i j : ι} (h_le : i ≤ j) : toZ i0 i ≤ toZ i0 j := by
  by_cases hi_max : IsMax i
  · rw [le_antisymm h_le (hi_max h_le)]
  by_cases hj_min : IsMin j
  · rw [le_antisymm h_le (hj_min h_le)]
  rcases le_or_lt i0 i with hi | hi <;> rcases le_or_lt i0 j with hj | hj
  · let m := Nat.find (exists_succ_iterate_of_le h_le)
    have hm : succ^[m] i = j := Nat.find_spec (exists_succ_iterate_of_le h_le)
    have hj_eq : j = succ^[(toZ i0 i).toNat + m] i0 := by
      rw [← hm, add_comm]
      nth_rw 1 [← iterate_succ_toZ i hi]
      rw [Function.iterate_add]
      rfl
    by_contra h
    by_cases hm0 : m = 0
    · rw [hm0, Function.iterate_zero, id] at hm
      rw [hm] at h
      exact h (le_of_eq rfl)
    refine hi_max (max_of_succ_le (le_trans ?_ (@le_of_toZ_le _ _ _ _ _ i0 j i ?_)))
    · have h_succ_le : succ^[(toZ i0 i).toNat + 1] i0 ≤ j := by
        rw [hj_eq]
        refine Monotone.monotone_iterate_of_le_map succ_mono (le_succ i0) (add_le_add_left ?_ _)
        exact Nat.one_le_iff_ne_zero.mpr hm0
      rwa [Function.iterate_succ', Function.comp_apply, iterate_succ_toZ i hi] at h_succ_le
    · exact le_of_not_le h
  · exact absurd h_le (not_le.mpr (hj.trans_le hi))
  · exact (toZ_neg hi).le.trans (toZ_nonneg hj)
  · let m := Nat.find (exists_pred_iterate_of_le (α := ι) h_le)
    have hm : pred^[m] j = i := Nat.find_spec (exists_pred_iterate_of_le (α := ι) h_le)
    have hj_eq : i = pred^[(-toZ i0 j).toNat + m] i0 := by
      rw [← hm, add_comm]
      nth_rw 1 [← iterate_pred_toZ j hj]
      rw [Function.iterate_add]
      rfl
    by_contra h
    by_cases hm0 : m = 0
    · rw [hm0, Function.iterate_zero, id] at hm
      rw [hm] at h
      exact h (le_of_eq rfl)
    refine hj_min (min_of_le_pred ?_)
    refine (@le_of_toZ_le _ _ _ _ _ i0 j i ?_).trans ?_
    · exact le_of_not_le h
    · have h_le_pred : i ≤ pred^[(-toZ i0 j).toNat + 1] i0 := by
        rw [hj_eq]
        refine Monotone.antitone_iterate_of_map_le pred_mono (pred_le i0) (add_le_add_left ?_ _)
        exact Nat.one_le_iff_ne_zero.mpr hm0
      rwa [Function.iterate_succ', Function.comp_apply, iterate_pred_toZ j hj] at h_le_pred

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e8100fdb58f703d1b1ba2feb76e29892752e498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
