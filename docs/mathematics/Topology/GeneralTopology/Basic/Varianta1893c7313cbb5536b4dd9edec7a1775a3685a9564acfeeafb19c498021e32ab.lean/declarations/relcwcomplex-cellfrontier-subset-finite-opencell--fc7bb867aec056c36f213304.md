# RelCWComplex.cellFrontier_subset_finite_openCell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f48ceb0d-4d7b-9fc6-fb9a-6b9c41e283f5",
  "kind": "lemma",
  "lexical_name": "RelCWComplex.cellFrontier_subset_finite_openCell",
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
  "slug": "relcwcomplex-cellfrontier-subset-finite-opencell--fc7bb867aec056c36f213304",
  "source": {
    "blob": "2cc6b3374c97b03c6a56d2c64b8139c81eb7cfbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 463,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc7bb867aec056c36f2133040e0ced950d68d170d0b5211c0e9a7603f62749fc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f48ceb0d-4d7b-9fc6-fb9a-6b9c41e283f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RelCWComplex.cellFrontier_subset_finite_openCell [RelCWComplex C D] (n : ℕ) (i : cell C n) :
    ∃ I : Π m, Finset (cell C m),
    cellFrontier n i ⊆ D ∪ (⋃ (m < n) (j ∈ I m), openCell m j) := by
  induction n using Nat.case_strong_induction_on with
  | hz => simp [cellFrontier_zero_eq_empty]
  | hi n hn =>
    -- We apply `cellFrontier_subset_base_union_finite_closedCell` once and then apply
    -- the induction hypothesis to the finitely many cells that
    -- `cellFrontier_subset_base_union_finite_closedCell` gives us.
    classical
    obtain ⟨J, hJ⟩ := cellFrontier_subset_base_union_finite_closedCell n.succ i
    choose p hp using hn
    let I m := J m ∪ ((Finset.range n.succ).biUnion
      (fun l ↦ (J l).biUnion (fun y ↦ if h : l ≤ n then p l h y m else ∅)))
    use I
    intro x hx
    specialize hJ hx
    simp only [mem_union, mem_iUnion, exists_prop] at hJ ⊢
    rcases hJ with hJ | hJ
    · exact .inl hJ
    obtain ⟨l, hln , j, hj, hxj⟩ := hJ
    rw [← cellFrontier_union_openCell_eq_closedCell] at hxj
    rcases hxj with hxj | hxj
    · specialize hp l (Nat.le_of_lt_succ hln) j hxj
      simp_rw [mem_union, mem_iUnion, exists_prop] at hp
      refine .imp_right (fun ⟨k, hkl, i, hi, hxi⟩ ↦ ⟨k, lt_trans hkl hln, i, ?_, hxi⟩) hp
      simp only [Nat.succ_eq_add_one, Finset.mem_union, Finset.mem_biUnion, Finset.mem_range, I]
      exact .inr ⟨l, hln, j, hj, by simp [Nat.le_of_lt_succ hln, hi]⟩
    · right
      use l, hln, j
      simp only [Nat.succ_eq_add_one, Finset.mem_union, I]
      exact ⟨Or.intro_left _ hj, hxj⟩

/-- A version of `cellFrontier_subset_finite_closedCell` using open cells: The boundary of a cell is
contained in a finite union of open cells of a lower dimension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc6b3374c97b03c6a56d2c64b8139c81eb7cfbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
