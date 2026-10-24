# _root_.GRWTSK.Analysis.RealAnalysis.Integration.WithDensityRnDerivEq.Variantc8a01d75315bbbc0ead8f74f82e6b37af9afe04d7b111cf6022bf09e5d29d298.MeasurableEmbedding.rnDeriv_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c930043d-59b0-c047-fc99-5471f790ffd0",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.WithDensityRnDerivEq.Variantc8a01d75315bbbc0ead8f74f82e6b37af9afe04d7b111cf6022bf09e5d29d298.MeasurableEmbedding.rnDeriv_map",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-withdensityrnderiveq-varia--d376283b7988f8869c8bd1f6",
  "source": {
    "blob": "b954d3293cfdd64aef6ac7ddef1e400e41990636",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 524,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RadonNikodym/Variant87c0e1607b04dc67b3e229fe02c239f5dc5a2cbee46e4e786325652b42da7fe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d376283b7988f8869c8bd1f6ac549a5b8127d212803a41cb4b46a44e9622dfea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RadonNikodym/Variant87c0e1607b04dc67b3e229fe02c239f5dc5a2cbee46e4e786325652b42da7fe3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c930043d-59b0-c047-fc99-5471f790ffd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.RealAnalysis.Integration.WithDensityRnDerivEq.Variantc8a01d75315bbbc0ead8f74f82e6b37af9afe04d7b111cf6022bf09e5d29d298.MeasurableEmbedding.rnDeriv_map (hf : MeasurableEmbedding f)
    (μ ν : Measure α) [SigmaFinite μ] [SigmaFinite ν] :
    (fun x ↦ (μ.map f).rnDeriv (ν.map f) (f x)) =ᵐ[ν] μ.rnDeriv ν := by
  rw [μ.haveLebesgueDecomposition_add ν, Measure.map_add _ _ hf.measurable]
  have : SigmaFinite (map f ν) := hf.sigmaFinite_map
  have : SigmaFinite (map f (μ.singularPart ν)) := hf.sigmaFinite_map
  have : SigmaFinite (map f (ν.withDensity (μ.rnDeriv ν))) := hf.sigmaFinite_map
  have h_add := Measure.rnDeriv_add' ((μ.singularPart ν).map f)
    ((ν.withDensity (μ.rnDeriv ν)).map f) (ν.map f)
  rw [Filter.EventuallyEq, hf.ae_map_iff, ← Filter.EventuallyEq] at h_add
  refine h_add.trans ((Measure.rnDeriv_add' _ _ _).trans ?_).symm
  refine Filter.EventuallyEq.add ?_ ?_
  · refine (Measure.rnDeriv_singularPart μ ν).trans ?_
    symm
    suffices (fun x ↦ ((μ.singularPart ν).map f).rnDeriv (ν.map f) x) =ᵐ[ν.map f] 0 by
      rw [Filter.EventuallyEq, hf.ae_map_iff] at this
      exact this
    refine Measure.rnDeriv_eq_zero_of_mutuallySingular ?_ Measure.AbsolutelyContinuous.rfl
    exact hf.mutuallySingular_map (μ.mutuallySingular_singularPart ν)
  · exact (hf.rnDeriv_map_aux (withDensity_absolutelyContinuous _ _)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RadonNikodym/Variant87c0e1607b04dc67b3e229fe02c239f5dc5a2cbee46e4e786325652b42da7fe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RadonNikodym/Variant87c0e1607b04dc67b3e229fe02c239f5dc5a2cbee46e4e786325652b42da7fe3.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b954d3293cfdd64aef6ac7ddef1e400e41990636` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
