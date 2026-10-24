# MDifferentiableAt.isInteriorPoint_of_surjective_mfderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e44227a5404371d3fbe4b9cdd473abc69f26c393",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3aa49399-aca3-8870-ab0e-aad21407275e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83f4f68c-9253-8371-ee17-802a33cd334e",
  "kind": "lemma",
  "lexical_name": "MDifferentiableAt.isInteriorPoint_of_surjective_mfderiv",
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
  "slug": "mdifferentiableat-isinteriorpoint-of-surjective-mfderiv--5c4bd85efa9446f87f2e44e1",
  "source": {
    "blob": "e44227a5404371d3fbe4b9cdd473abc69f26c393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 352,
    "path": "GRWTSK/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c4bd85efa9446f87f2e44e154d3e56f23639bb3c46c5e9e549f55cb21eef33a",
  "verification": {
    "reference": "docs/verification/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83f4f68c-9253-8371-ee17-802a33cd334e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MDifferentiableAt.isInteriorPoint_of_surjective_mfderiv {f : M → N} {x : M}
    (hf : MDiffAt f x) (hf' : Surjective (mfderiv% f x))
    (hx : I.IsInteriorPoint x) : I'.IsInteriorPoint (f x) := by
  -- Since p-adic manifolds don't have boundary, WLOG `𝕜` is `ℝ` or `ℂ` and `E` is normed over `ℝ`.
  wlog _ : IsRCLikeNormedField 𝕜
  · simp [IsInteriorPoint, I'.range_eq_univ_of_not_isRCLikeNormedField ‹_›]
  let _ := IsRCLikeNormedField.rclike 𝕜
  let _ : NormedSpace ℝ E := NormedSpace.restrictScalars ℝ 𝕜 E
  let _ : NormedSpace ℝ E' := NormedSpace.restrictScalars ℝ 𝕜 E'
  -- Write everything in terms of extended charts around `x` and `f x`.
  simp only [mfderiv, hf] at hf'
  have hf'' := hf.differentiableWithinAt_writtenInExtChartAt.differentiableAt <| by
    simpa [← mem_interior_iff_mem_nhds] using! hx
  rw [fderivWithin_eq_fderiv (I.uniqueDiffOn _ <| by simp) hf''] at hf'
  /- Since `writtenInExtChartAt I I' x f` is differentiable with surjective differential at `x`
  over `𝕜`, it also is so over `ℝ`. -/
  replace hf' : Surjective (fderiv ℝ (writtenInExtChartAt I I' x f) (extChartAt I x x)) := by
    rwa [hf''.fderiv_restrictScalars (𝕜 := ℝ), ContinuousLinearMap.coe_restrictScalars']
  replace hf'' := hf''.restrictScalars ℝ
  /- The lemma is now essentially just `mem_interior_convex_of_surjective_fderiv`: because
  `writtenInExtChartAt I I' x f` is differentiable with surjective differential at `x` over `ℝ` and
  sends a neighbourhood of `x` (the region in which it could be written in the extended charts) to
  a closed convex set with nonempty interior (`I'.range`), it must send `x` to that interior. -/
  have := hf''.mem_interior_convex_of_surjective_fderiv (Filter.inter_mem ?_ ?_) I'.convex_range
    I'.isClosed_range I'.nonempty_interior (writtenInExtChartAt_mapsTo.mono_right ?_) hf'
  · simpa using! this
  · rw [← nhdsWithin_eq_nhds.2 (mem_interior_iff_mem_nhds.1 hx)]
    exact extChartAt_target_mem_nhdsWithin x
  · exact extChartAt_preimage_mem_nhds <| hf.continuousAt.preimage_mem_nhds <|
      extChartAt_source_mem_nhds _
  · exact extChartAt_target_subset_range _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e44227a5404371d3fbe4b9cdd473abc69f26c393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
