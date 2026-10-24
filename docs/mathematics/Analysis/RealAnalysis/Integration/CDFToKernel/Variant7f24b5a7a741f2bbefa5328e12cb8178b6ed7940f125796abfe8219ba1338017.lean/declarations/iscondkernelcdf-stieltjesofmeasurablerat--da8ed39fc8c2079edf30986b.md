# isCondKernelCDF_stieltjesOfMeasurableRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c57a5c22-15e7-b51c-6b93-b11a5bea1efc",
  "kind": "lemma",
  "lexical_name": "isCondKernelCDF_stieltjesOfMeasurableRat",
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
  "slug": "iscondkernelcdf-stieltjesofmeasurablerat--da8ed39fc8c2079edf30986b",
  "source": {
    "blob": "8cd17fdc6e66cd0bdf731dea45598795f980162b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 442,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant7f24b5a7a741f2bbefa5328e12cb8178b6ed7940f125796abfe8219ba1338017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da8ed39fc8c2079edf30986b9f67301010706c79e2c3e4595b6897548ee7d3eb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CDFToKernel/Variant7f24b5a7a741f2bbefa5328e12cb8178b6ed7940f125796abfe8219ba1338017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c57a5c22-15e7-b51c-6b93-b11a5bea1efc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCondKernelCDF_stieltjesOfMeasurableRat {f : α × β → ℚ → ℝ} (hf : IsRatCondKernelCDF f κ ν)
    [IsFiniteKernel κ] :
    IsCondKernelCDF (stieltjesOfMeasurableRat f hf.measurable) κ ν where
  measurable := measurable_stieltjesOfMeasurableRat hf.measurable
  integrable := integrable_stieltjesOfMeasurableRat hf
  tendsto_atTop_one := tendsto_stieltjesOfMeasurableRat_atTop hf.measurable
  tendsto_atBot_zero := tendsto_stieltjesOfMeasurableRat_atBot hf.measurable
  setIntegral a _ hs x := setIntegral_stieltjesOfMeasurableRat hf a x hs

end IsCondKernelCDF

section ToKernel

variable {_ : MeasurableSpace β} {f : α × β → StieltjesFunction ℝ}
  {κ : Kernel α (β × ℝ)} {ν : Kernel α β}

/-- A function `f : α × β → StieltjesFunction ℝ` with the property `IsCondKernelCDF f κ ν` gives a
Markov kernel from `α × β` to `ℝ`, by taking for each `p : α × β` the measure defined by `f p`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CDFToKernel/Variant7f24b5a7a741f2bbefa5328e12cb8178b6ed7940f125796abfe8219ba1338017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant7f24b5a7a741f2bbefa5328e12cb8178b6ed7940f125796abfe8219ba1338017.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cd17fdc6e66cd0bdf731dea45598795f980162b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
