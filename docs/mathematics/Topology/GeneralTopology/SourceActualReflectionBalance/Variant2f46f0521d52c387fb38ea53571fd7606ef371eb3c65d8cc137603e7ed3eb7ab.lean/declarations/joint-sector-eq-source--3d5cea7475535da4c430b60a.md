# joint_sector_eq_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58e3f19b-6cfb-f9fe-8b6b-2bc3b199a6dc",
  "kind": "theorem",
  "lexical_name": "joint_sector_eq_source",
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
  "slug": "joint-sector-eq-source--3d5cea7475535da4c430b60a",
  "source": {
    "blob": "97b3d0efda0c47f7961248a67df6962fd953d036",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 221,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant2f46f0521d52c387fb38ea53571fd7606ef371eb3c65d8cc137603e7ed3eb7ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d5cea7475535da4c430b60aa30afe9d665439fd61d23825be2cdfbbcb85eb6a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant2f46f0521d52c387fb38ea53571fd7606ef371eb3c65d8cc137603e7ed3eb7ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58e3f19b-6cfb-f9fe-8b6b-2bc3b199a6dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem joint_sector_eq_source (A : ℝ) (hA : 1 ≤ A) :
    evenWork A + oddWork A = signedPairing explicitSecondDerivative A +
      primeTwoBoundary explicitSecondDerivative A / 2 := by
  rw [evenWork_eq_source_and_mixed A hA, oddWork_eq_source_and_mixed A hA]
  ring

end RH16ActualReflectionBalance
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant2f46f0521d52c387fb38ea53571fd7606ef371eb3c65d8cc137603e7ed3eb7ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant2f46f0521d52c387fb38ea53571fd7606ef371eb3c65d8cc137603e7ed3eb7ab.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97b3d0efda0c47f7961248a67df6962fd953d036` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
