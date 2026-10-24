# endpointProduct_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28fcf48d-9959-a720-d35c-5ae7d44f0210",
  "kind": "theorem",
  "lexical_name": "endpointProduct_intervalIntegrable",
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
  "slug": "endpointproduct-intervalintegrable--c3adb993346d02bce9ea5ed9",
  "source": {
    "blob": "ba083983919716530425efbe610a7e88f16dd012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/0eba1181b914950a1a5dEstimateSourceEdgeCorrelation/Variantdc4a1f1bf4da4ea3267f856cbbe7ec4d2ad618f8447284f2f61880c2a8517093.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3adb993346d02bce9ea5ed9742624f2d5032956762d59e16054e138324ad587",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/0eba1181b914950a1a5dEstimateSourceEdgeCorrelation/Variantdc4a1f1bf4da4ea3267f856cbbe7ec4d2ad618f8447284f2f61880c2a8517093.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28fcf48d-9959-a720-d35c-5ae7d44f0210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpointProduct_intervalIntegrable (A z : ℝ) :
    IntervalIntegrable (fun r ↦ endpointPolynomial A r * endpointPolynomial A (z-r))
      volume 0 z := by
  have hc : Continuous (fun r ↦ endpointPolynomial A r * endpointPolynomial A (z-r)) :=
    (endpointPolynomial_continuous A).mul
    ((endpointPolynomial_continuous A).comp (continuous_const.sub continuous_id))
  exact hc.intervalIntegrable 0 z

/-- Exact source edge identity, with its A^9 normalization and endpoint polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/0eba1181b914950a1a5dEstimateSourceEdgeCorrelation/Variantdc4a1f1bf4da4ea3267f856cbbe7ec4d2ad618f8447284f2f61880c2a8517093.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/0eba1181b914950a1a5dEstimateSourceEdgeCorrelation/Variantdc4a1f1bf4da4ea3267f856cbbe7ec4d2ad618f8447284f2f61880c2a8517093.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba083983919716530425efbe610a7e88f16dd012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
