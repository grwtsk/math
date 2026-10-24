# frequently_measure_inter_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7964bf3-75df-f01a-adbf-dea6172ecbf4",
  "kind": "theorem",
  "lexical_name": "frequently_measure_inter_ne_zero",
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
  "slug": "frequently-measure-inter-ne-zero--3025295c2fe14e680d977ec0",
  "source": {
    "blob": "20226c202e555a3abbecd9acf0464ef7a31dd7aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 88,
    "path": "GRWTSK/Analysis/MeasureTheory/Conservative/Variant76aa4871b171564b07641cdbac14bc16417865162efdafef4a77f2546453a866.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3025295c2fe14e680d977ec091c2e9b91def49eae247a283f532d11928c68ef5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Conservative/Variant76aa4871b171564b07641cdbac14bc16417865162efdafef4a77f2546453a866.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7964bf3-75df-f01a-adbf-dea6172ecbf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frequently_measure_inter_ne_zero (hf : Conservative f μ) (hs : MeasurableSet s)
    (h0 : μ s ≠ 0) : ∃ᶠ m in atTop, μ (s ∩ f^[m] ⁻¹' s) ≠ 0 := by
  by_contra H
  simp only [not_frequently, eventually_atTop, Ne.def, Classical.not_not] at H
  rcases H with ⟨N, hN⟩
  induction' N with N ihN
  · apply h0
    simpa using hN 0 le_rfl
  rw [imp_false] at ihN
  push_neg at ihN
  rcases ihN with ⟨n, hn, hμn⟩
  set T := s ∩ ⋃ n ≥ N + 1, f^[n] ⁻¹' s
  have hT : MeasurableSet T :=
    hs.inter (MeasurableSet.biUnion (to_countable _) fun _ _ => hf.measurable.iterate _ hs)
  have hμT : μ T = 0 := by
    convert(measure_biUnion_null_iff <| to_countable _).2 hN
    rw [← inter_iUnion₂]
    rfl
  have : μ ((s ∩ f^[n] ⁻¹' s) \ T) ≠ 0 := by rwa [measure_diff_null hμT]
  rcases hf.exists_mem_image_mem ((hs.inter (hf.measurable.iterate n hs)).diff hT) this with
    ⟨x, ⟨⟨hxs, _⟩, hxT⟩, m, hm0, ⟨_, hxm⟩, _⟩
  refine' hxT ⟨hxs, mem_iUnion₂.2 ⟨n + m, _, _⟩⟩
  · exact add_le_add hn (Nat.one_le_of_lt <| pos_iff_ne_zero.2 hm0)
  · rwa [Set.mem_preimage, ← iterate_add_apply] at hxm
#align measure_theory.conservative.frequently_measure_inter_ne_zero MeasureTheory.Conservative.frequently_measure_inter_ne_zero

/-- If `f` is a conservative map and `s` is a measurable set of nonzero measure, then
for an arbitrarily large `m` a positive measure of points `x ∈ s` returns back to `s`
after `m` iterations of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Conservative/Variant76aa4871b171564b07641cdbac14bc16417865162efdafef4a77f2546453a866.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Conservative/Variant76aa4871b171564b07641cdbac14bc16417865162efdafef4a77f2546453a866.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20226c202e555a3abbecd9acf0464ef7a31dd7aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
