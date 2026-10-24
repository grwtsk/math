# induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "adbdc460fc9bf1402a274d5a9c34c19a93ecf6f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5f937f9-91d1-6546-ab7a-fe6c7ca820c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c58b6b93-9ddb-2724-36d7-263f6a51dc1f",
  "kind": "theorem",
  "lexical_name": "induction",
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
  "slug": "induction--7aef5ea04dafcab0d28d92a1",
  "source": {
    "blob": "adbdc460fc9bf1402a274d5a9c34c19a93ecf6f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1194,
    "line": 1152,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7aef5ea04dafcab0d28d92a16268460dcd61345dd79556bd38f60ec2009326e4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFunc/Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c58b6b93-9ddb-2724-36d7-263f6a51dc1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1152–1194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem induction {α γ} [MeasurableSpace α] [AddZeroClass γ]
    {motive : SimpleFunc α γ → Prop}
    (const : ∀ (c) {s} (hs : MeasurableSet s),
      motive (SimpleFunc.piecewise s hs (SimpleFunc.const _ c) (SimpleFunc.const _ 0)))
    (add : ∀ ⦃f g : SimpleFunc α γ⦄,
      Disjoint (support f) (support g) → motive f → motive g → motive (f + g))
    (f : SimpleFunc α γ) : motive f := by
  classical
  generalize h : f.range \ {0} = s
  rw [← Finset.coe_inj, Finset.coe_sdiff, Finset.coe_singleton, SimpleFunc.coe_range] at h
  induction s using Finset.induction generalizing f with
  | empty =>
    rw [Finset.coe_empty, diff_eq_empty, range_subset_singleton] at h
    convert const 0 MeasurableSet.univ
    ext x
    simp [h]
  | insert x s hxs ih =>
    have mx := f.measurableSet_preimage {x}
    let g := SimpleFunc.piecewise (f ⁻¹' {x}) mx 0 f
    have Pg : motive g := by
      apply ih
      simp only [g, SimpleFunc.coe_piecewise, range_piecewise]
      rw [image_compl_preimage, union_diff_distrib, diff_diff_comm, h, Finset.coe_insert,
        insert_diff_self_of_notMem, diff_eq_empty.mpr, Set.empty_union]
      · rw [Set.image_subset_iff]
        convert Set.subset_univ _
        exact preimage_const_of_mem (mem_singleton _)
      · rwa [Finset.mem_coe]
    convert add _ Pg (const x mx)
    · ext1 y
      by_cases hy : y ∈ f ⁻¹' {x}
      · simpa [g, hy]
      · simp [g, hy]
    rw [disjoint_iff_inf_le]
    rintro y
    by_cases hy : y ∈ f ⁻¹' {x} <;> simp [g, hy]

/-- To prove something for an arbitrary simple function, it suffices to show
that the property holds for constant functions and that it is closed under piecewise combinations
of functions.

To use in an induction proof, the syntax is `induction f with`. -/
@[induction_eliminator]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFunc/Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variantce889e949e32218102c113353f34aa382744851f40703d8fac1c0b5ea62ff9d8.lean#L1152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adbdc460fc9bf1402a274d5a9c34c19a93ecf6f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
