# all_spectral_errors_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "452831ef1d438d27730a63a5b96ddbe403353550",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1392,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13fe780c-c2b2-6c07-f3eb-ab1617baf929",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2568fb5d-e565-2f4d-a7fa-90ab1a0d3f9a",
  "kind": "theorem",
  "lexical_name": "all_spectral_errors_bounded",
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
  "slug": "all-spectral-errors-bounded--464b4f9c2134a8144a751317",
  "source": {
    "blob": "452831ef1d438d27730a63a5b96ddbe403353550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1412,
    "line": 1392,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:464b4f9c2134a8144a751317044bc32a48ab5c41fbae76373074ff5603146868",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2568fb5d-e565-2f4d-a7fa-90ab1a0d3f9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1392–1412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_spectral_errors_bounded
    (C : FiniteModeSpectralComparisonCapability
      graph continuum comparison hypotheses modeCount)
    (h : hypotheses.Admissible)
    (k : Fin modeCount) :
    |graph.eigenvalue ((C.compare h).graphMode k) -
        continuum.eigenvalue ((C.compare h).continuumMode k)| ≤
          (C.compare h).eigenvalueErrorBound k ∧
      comparison.eigenspaceDistance
          (comparison.graphEigenspace ((C.compare h).graphMode k))
          (comparison.continuumEigenspace ((C.compare h).continuumMode k)) ≤
            (C.compare h).eigenspaceErrorBound k ∧
      comparison.projectorDistance
          (comparison.graphProjector ((C.compare h).graphMode k))
          (comparison.continuumProjector ((C.compare h).continuumMode k)) ≤
            (C.compare h).projectorErrorBound k :=
  ⟨(C.compare h).eigenvalue_error_le k,
    (C.compare h).eigenspace_error_le k,
    (C.compare h).projector_error_le k⟩

/-- Projector/eigenspace bounds are indexed only by explicitly isolated clusters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean#L1392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `452831ef1d438d27730a63a5b96ddbe403353550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
