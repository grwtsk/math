# _root_.GRWTSK.Analysis.RealAnalysis.Integration.WithDensityRnDerivEq.Variantc8a01d75315bbbc0ead8f74f82e6b37af9afe04d7b111cf6022bf09e5d29d298.MeasurableEmbedding.singularPart_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c2e084b-2f59-df0d-676d-edb9cd8729df",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.WithDensityRnDerivEq.Variantc8a01d75315bbbc0ead8f74f82e6b37af9afe04d7b111cf6022bf09e5d29d298.MeasurableEmbedding.singularPart_map",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-withdensityrnderiveq-varia--545c14d163ebffdeae26ae01",
  "source": {
    "blob": "b954d3293cfdd64aef6ac7ddef1e400e41990636",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 554,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RadonNikodym/Variant87c0e1607b04dc67b3e229fe02c239f5dc5a2cbee46e4e786325652b42da7fe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:545c14d163ebffdeae26ae01488f52f0b0dcaa66f2a10de4c0fc3f05f3af20df",
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

Occurrence: `result:4c2e084b-2f59-df0d-676d-edb9cd8729df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.RealAnalysis.Integration.WithDensityRnDerivEq.Variantc8a01d75315bbbc0ead8f74f82e6b37af9afe04d7b111cf6022bf09e5d29d298.MeasurableEmbedding.singularPart_map (hf : MeasurableEmbedding f)
    (μ ν : Measure α) [SigmaFinite μ] [SigmaFinite ν] :
    (μ.map f).singularPart (ν.map f) = (μ.singularPart ν).map f := by
  have h_add : μ.map f = (μ.singularPart ν).map f
      + (ν.map f).withDensity ((μ.map f).rnDeriv (ν.map f)) := by
    conv_lhs => rw [μ.haveLebesgueDecomposition_add ν]
    rw [Measure.map_add _ _ hf.measurable, ← hf.map_withDensity_rnDeriv μ ν]
  refine (Measure.eq_singularPart (Measure.measurable_rnDeriv _ _) ?_ h_add).symm
  exact hf.mutuallySingular_map (μ.mutuallySingular_singularPart ν)

end MeasurableEmbedding

end Measure

section IntegralRNDerivMul

open Measure

variable {α : Type*} {m : MeasurableSpace α} {μ ν : Measure α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RadonNikodym/Variant87c0e1607b04dc67b3e229fe02c239f5dc5a2cbee46e4e786325652b42da7fe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RadonNikodym/Variant87c0e1607b04dc67b3e229fe02c239f5dc5a2cbee46e4e786325652b42da7fe3.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b954d3293cfdd64aef6ac7ddef1e400e41990636` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
