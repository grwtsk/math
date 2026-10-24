# error_floor_preserved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b01e01ee-6491-8da8-8291-9c15ff0bb9a4",
  "kind": "theorem",
  "lexical_name": "error_floor_preserved",
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
  "slug": "error-floor-preserved--022258bb5440f0bad4ab81d3",
  "source": {
    "blob": "d424d26e4e81bfc0969979311864a25bd48c4f0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 434,
    "path": "GRWTSK/Topology/GeneralTopology/PerturbedBoundary/Variant839c483e2b5c470c92082b0d95a3627e3cd87af67a23554e78f58999c5d5c0df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:022258bb5440f0bad4ab81d344997efbecea81c9000a9f02e25bacd1fef2a77d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PerturbedBoundary/Variant839c483e2b5c470c92082b0d95a3627e3cd87af67a23554e78f58999c5d5c0df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b01e01ee-6491-8da8-8291-9c15ff0bb9a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem error_floor_preserved
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    {perturbed : PerturbedBoundaryCertificate exact}
    (floor : UniformPerturbationFloor perturbed)
    {error : ℝ≥0}
    (below : error ≤ floor.errorFloor)
    (depth : ℕ)
    (schedule : Schedule) :
    exact.contraction * error +
        perturbed.perturbation depth schedule ≤
      floor.errorFloor := by
  exact le_trans
    (add_le_add
      (mul_le_mul_left' below exact.contraction)
      (floor.perturbation_bounded depth schedule))
    floor.floor_invariant

/--
A supplied Lipschitz observable transports the entire perturbed boundary
budget.  This certifies readout stability, not the interpretation of the
observable.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PerturbedBoundary/Variant839c483e2b5c470c92082b0d95a3627e3cd87af67a23554e78f58999c5d5c0df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PerturbedBoundary/Variant839c483e2b5c470c92082b0d95a3627e3cd87af67a23554e78f58999c5d5c0df.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d424d26e4e81bfc0969979311864a25bd48c4f0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
