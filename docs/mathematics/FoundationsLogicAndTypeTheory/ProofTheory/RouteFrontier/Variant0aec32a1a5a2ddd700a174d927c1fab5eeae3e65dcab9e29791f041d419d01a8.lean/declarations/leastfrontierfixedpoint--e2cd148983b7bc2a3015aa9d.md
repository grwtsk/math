# LeastFrontierFixedPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed6f160d067d218a55872d56299b7e74487dccd085dea06df6d6f89b715e9d77",
  "kind": "structure",
  "lexical_name": "LeastFrontierFixedPoint",
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
  "slug": "leastfrontierfixedpoint--e2cd148983b7bc2a3015aa9d",
  "source": {
    "blob": "c532b6523df8f88ceef0fd9f28b25d4b956a945e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2cd148983b7bc2a3015aa9d3d8bb81d0478bfe45be661adc8f3b2a31b1fabca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed6f160d067d218a55872d56299b7e74487dccd085dea06df6d6f89b715e9d77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LeastFrontierFixedPoint
    {State : Type u}
    (snapshot : ProjectionSnapshot)
    (step : State → State)
    (Below : State → State → Prop) where
  activeSnapshot : VerifiedActiveSnapshot snapshot
  value : State
  fixed : step value = value
  least :
    ∀ candidate, step candidate = candidate →
      Below value candidate

end Mathematics.ProofStrategy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c532b6523df8f88ceef0fd9f28b25d4b956a945e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
