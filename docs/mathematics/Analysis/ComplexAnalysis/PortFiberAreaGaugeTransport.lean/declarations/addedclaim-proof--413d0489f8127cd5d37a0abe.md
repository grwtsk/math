# addedClaim_proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "699b8764129ff32eb970a8128781ea3ff251eac1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/Interfaces/PortFiberAreaGaugeTransport.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41b0dbb7-747c-bdb6-f48e-1e940485cc14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87d16fa0-35e9-b96c-2d55-23967e67f89f",
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
  "slug": "addedclaim-proof--413d0489f8127cd5d37a0abe",
  "source": {
    "blob": "699b8764129ff32eb970a8128781ea3ff251eac1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 94,
    "path": "GRWTSK/Interfaces/PortFiberAreaGaugeTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:413d0489f8127cd5d37a0abed6d82efd85b7b60c2c7fcba7d03cb7d6145d82c6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PortFiberAreaGaugeTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87d16fa0-35e9-b96c-2d55-23967e67f89f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | originalSection => intro ι D C G h s; exact realizedSection_on_class G h s
  | intrinsicEnergy => intro ι D C G h v; exact realizedSection_energy G h v
  | chartEvaluation => intro ι D C G h i x hi v; exact chartEvaluation_eq_coordinate G h i x hi v
  | kernelTransport =>
      intro ι D C G h i x hi j y hj
      exact ⟨chartKernelVector_transport G h i x hi, chartKernel_transport G h i x hi j y hj⟩
  | multiplierAdjoint => intro ι D C G h f i x hi; exact target_adjoint_kernel G h f i x hi
  | sourceFrameProjection =>
      intro ι D C G h
      exact ⟨pulledL2Inclusion_norm G h, pulledProjection_eq G h⟩
  | projectedSection => intro ι D C G h g; exact pulledLift_realizedSection G h g
  | frameBoundaries =>
      intro ι D h hArea i x hi
      exact GRWTSK.Analysis.Complex.HolomorphicAreaGaugeTransport.Fixtures.phase_wrong_sign h hArea i x hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PortFiberAreaGaugeTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberAreaGaugeTransport.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `699b8764129ff32eb970a8128781ea3ff251eac1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
