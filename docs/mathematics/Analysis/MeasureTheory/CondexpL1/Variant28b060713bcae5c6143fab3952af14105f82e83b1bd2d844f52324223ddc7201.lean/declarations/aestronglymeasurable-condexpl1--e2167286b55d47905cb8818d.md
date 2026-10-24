# aestronglyMeasurable_condExpL1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da7bcf32a2f3298ad53b79d3a81ebddd9fe25d13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 473,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28b060713bcae5c6143fab3952af14105f82e83b1bd2d844f52324223ddc7201.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ebeabbe7-7dd1-3f9a-98b7-0350cc2de650",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc4124d7-1e15-759e-d376-11dcac48150d",
  "kind": "theorem",
  "lexical_name": "aestronglyMeasurable_condExpL1",
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
  "slug": "aestronglymeasurable-condexpl1--e2167286b55d47905cb8818d",
  "source": {
    "blob": "da7bcf32a2f3298ad53b79d3a81ebddd9fe25d13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 473,
    "path": "GRWTSK/Analysis/MeasureTheory/CondexpL1/Variant28b060713bcae5c6143fab3952af14105f82e83b1bd2d844f52324223ddc7201.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2167286b55d47905cb8818d19c07794f6f92d4885cfc8b6e0c2e48c3e74634b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondexpL1/Variant28b060713bcae5c6143fab3952af14105f82e83b1bd2d844f52324223ddc7201.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc4124d7-1e15-759e-d376-11dcac48150d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aestronglyMeasurable_condExpL1 {f : α → F'} :
    AEStronglyMeasurable[m] (condExpL1 hm μ f) μ := by
  by_cases hF' : CompleteSpace (Lp F' 1 μ); swap
  · simp only [condExpL1, setToFun, hF', ↓reduceDIte, ZeroMemClass.coe_zero]
    apply stronglyMeasurable_zero.aestronglyMeasurable.congr
    exact (coeFn_zero _ 1 _).symm
  by_cases hf : Integrable f μ; swap
  · rw [condExpL1_undef hf]
    exact stronglyMeasurable_zero.aestronglyMeasurable.congr (coeFn_zero ..).symm
  by_cases hf' : f =ᵐ[μ] 0
  · apply stronglyMeasurable_zero.aestronglyMeasurable.congr
    simp only [condExpL1_congr_ae hm hf', condExpL1_zero, ZeroMemClass.coe_zero]
    exact (coeFn_zero _ 1 _).symm
  have : CompleteSpace F' := by
    have : Nontrivial (Lp F' 1 μ) := by
      apply nontrivial_of_ne (hf.toL1 f) 0
      grw [ne_eq, Lp.ext_iff, Integrable.coeFn_toL1, coeFn_zero]
      exact hf'
    exact completeSpace_of_completeSpace_Lp F' 1 μ
  rw [condExpL1_eq hf]
  exact aestronglyMeasurable_condExpL1CLM _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondexpL1/Variant28b060713bcae5c6143fab3952af14105f82e83b1bd2d844f52324223ddc7201.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondexpL1/Variant28b060713bcae5c6143fab3952af14105f82e83b1bd2d844f52324223ddc7201.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da7bcf32a2f3298ad53b79d3a81ebddd9fe25d13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
