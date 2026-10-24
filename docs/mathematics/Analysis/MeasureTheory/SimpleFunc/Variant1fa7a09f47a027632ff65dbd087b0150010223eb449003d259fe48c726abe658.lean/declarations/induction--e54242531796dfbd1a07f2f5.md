# induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81f161dc-b602-6060-5d6c-6f50947ecabb",
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
  "slug": "induction--e54242531796dfbd1a07f2f5",
  "source": {
    "blob": "e96734f0a8a716cc778a3e8f1e0bef039aff8d9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1337,
    "line": 1285,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variant1fa7a09f47a027632ff65dbd087b0150010223eb449003d259fe48c726abe658.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e54242531796dfbd1a07f2f5f74df874892b84a749d468c9399fa863dbb28e8f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFunc/Variant1fa7a09f47a027632ff65dbd087b0150010223eb449003d259fe48c726abe658.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81f161dc-b602-6060-5d6c-6f50947ecabb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1285–1337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem induction {α γ} [MeasurableSpace α] [AddMonoid γ] {P : SimpleFunc α γ → Prop}
    (h_ind :
      ∀ (c) {s} (hs : MeasurableSet s),
        P (SimpleFunc.piecewise s hs (SimpleFunc.const _ c) (SimpleFunc.const _ 0)))
    (h_add : ∀ ⦃f g : SimpleFunc α γ⦄, Disjoint (support f) (support g) → P f → P g → P (f + g))
    (f : SimpleFunc α γ) : P f := by
  generalize h : f.range \ {0} = s
  rw [← Finset.coe_inj, Finset.coe_sdiff, Finset.coe_singleton, SimpleFunc.coe_range] at h
  induction s using Finset.induction generalizing f with
  | empty =>
    rw [Finset.coe_empty, diff_eq_empty, range_subset_singleton] at h
    convert h_ind 0 MeasurableSet.univ
    ext x
    simp [h]
  | @insert x s hxs ih =>
    have mx := f.measurableSet_preimage {x}
    let g := SimpleFunc.piecewise (f ⁻¹' {x}) mx 0 f
    have Pg : P g := by
      apply ih
      simp only [SimpleFunc.coe_piecewise, range_piecewise]
      rw [image_compl_preimage, union_diff_distrib, diff_diff_comm, h, Finset.coe_insert,
        insert_diff_self_of_not_mem, diff_eq_empty.mpr, Set.empty_union]
      · rw [Set.image_subset_iff]
        convert Set.subset_univ _
        exact preimage_const_of_mem (mem_singleton _)
      · rwa [Finset.mem_coe]
    convert h_add _ Pg (h_ind x mx)
    · ext1 y
      by_cases hy : y ∈ f ⁻¹' {x}
      · simpa [piecewise_eq_of_mem _ _ _ hy, -piecewise_eq_indicator]
      · simp [piecewise_eq_of_not_mem _ _ _ hy, -piecewise_eq_indicator]
    rw [disjoint_iff_inf_le]
    rintro y
    by_cases hy : y ∈ f ⁻¹' {x}
    · simp [piecewise_eq_of_mem _ _ _ hy, -piecewise_eq_indicator]
    · simp [piecewise_eq_of_not_mem _ _ _ hy, -piecewise_eq_indicator]
#align measure_theory.simple_func.induction MeasureTheory.SimpleFunc.induction

end SimpleFunc

end MeasureTheory

open MeasureTheory MeasureTheory.SimpleFunc

/-- To prove something for an arbitrary measurable function into `ℝ≥0∞`, it suffices to show
that the property holds for (multiples of) characteristic functions and is closed under addition
and supremum of increasing sequences of functions.

It is possible to make the hypotheses in the induction steps a bit stronger, and such conditions
can be added once we need them (for example in `h_add` it is only necessary to consider the sum of
a simple function with a multiple of a characteristic function and that the intersection
of their images is a subset of `{0}`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFunc/Variant1fa7a09f47a027632ff65dbd087b0150010223eb449003d259fe48c726abe658.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variant1fa7a09f47a027632ff65dbd087b0150010223eb449003d259fe48c726abe658.lean#L1285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e96734f0a8a716cc778a3e8f1e0bef039aff8d9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
