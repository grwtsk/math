# sourceCorrelationPrime_contDiffAt_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4df30cda-3149-c833-1823-0b4482431e46",
  "kind": "theorem",
  "lexical_name": "sourceCorrelationPrime_contDiffAt_scale",
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
  "slug": "sourcecorrelationprime-contdiffat-scale--499f35a3be332219d9078e93",
  "source": {
    "blob": "cb6d0ba0862d22a9db0c4943bf6f22f4cccdc508",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 372,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant15027681620b94f7c3d6b98f9a0e23aba6a28dd1ce487d49dd5f37f6096a91e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:499f35a3be332219d9078e93a143d7e1cef399822ab832d071c25e6187744d5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant15027681620b94f7c3d6b98f9a0e23aba6a28dd1ce487d49dd5f37f6096a91e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4df30cda-3149-c833-1823-0b4482431e46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelationPrime_contDiffAt_scale {A : ℝ} (hA : 0 < A) (s : ℝ) :
    ContDiffAt ℝ 1 (fun B => deriv (sourceCorrelation explicitSecondDerivative B) s) A :=
  (sourceCorrelationPrime_contDiffOn_scale s).contDiffAt
    (isOpen_Ioi.mem_nhds hA)



/-- The new class represents the literal ordinary q_A′, rather than a proposed weak derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant15027681620b94f7c3d6b98f9a0e23aba6a28dd1ce487d49dd5f37f6096a91e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant15027681620b94f7c3d6b98f9a0e23aba6a28dd1ce487d49dd5f37f6096a91e5.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb6d0ba0862d22a9db0c4943bf6f22f4cccdc508` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
