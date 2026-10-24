# joint_sector_eq_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7016a8b5-28ed-aca4-da35-0a815ab7c603",
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
  "slug": "joint-sector-eq-source--81caa2162849475ddf309c2f",
  "source": {
    "blob": "2019f712c0343a529a113a87d6d82a5fc5fbce88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant6d7fc15bdd39e8f5a0aa7a2690d6a970c8cfa1447f1aa5c470f4d2b079cc83e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81caa2162849475ddf309c2f1436e7e3cc15f2122ae76e503ae9f0e592d3c8d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant6d7fc15bdd39e8f5a0aa7a2690d6a970c8cfa1447f1aa5c470f4d2b079cc83e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7016a8b5-28ed-aca4-da35-0a815ab7c603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–259.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualReflectionBalance/Variant6d7fc15bdd39e8f5a0aa7a2690d6a970c8cfa1447f1aa5c470f4d2b079cc83e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualReflectionBalance/Variant6d7fc15bdd39e8f5a0aa7a2690d6a970c8cfa1447f1aa5c470f4d2b079cc83e7.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2019f712c0343a529a113a87d6d82a5fc5fbce88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
