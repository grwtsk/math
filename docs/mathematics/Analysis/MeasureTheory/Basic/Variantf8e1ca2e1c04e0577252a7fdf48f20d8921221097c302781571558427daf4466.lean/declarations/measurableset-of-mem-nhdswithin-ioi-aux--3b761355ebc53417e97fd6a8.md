# measurableSet_of_mem_nhdsWithin_Ioi_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5005cfb5-c50c-fc28-dba0-746b41bcff84",
  "kind": "theorem",
  "lexical_name": "measurableSet_of_mem_nhdsWithin_Ioi_aux",
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
  "slug": "measurableset-of-mem-nhdswithin-ioi-aux--3b761355ebc53417e97fd6a8",
  "source": {
    "blob": "bf7761044a2eca410d520e2d468bbdb6aa480c7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1286,
    "line": 1262,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b761355ebc53417e97fd6a89b7ab5bd990e4faf67d37ff6a0c0d6ba7bc93cfa",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5005cfb5-c50c-fc28-dba0-746b41bcff84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1262–1286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSet_of_mem_nhdsWithin_Ioi_aux {s : Set α} (h : ∀ x ∈ s, s ∈ 𝓝[>] x)
    (h' : ∀ x ∈ s, ∃ y, x < y) : MeasurableSet s := by
  choose! M hM using h'
  suffices H : (s \ interior s).Countable
  · have : s = interior s ∪ s \ interior s := by rw [union_diff_cancel interior_subset]
    rw [this]
    exact isOpen_interior.measurableSet.union H.measurableSet
  have A : ∀ x ∈ s, ∃ y ∈ Ioi x, Ioo x y ⊆ s := fun x hx =>
    (mem_nhdsWithin_Ioi_iff_exists_Ioo_subset' (hM x hx)).1 (h x hx)
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
#align measurable_set_of_mem_nhds_within_Ioi_aux measurableSet_of_mem_nhdsWithin_Ioi_aux

/-- If a set is a right-neighborhood of all of its points, then it is measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean#L1262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf7761044a2eca410d520e2d468bbdb6aa480c7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
