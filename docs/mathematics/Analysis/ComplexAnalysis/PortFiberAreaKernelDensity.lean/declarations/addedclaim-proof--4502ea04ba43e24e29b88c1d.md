# addedClaim_proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbb94e6a3e8c97f31d724c28240999a7c6a79668",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/Interfaces/PortFiberAreaKernelDensity.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2045404a-f977-4d00-391b-2e67ef62fe01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4482b2d-fe03-ddae-f5bc-ee073c92ffef",
  "kind": "theorem",
  "lexical_name": "addedClaim_proof",
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
  "slug": "addedclaim-proof--4502ea04ba43e24e29b88c1d",
  "source": {
    "blob": "bbb94e6a3e8c97f31d724c28240999a7c6a79668",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 87,
    "path": "GRWTSK/Interfaces/PortFiberAreaKernelDensity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4502ea04ba43e24e29b88c1d7e5d04c951dcebd842eef4ba2a30abe7257a24e7",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PortFiberAreaKernelDensity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4482b2d-fe03-ddae-f5bc-ee073c92ffef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | denseEvaluation => intro ι D h S hS v w hv; exact evaluation_ext_on_dense h S hS v w hv
  | exactAnnihilator =>
      intro ι D h S
      exact ⟨mem_kernelSpan_orthogonal h S, kernelSpan_orthogonal_eq_bot h S⟩
  | normDenseSpan =>
      intro ι D h S hS
      exact ⟨kernelSpan_dense h S hS, kernel_approximation h S hS⟩
  | boundedDetermination =>
      intro ι D h S hS F _ _ A B hAB
      exact boundedMap_ext_on_kernels h S hS A B hAB
  | adjointDetermination =>
      intro ι D h S hS f T hT
      exact multiplier_adjoint_unique h S hS f T hT
  | ambientClosedSpan => intro ι D h S hS; exact ambientKernelSpan_closure h S hS
  | projectionDetermination =>
      intro ι D h S hS g
      exact ⟨projection_unique_of_kernelMoments h S hS g,
        projection_zero_iff_kernelMoments h S hS g⟩
  | samplingBoundaries =>
      exact ⟨fun _ _ h => GRWTSK.Analysis.Complex.HolomorphicAreaKernelDensity.Fixtures.empty_kernelSpan h,
        GRWTSK.Analysis.Complex.HolomorphicAreaKernelDensity.Fixtures.diskCoordinateVector_ne_zero,
        GRWTSK.Analysis.Complex.HolomorphicAreaKernelDensity.Fixtures.disk_center_not_total⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PortFiberAreaKernelDensity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberAreaKernelDensity.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbb94e6a3e8c97f31d724c28240999a7c6a79668` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
