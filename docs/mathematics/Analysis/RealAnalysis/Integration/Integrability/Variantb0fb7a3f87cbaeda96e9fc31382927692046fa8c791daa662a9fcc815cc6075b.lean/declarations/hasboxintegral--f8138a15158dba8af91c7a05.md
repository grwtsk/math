# hasBoxIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d5d0d8c-4fe3-7cd9-ff5f-110fda14418e",
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
  "slug": "hasboxintegral--f8138a15158dba8af91c7a05",
  "source": {
    "blob": "ee02beb514a8812d7e9ad499fb80e8c7bfc95bb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 179,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variantb0fb7a3f87cbaeda96e9fc31382927692046fa8c791daa662a9fcc815cc6075b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8138a15158dba8af91c7a05625b8f1178d35f3d73cf582fe16bdd068f71702f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrability/Variantb0fb7a3f87cbaeda96e9fc31382927692046fa8c791daa662a9fcc815cc6075b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d5d0d8c-4fe3-7cd9-ff5f-110fda14418e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBoxIntegral (f : SimpleFunc (ι → ℝ) E) (μ : Measure (ι → ℝ)) [IsLocallyFiniteMeasure μ]
    (I : Box ι) (l : IntegrationParams) (hl : l.bRiemann = false) :
    HasIntegral.{u, v, v} I l f μ.toBoxAdditive.toSMul (f.integral (μ.restrict I)) := by
  induction' f using MeasureTheory.SimpleFunc.induction with y s hs f g _ hfi hgi
  · simpa only [Measure.restrict_apply hs, const_zero, integral_piecewise_zero, integral_const,
      Measure.restrict_apply, MeasurableSet.univ, Set.univ_inter] using
      BoxIntegral.hasIntegralIndicatorConst l hl hs I y μ
  · borelize E; haveI := Fact.mk (I.measure_coe_lt_top μ)
    rw [integral_add]
    exacts [hfi.add hgi, integrable_iff.2 fun _ _ => measure_lt_top _ _,
      integrable_iff.2 fun _ _ => measure_lt_top _ _]
#align measure_theory.simple_func.has_box_integral MeasureTheory.SimpleFunc.hasBoxIntegral

/-- For a simple function, its McShane (or Henstock, or `⊥`) box integral is equal to its
integral in the sense of `MeasureTheory.SimpleFunc.integral`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrability/Variantb0fb7a3f87cbaeda96e9fc31382927692046fa8c791daa662a9fcc815cc6075b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrability/Variantb0fb7a3f87cbaeda96e9fc31382927692046fa8c791daa662a9fcc815cc6075b.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee02beb514a8812d7e9ad499fb80e8c7bfc95bb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
