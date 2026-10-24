# cylinder_chart_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:157255ac-9038-b362-cdbc-b465efde83b3",
  "kind": "theorem",
  "lexical_name": "cylinder_chart_derivative",
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
  "slug": "cylinder-chart-derivative--cba811afc00a6dbec5d4b4ce",
  "source": {
    "blob": "7b9c7ad58f1d57e6a324eeca5cf8d0becc564f7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 534,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cba811afc00a6dbec5d4b4ce7e8a42f594d135b6877c5c1518fe1910507d33c6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:157255ac-9038-b362-cdbc-b465efde83b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cylinder_chart_derivative (p : ParameterPlane) :
    HasFDerivAt cylinderChart (cylinderDerivative p) p :=
  (((parameterCoord 0).hasFDerivAt.cos.smul_const (axis 0)).add
    ((parameterCoord 0).hasFDerivAt.sin.smul_const (axis 1))).add
    ((parameterCoord 1).hasFDerivAt.smul_const (axis 2))

/-- The first actual plane-chart tangent is the second coordinate unit vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b9c7ad58f1d57e6a324eeca5cf8d0becc564f7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
