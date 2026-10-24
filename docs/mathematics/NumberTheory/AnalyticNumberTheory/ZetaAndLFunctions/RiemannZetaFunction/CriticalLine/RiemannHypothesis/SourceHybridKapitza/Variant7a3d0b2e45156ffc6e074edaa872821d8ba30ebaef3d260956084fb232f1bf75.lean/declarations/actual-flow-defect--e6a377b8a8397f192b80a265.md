# actual_flow_defect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aedbbf5a-cda6-46b2-3720-c0f8226e0b7c",
  "kind": "theorem",
  "lexical_name": "actual_flow_defect",
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
  "slug": "actual-flow-defect--e6a377b8a8397f192b80a265",
  "source": {
    "blob": "e5e9351bcb0e528d755c455bad76bd7bad4d5431",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 93,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridKapitza/Variant7a3d0b2e45156ffc6e074edaa872821d8ba30ebaef3d260956084fb232f1bf75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6a377b8a8397f192b80a2651549de0446542f6d3fa9030c50e699270f1df47a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridKapitza/Variant7a3d0b2e45156ffc6e074edaa872821d8ba30ebaef3d260956084fb232f1bf75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aedbbf5a-cda6-46b2-3720-c0f8226e0b7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_flow_defect (A s : ℝ) (hA : 1 ≤ A) :
    sourceCost (Real.exp (s / 2)) (kapitzaKernel A s) +
      storageDerivative (Real.exp (s / 2)) (deriv (sourceCorrector A) s) +
      (sourceFlow (sourceForcing A s))ᵀ *
        storageMatrix (Real.exp (s / 2)) (sourceCorrector A s) +
      storageMatrix (Real.exp (s / 2)) (sourceCorrector A s) *
        sourceFlow (sourceForcing A s) =
          !![-3 * Real.exp (s / 2) / 2, 0; 0, sourceCorrector A s * sourceForcing A s] :=
  source_flow_defect _ _ _ _ _ (sourceCorrector_deriv_cancel A s hA)

/-- Terminal completion of the square has an explicit, exponentially growing offset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridKapitza/Variant7a3d0b2e45156ffc6e074edaa872821d8ba30ebaef3d260956084fb232f1bf75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHybridKapitza/Variant7a3d0b2e45156ffc6e074edaa872821d8ba30ebaef3d260956084fb232f1bf75.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5e9351bcb0e528d755c455bad76bd7bad4d5431` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
