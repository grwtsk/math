# nodup_derivedLits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa171061-7b48-0d34-2314-c459d2df50a6",
  "kind": "theorem",
  "lexical_name": "nodup_derivedLits",
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
  "slug": "nodup-derivedlits--b87d5c9ca9d0f5f944c96037",
  "source": {
    "blob": "63a5c9bb7a4843b13273def96e793449214a2634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1020,
    "line": 933,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b87d5c9ca9d0f5f944c96037be11b7ce3a3bf1b02aabb918afb9377f0c2ba8b2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa171061-7b48-0d34-2314-c459d2df50a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 933–1020.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodup_derivedLits {n : Nat} (f : DefaultFormula n)
    (f_assignments_size : f.assignments.size = n) (rupHints : Array Nat)
    (f'_assignments_size : (performRupCheck f rupHints).1.assignments.size = n)
    (derivedLits : CNF.Clause (PosFin n))
    (derivedLits_satisfies_invariant:
      DerivedLitsInvariant f f_assignments_size (performRupCheck f rupHints).fst.assignments f'_assignments_size derivedLits)
    (derivedLits_arr : Array (Literal (PosFin n))) (derivedLits_arr_def : derivedLits_arr = { toList := derivedLits })
    (i j : Fin (Array.size derivedLits_arr)) (i_ne_j : i ≠ j) :
    derivedLits_arr[i] ≠ derivedLits_arr[j] := by
  intro li_eq_lj
  let li := derivedLits_arr[i]
  have li_in_derivedLits : li ∈ derivedLits := by
    rw [Array.mem_toList_iff, ← derivedLits_arr_def]
    simp [li, Array.getElem_mem]
  have i_in_bounds : i.1 < derivedLits.length := by
    have i_property := i.2
    grind
  have j_in_bounds : j.1 < derivedLits.length := by
    have j_property := j.2
    grind
  rcases derivedLits_satisfies_invariant ⟨li.1.1, li.1.2.2⟩ with ⟨_, h2⟩ | ⟨k, _, _, _, h3⟩ |
    ⟨k1, k2, _, _, k1_eq_true, k2_eq_false, _, _, h3⟩
  · exact h2 li li_in_derivedLits rfl
  · by_cases k.1 = i.1
    next k_eq_i =>
      have j_ne_k : ⟨j.1, j_in_bounds⟩ ≠ k := by
        intro j_eq_k
        simp only [← j_eq_k] at k_eq_i
        exact i_ne_j <| Fin.eq_of_val_eq (Eq.symm k_eq_i)
      specialize h3 ⟨j.1, j_in_bounds⟩ j_ne_k
      grind
    next k_ne_i =>
      have i_ne_k : ⟨i.1, i_in_bounds⟩ ≠ k := by intro i_eq_k; simp only [← i_eq_k, not_true] at k_ne_i
      specialize h3 ⟨i.1, i_in_bounds⟩ i_ne_k
      grind
  · by_cases li.2 = true
    next li_eq_true =>
      have i_ne_k2 : ⟨i.1, i_in_bounds⟩ ≠ k2 := by
        intro i_eq_k2
        rw [← i_eq_k2] at k2_eq_false
        simp only [List.get_eq_getElem] at k2_eq_false
        simp [derivedLits_arr_def, k2_eq_false, li] at li_eq_true
      have j_ne_k2 : ⟨j.1, j_in_bounds⟩ ≠ k2 := by
        intro j_eq_k2
        rw [← j_eq_k2] at k2_eq_false
        simp only [List.get_eq_getElem] at k2_eq_false
        simp only [derivedLits_arr_def, Fin.getElem_fin] at li_eq_lj
        simp [derivedLits_arr_def, k2_eq_false, li_eq_lj, li] at li_eq_true
      by_cases ⟨i.1, i_in_bounds⟩ = k1
      next i_eq_k1 =>
        have j_ne_k1 : ⟨j.1, j_in_bounds⟩ ≠ k1 := by
          intro j_eq_k1
          rw [← j_eq_k1] at i_eq_k1
          simp only [Fin.mk.injEq] at i_eq_k1
          exact i_ne_j (Fin.eq_of_val_eq i_eq_k1)
        specialize h3 ⟨j.1, j_in_bounds⟩ j_ne_k1 j_ne_k2
        simp [li, li_eq_lj, derivedLits_arr_def] at h3
      next i_ne_k1 =>
        specialize h3 ⟨i.1, i_in_bounds⟩ i_ne_k1 i_ne_k2
        apply h3
        simp +decide only [Fin.getElem_fin, derivedLits_arr_def, li]
        rfl
    next li_eq_false =>
      simp only [Bool.not_eq_true] at li_eq_false
      have i_ne_k1 : ⟨i.1, i_in_bounds⟩ ≠ k1 := by
        intro i_eq_k1
        rw [← i_eq_k1] at k1_eq_true
        simp only [List.get_eq_getElem] at k1_eq_true
        simp [derivedLits_arr_def, k1_eq_true, li] at li_eq_false
      have j_ne_k1 : ⟨j.1, j_in_bounds⟩ ≠ k1 := by
        intro j_eq_k1
        rw [← j_eq_k1] at k1_eq_true
        simp only [List.get_eq_getElem] at k1_eq_true
        simp only [derivedLits_arr_def, Fin.getElem_fin] at li_eq_lj
        simp [derivedLits_arr_def, k1_eq_true, li_eq_lj, li] at li_eq_false
      by_cases ⟨i.1, i_in_bounds⟩ = k2
      next i_eq_k2 =>
        have j_ne_k2 : ⟨j.1, j_in_bounds⟩ ≠ k2 := by
          intro j_eq_k2
          rw [← j_eq_k2] at i_eq_k2
          simp only [Fin.mk.injEq] at i_eq_k2
          exact i_ne_j (Fin.eq_of_val_eq i_eq_k2)
        specialize h3 ⟨j.1, j_in_bounds⟩ j_ne_k1 j_ne_k2
        simp [li, li_eq_lj, derivedLits_arr_def] at h3
      next i_ne_k2 =>
        specialize h3 ⟨i.1, i_in_bounds⟩ i_ne_k1 i_ne_k2
        simp +decide [derivedLits_arr_def, li] at h3

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variantc8dbe26db2abb5d5ef37001a94a73bf93814c1ff7e2f5e0b39303121a95df4c5.lean#L933).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a5c9bb7a4843b13273def96e793449214a2634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
