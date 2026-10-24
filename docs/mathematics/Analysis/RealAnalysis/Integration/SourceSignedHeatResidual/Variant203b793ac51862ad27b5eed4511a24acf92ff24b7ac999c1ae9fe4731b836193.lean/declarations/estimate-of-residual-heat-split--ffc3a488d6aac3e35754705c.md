# estimate_of_residual_heat_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe6e780b-84d0-0700-e06f-7ee6a414af42",
  "kind": "theorem",
  "lexical_name": "estimate_of_residual_heat_split",
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
  "slug": "estimate-of-residual-heat-split--ffc3a488d6aac3e35754705c",
  "source": {
    "blob": "60d96d029b503bb95f4197761dc94058d8dde916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 317,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffc3a488d6aac3e35754705c39c7c35b3f384e5fe5defd10143f5721d3c375ec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe6e780b-84d0-0700-e06f-7ee6a414af42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_residual_heat_split {residual paid : ℝ → ℝ → ℝ}
    (R τ C P : ℝ) (hR : 1 ≤ R) (hτ : 0 < τ)
    (join : ActualSourceResidualJoin R residual paid)
    (hrem : ∀ A : ℝ, R ≤ A → sourceResidualHeatRemainder residual A τ ≤ C)
    (hcorr : ∀ A : ℝ, R ≤ A → sourceResidualCorrection residual paid A τ ≤ P) :
    CorrelationAssembly.EstimateObligation :=
  SourceKapitzaSignedReduction.estimate_of_compensated_tail
    (compensated_tail_of_residual_heat_split R τ C P hR hτ join hrem hcorr)

/-- A supplied residual terminal bound and linear payment use the existing estimate consumer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60d96d029b503bb95f4197761dc94058d8dde916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
