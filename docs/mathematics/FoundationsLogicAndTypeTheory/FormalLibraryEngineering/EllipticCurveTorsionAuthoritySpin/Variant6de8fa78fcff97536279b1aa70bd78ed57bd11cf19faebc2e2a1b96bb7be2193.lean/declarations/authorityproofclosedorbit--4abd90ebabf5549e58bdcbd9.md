# AuthorityProofClosedOrbit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d20834403ddb6f0998cbb501b7517cccc81450c4e7257a246c78336bd13a22f",
  "kind": "structure",
  "lexical_name": "AuthorityProofClosedOrbit",
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
  "slug": "authorityproofclosedorbit--4abd90ebabf5549e58bdcbd9",
  "source": {
    "blob": "f4643f8808ed91af19231dcd02eee234ad3f319f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticCurveTorsionAuthoritySpin/Variant6de8fa78fcff97536279b1aa70bd78ed57bd11cf19faebc2e2a1b96bb7be2193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4abd90ebabf5549e58bdcbd9680228f0a4d7c0f269607e102779ec105fcf93b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticCurveTorsionAuthoritySpin/Variant6de8fa78fcff97536279b1aa70bd78ed57bd11cf19faebc2e2a1b96bb7be2193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d20834403ddb6f0998cbb501b7517cccc81450c4e7257a246c78336bd13a22f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AuthorityProofClosedOrbit (N : Nat) where
  carrier : FiniteTransitionCarrier N
  stateAt : Fin N → StatementAuthorityFlipSurface
  start : Fin N
  period : Nat
  period_pos : 0 < period
  closed : transitionIterate carrier.transition period start = start
  theoremLikeAtReturn :
    (stateAt (transitionIterate carrier.transition period start)).theoremLikeKindActive
  proofSpinAtReturn :
    (stateAt (transitionIterate carrier.transition period start)).proofSpinActive

/-- The authority orbit returns to its start after its period. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticCurveTorsionAuthoritySpin/Variant6de8fa78fcff97536279b1aa70bd78ed57bd11cf19faebc2e2a1b96bb7be2193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticCurveTorsionAuthoritySpin/Variant6de8fa78fcff97536279b1aa70bd78ed57bd11cf19faebc2e2a1b96bb7be2193.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4643f8808ed91af19231dcd02eee234ad3f319f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
