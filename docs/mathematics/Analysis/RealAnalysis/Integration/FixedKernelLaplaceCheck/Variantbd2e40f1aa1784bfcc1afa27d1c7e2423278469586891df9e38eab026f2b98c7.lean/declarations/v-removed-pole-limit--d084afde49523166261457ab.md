# V_removed_pole_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d39ff82b0aa4e2fcdc83fd5a342080834025baf6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8eb5439-81fa-8c7b-8f6d-8d8872608c75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f416e9f-bbc3-f1a5-5f6d-452a711d65c4",
  "kind": "theorem",
  "lexical_name": "V_removed_pole_limit",
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
  "slug": "v-removed-pole-limit--d084afde49523166261457ab",
  "source": {
    "blob": "d39ff82b0aa4e2fcdc83fd5a342080834025baf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 213,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceCheck/Variantbd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d084afde49523166261457abfa07de5e887d63d1da35551895e6118e5824fe39",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceCheck/Variantbd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f416e9f-bbc3-f1a5-5f6d-452a711d65c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem V_removed_pole_limit :
    Filter.Tendsto (fun z : ℂ ↦ V z / (z - 1 / 2))
      (𝓝[≠] (1 / 2)) (𝓝 (positivePoleSlope : ℂ)) := by
  have hs : slope V (1 / 2) = (fun z : ℂ ↦ V z / (z - 1 / 2)) := by
    funext z
    rw [slope_def_field, V_positive_pole_zero, sub_zero]
  rw [← hs]
  exact V_hasDerivAt_positive_pole.tendsto_slope

end
end FixedSourceFilterScratch

set_option autoImplicit false
namespace FixedSourceKernelScratch
open MeasureTheory Set Real Filter Finset
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment
open FormalResearch.RiemannHypothesis.SourceComparison
noncomputable section
local notation "v" => normalizedTest explicitSecondDerivative 1

/-- The actual logarithmic source sample, defined at all real arguments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceCheck/Variantbd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceCheck/Variantbd2e40f1aa1784bfcc1afa27d1c7e2423278469586891df9e38eab026f2b98c7.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d39ff82b0aa4e2fcdc83fd5a342080834025baf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
