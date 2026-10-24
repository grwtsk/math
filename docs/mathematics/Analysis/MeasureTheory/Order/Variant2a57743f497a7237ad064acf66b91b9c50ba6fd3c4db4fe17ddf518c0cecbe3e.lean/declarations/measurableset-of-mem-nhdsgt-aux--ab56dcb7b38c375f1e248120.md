# MeasurableSet.of_mem_nhdsGT_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "517ca3c5463c6e3afa0b7d466bac6b87752cac37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 648,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a57743f497a7237ad064acf66b91b9c50ba6fd3c4db4fe17ddf518c0cecbe3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00af9c1a-0e09-c7ad-2280-364fa9b987c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a53fd7e-58ab-deec-f640-f15494e6f1e9",
  "kind": "theorem",
  "lexical_name": "MeasurableSet.of_mem_nhdsGT_aux",
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
  "slug": "measurableset-of-mem-nhdsgt-aux--ab56dcb7b38c375f1e248120",
  "source": {
    "blob": "517ca3c5463c6e3afa0b7d466bac6b87752cac37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 648,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variant2a57743f497a7237ad064acf66b91b9c50ba6fd3c4db4fe17ddf518c0cecbe3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab56dcb7b38c375f1e2481202835554d38edf7610c78609ba507930a691754fe",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variant2a57743f497a7237ad064acf66b91b9c50ba6fd3c4db4fe17ddf518c0cecbe3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a53fd7e-58ab-deec-f640-f15494e6f1e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 648–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasurableSet.of_mem_nhdsGT_aux {s : Set α} (h : ∀ x ∈ s, s ∈ 𝓝[>] x)
    (h' : ∀ x ∈ s, ∃ y, x < y) : MeasurableSet s := by
  choose! M hM using h'
  suffices H : (s \ interior s).Countable by
    have : s = interior s ∪ s \ interior s := by rw [union_diff_cancel interior_subset]
    rw [this]
    exact isOpen_interior.measurableSet.union H.measurableSet
  have A : ∀ x ∈ s, ∃ y ∈ Ioi x, Ioo x y ⊆ s := fun x hx =>
    (mem_nhdsGT_iff_exists_Ioo_subset' (hM x hx)).1 (h x hx)
  choose! y hy h'y using A
  have B : Set.PairwiseDisjoint (s \ interior s) fun x => Ioo x (y x) := by
    intro x hx x' hx' hxx'
    rcases lt_or_gt_of_ne hxx' with (h' | h')
    · refine disjoint_left.2 fun z hz h'z => ?_
      have : x' ∈ interior s :=
        mem_interior.2 ⟨Ioo x (y x), h'y _ hx.1, isOpen_Ioo, ⟨h', h'z.1.trans hz.2⟩⟩
      exact False.elim (hx'.2 this)
    · refine disjoint_left.2 fun z hz h'z => ?_
      have : x ∈ interior s :=
        mem_interior.2 ⟨Ioo x' (y x'), h'y _ hx'.1, isOpen_Ioo, ⟨h', hz.1.trans h'z.2⟩⟩
      exact False.elim (hx.2 this)
  exact B.countable_of_Ioo fun x hx => hy x hx.1

@[deprecated (since := "2024-12-22")]
alias measurableSet_of_mem_nhdsWithin_Ioi_aux := MeasurableSet.of_mem_nhdsGT_aux

/-- If a set is a right-neighborhood of all of its points, then it is measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variant2a57743f497a7237ad064acf66b91b9c50ba6fd3c4db4fe17ddf518c0cecbe3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variant2a57743f497a7237ad064acf66b91b9c50ba6fd3c4db4fe17ddf518c0cecbe3e.lean#L648).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `517ca3c5463c6e3afa0b7d466bac6b87752cac37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
