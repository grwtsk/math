# hasBoxIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa0f665b-6419-e16d-3c25-bed2f87d6850",
  "kind": "theorem",
  "lexical_name": "hasBoxIntegral",
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
  "slug": "hasboxintegral--32fddae4e635dbecf30ccbbf",
  "source": {
    "blob": "b73046230ca8be0ac9dc15f8496fada5287e3e6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32fddae4e635dbecf30ccbbf3c551cfe2ef4e06ec12416e79098c0b10775ea7c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa0f665b-6419-e16d-3c25-bed2f87d6850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBoxIntegral (f : SimpleFunc (ι → ℝ) E) (μ : Measure (ι → ℝ)) [IsLocallyFiniteMeasure μ]
    (I : Box ι) (l : IntegrationParams) (hl : l.bRiemann = false) :
    HasIntegral.{u, v, v} I l f μ.toBoxAdditive.toSMul (f.integral (μ.restrict I)) := by
  induction f using MeasureTheory.SimpleFunc.induction with
  | @const y s hs =>
    simpa [hs] using BoxIntegral.hasIntegralIndicatorConst l hl hs I y μ
  | @add f g _ hfi hgi =>
    borelize E; haveI := Fact.mk (I.measure_coe_lt_top μ)
    rw [integral_add]
    exacts [hfi.add hgi, integrable_iff.2 fun _ _ => measure_lt_top _ _,
      integrable_iff.2 fun _ _ => measure_lt_top _ _]

/-- For a simple function, its McShane (or Henstock, or `⊥`) box integral is equal to its
integral in the sense of `MeasureTheory.SimpleFunc.integral`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variantcadccd16fca3c9808ea7c4aaefc00b561937e605d8dcddd43951fdf36a4c996d.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b73046230ca8be0ac9dc15f8496fada5287e3e6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
