# sum_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e8f2e44-1137-5994-3dd2-501383500d7e",
  "kind": "theorem",
  "lexical_name": "sum_measure",
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
  "slug": "sum-measure--3f65259d83f3e2c8de57b0ba",
  "source": {
    "blob": "8624fba6d487c59f92c430cfa68bfd7c3bd1be2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 79,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variante9af2c02a8e5b8a1dcce00a231f7cf8c337200169f11dbecfc577b6f32006123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f65259d83f3e2c8de57b0ba2150d96ed3c24754f2e3b40ed2fc4d73ceac8963",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Variante9af2c02a8e5b8a1dcce00a231f7cf8c337200169f11dbecfc577b6f32006123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e8f2e44-1137-5994-3dd2-501383500d7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_measure [Countable ι] {μ : ι → Measure α} (h : ∀ i, AEMeasurable f (μ i)) :
    AEMeasurable f (sum μ) := by
  classical
  nontriviality β
  inhabit β
  set s : ι → Set α := fun i => toMeasurable (μ i) { x | f x ≠ (h i).mk f x }
  have hsμ : ∀ i, μ i (s i) = 0 := by
    intro i
    rw [measure_toMeasurable]
    exact (h i).ae_eq_mk
  have hsm : MeasurableSet (⋂ i, s i) :=
    MeasurableSet.iInter fun i => measurableSet_toMeasurable _ _
  have hs : ∀ i x, x ∉ s i → f x = (h i).mk f x := by
    intro i x hx
    contrapose! hx
    exact subset_toMeasurable _ _ hx
  set g : α → β := (⋂ i, s i).piecewise (const α default) f
  refine ⟨g, measurable_of_restrict_of_restrict_compl hsm ?_ ?_, ae_sum_iff.mpr fun i => ?_⟩
  · rw [restrict_piecewise]
    simp only [s, Set.restrict, const]
    exact measurable_const
  · rw [restrict_piecewise_compl, compl_iInter]
    intro t ht
    refine ⟨⋃ i, (h i).mk f ⁻¹' t ∩ (s i)ᶜ, MeasurableSet.iUnion fun i ↦
      (measurable_mk _ ht).inter (measurableSet_toMeasurable _ _).compl, ?_⟩
    ext ⟨x, hx⟩
    simp only [mem_preimage, mem_iUnion, Subtype.coe_mk, Set.restrict, mem_inter_iff,
      mem_compl_iff] at hx ⊢
    constructor
    · rintro ⟨i, hxt, hxs⟩
      rwa [hs _ _ hxs]
    · rcases hx with ⟨i, hi⟩
      rw [hs _ _ hi]
      exact fun h => ⟨i, h, hi⟩
  · refine measure_mono_null (fun x (hx : f x ≠ g x) => ?_) (hsμ i)
    contrapose! hx
    refine (piecewise_eq_of_notMem _ _ _ ?_).symm
    exact fun h => hx (mem_iInter.1 h i)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Variante9af2c02a8e5b8a1dcce00a231f7cf8c337200169f11dbecfc577b6f32006123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variante9af2c02a8e5b8a1dcce00a231f7cf8c337200169f11dbecfc577b6f32006123.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8624fba6d487c59f92c430cfa68bfd7c3bd1be2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
