# riesz_perron_truncation_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8484f426-33c8-1e14-50ea-e83a912d108b",
  "kind": "theorem",
  "lexical_name": "riesz_perron_truncation_tendsto",
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
  "slug": "riesz-perron-truncation-tendsto--db0f63049d3e12b14381f536",
  "source": {
    "blob": "f516da3b600b546897afdb60b8e32f199d01406d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 719,
    "line": 708,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant69317a18c4830daa90be5765310c816f10faf2ba7a9aabb18fc09266b89717b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db0f63049d3e12b14381f5366ea513e6f2ae0b1b17d883ba6f54475e9b03b298",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant69317a18c4830daa90be5765310c816f10faf2ba7a9aabb18fc09266b89717b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8484f426-33c8-1e14-50ea-e83a912d108b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 708–719.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riesz_perron_truncation_tendsto (A : ℝ) (hA : 1 ≤ A) (c : ℝ) (hc : 1 / 2 < c) :
    Filter.Tendsto (rieszPerronTruncation A c) Filter.atTop
      (nhds ((A ^ 9 * primePowerContribution explicitSecondDerivative A : ℝ) : ℂ)) := by
  have h := intervalIntegral_tendsto_integral (riesz_perron_integrable A c hc)
    Filter.tendsto_neg_atTop_atBot (Filter.tendsto_id : Filter.Tendsto (fun T : ℝ ↦ T)
      Filter.atTop Filter.atTop)
  unfold rieszPerronTruncation
  rw [riesz_perron_integral_exact A hA c hc]
  exact h.const_mul _

end
end FormalResearch.RiemannHypothesis.PrimePowerPerron
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant69317a18c4830daa90be5765310c816f10faf2ba7a9aabb18fc09266b89717b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2599bb2a206f502427dae4654ea56539cbcc7b0773155549824cbdc62b708e74PrimePowerPerron/Variant69317a18c4830daa90be5765310c816f10faf2ba7a9aabb18fc09266b89717b5.lean#L708).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f516da3b600b546897afdb60b8e32f199d01406d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
