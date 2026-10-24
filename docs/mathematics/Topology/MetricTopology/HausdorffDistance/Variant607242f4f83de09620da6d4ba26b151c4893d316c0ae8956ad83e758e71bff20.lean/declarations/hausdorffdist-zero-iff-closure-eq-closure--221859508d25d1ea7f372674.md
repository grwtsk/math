# hausdorffDist_zero_iff_closure_eq_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3db4f5a-c78c-4914-f41e-c4e1b102d2b4",
  "kind": "theorem",
  "lexical_name": "hausdorffDist_zero_iff_closure_eq_closure",
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
  "slug": "hausdorffdist-zero-iff-closure-eq-closure--221859508d25d1ea7f372674",
  "source": {
    "blob": "e92f771aecf9d98f8d9bab7c1349bc58b8838869",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 817,
    "line": 812,
    "path": "GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant607242f4f83de09620da6d4ba26b151c4893d316c0ae8956ad83e758e71bff20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:221859508d25d1ea7f3726747a7d7aafc8cdd87f3b6926272b4a6c2abdab7f99",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HausdorffDistance/Variant607242f4f83de09620da6d4ba26b151c4893d316c0ae8956ad83e758e71bff20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3db4f5a-c78c-4914-f41e-c4e1b102d2b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 812–817.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffDist_zero_iff_closure_eq_closure (fin : hausdorffEdist s t ≠ ⊤) :
    hausdorffDist s t = 0 ↔ closure s = closure t := by
  simp [← hausdorffEdist_zero_iff_closure_eq_closure, hausdorffDist,
    ENNReal.toReal_eq_zero_iff, fin]

/-- Two closed sets are at zero Hausdorff distance if and only if they coincide. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HausdorffDistance/Variant607242f4f83de09620da6d4ba26b151c4893d316c0ae8956ad83e758e71bff20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant607242f4f83de09620da6d4ba26b151c4893d316c0ae8956ad83e758e71bff20.lean#L812).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e92f771aecf9d98f8d9bab7c1349bc58b8838869` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
