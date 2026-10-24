# source_correlation_scaled_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21c77ea8-41f1-d00c-a189-1b68e98ca7f5",
  "kind": "theorem",
  "lexical_name": "source_correlation_scaled_exact",
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
  "slug": "source-correlation-scaled-exact--6f69109415cdcdfccdfae50f",
  "source": {
    "blob": "a3053a6ee4028934f237cb5de0bcf0839e2c16fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f69109415cdcdfccdfae50f738e3d6b4f7c850295e9c87884cb897093cf46b0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21c77ea8-41f1-d00c-a189-1b68e98ca7f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_correlation_scaled_exact (A : ℝ) (hA : 1 ≤ A) (x : ℝ) :
    sourceCorrelation explicitSecondDerivative A (A * x) =
      (fixedKernel 0 x / 16 + fixedKernel 1 x / (2 * A ^ 2) +
        fixedKernel 2 x / A ^ 4) / sourceNormalization A := by
  rw [← scaled_kernel_eq_source_correlation A x hA]
  exact scaled_kernel_eq_three_fixed_kernels A x hA

/-- The unchanged normalization is exactly quadratic in the inverse square scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3053a6ee4028934f237cb5de0bcf0839e2c16fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
