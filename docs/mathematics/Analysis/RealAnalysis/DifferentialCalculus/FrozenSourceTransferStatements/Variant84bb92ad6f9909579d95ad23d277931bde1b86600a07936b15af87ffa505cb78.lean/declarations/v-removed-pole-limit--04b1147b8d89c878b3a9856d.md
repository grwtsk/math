# V_removed_pole_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5b7d723-34d2-119b-5b15-a429c59e7715",
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
  "slug": "v-removed-pole-limit--04b1147b8d89c878b3a9856d",
  "source": {
    "blob": "ef5f6d1e3115a4d850dd204f45ed7e4e957e9659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 211,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FrozenSourceTransferStatements/Variant84bb92ad6f9909579d95ad23d277931bde1b86600a07936b15af87ffa505cb78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04b1147b8d89c878b3a9856dc52433b0163ca8fb411dc4c02e8848b09713c89c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FrozenSourceTransferStatements/Variant84bb92ad6f9909579d95ad23d277931bde1b86600a07936b15af87ffa505cb78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5b7d723-34d2-119b-5b15-a429c59e7715`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–230.

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
namespace FrozenSourceTransferScratch
open Filter Set FixedSourceFilterScratch
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
noncomputable section

/-- The pointwise transfer product, whose value at the zeta pole is not the repaired value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FrozenSourceTransferStatements/Variant84bb92ad6f9909579d95ad23d277931bde1b86600a07936b15af87ffa505cb78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FrozenSourceTransferStatements/Variant84bb92ad6f9909579d95ad23d277931bde1b86600a07936b15af87ffa505cb78.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef5f6d1e3115a4d850dd204f45ed7e4e957e9659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
