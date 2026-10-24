# addedClaim_proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47390431b7ec0eb0c5bf5d6eeea490b89c5d8ce8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/Interfaces/PortFiberAreaProjection.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d1f9213-8fa7-2d43-5064-6e5b419dec01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26348ef5-b020-78b0-424a-ad0a6c982ee0",
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
  "slug": "addedclaim-proof--f8c4bb09c3664dfb1a6ab9d7",
  "source": {
    "blob": "47390431b7ec0eb0c5bf5d6eeea490b89c5d8ce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 78,
    "path": "GRWTSK/Interfaces/PortFiberAreaProjection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8c4bb09c3664dfb1a6ab9d719473906df5b693b53d5adc500121ee1b5d37547",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PortFiberAreaProjection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26348ef5-b020-78b0-424a-ad0a6c982ee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | exactAdjointBinding => intro ι D h v; exact bergmanLift_embedding h v
  | projectionLaws =>
      intro ι D h
      exact ⟨bergmanProjection_idempotent h, bergmanProjection_adjoint h,
        bergmanProjection_norm_le h⟩
  | exactImage =>
      intro ι D h g
      exact ⟨bergmanProjection_range h, bergmanProjection_eq_self_iff h g⟩
  | orthogonalResidual =>
      intro ι D h g
      exact ⟨projection_residual_inner h g, bergmanProjection_eq_zero_iff h g⟩
  | uniqueApproximation => intro ι D h g; exact existsUnique_bestApprox h g
  | holomorphicOutput =>
      intro ι D h g
      exact ⟨projectedFunction_finite h g, bergmanProjection_ae h g⟩
  | arbitraryL2Kernel =>
      intro ι D h x g
      exact ⟨projection_kernel_integrable h x g, integral_projection h x g⟩
  | failureBoundaries =>
      exact ⟨GRWTSK.Analysis.Complex.HolomorphicAreaProjection.Fixtures.disk_projection_not_zero,
        GRWTSK.Analysis.Complex.HolomorphicAreaProjection.Fixtures.spike_not_recovered⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PortFiberAreaProjection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberAreaProjection.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47390431b7ec0eb0c5bf5d6eeea490b89c5d8ce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
