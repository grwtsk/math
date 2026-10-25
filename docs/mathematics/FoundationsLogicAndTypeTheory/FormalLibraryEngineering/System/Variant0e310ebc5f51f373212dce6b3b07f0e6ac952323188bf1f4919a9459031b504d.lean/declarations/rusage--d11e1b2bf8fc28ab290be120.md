# RUsage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7d4b500fb1288031b64eba753b6e1ee3b3c6fc5c8e61a3628fe04cff5a226af",
  "kind": "structure",
  "lexical_name": "RUsage",
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
  "slug": "rusage--d11e1b2bf8fc28ab290be120",
  "source": {
    "blob": "ca2f4e8ecb440e778a4fbb25ee489ab2ea2bd492",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/System/Variant0e310ebc5f51f373212dce6b3b07f0e6ac952323188bf1f4919a9459031b504d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d11e1b2bf8fc28ab290be120d741130193a81f7a65f6fc915682faa4ad9a811b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/System/Variant0e310ebc5f51f373212dce6b3b07f0e6ac952323188bf1f4919a9459031b504d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7d4b500fb1288031b64eba753b6e1ee3b3c6fc5c8e61a3628fe04cff5a226af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RUsage where
  userTime : UInt64
  systemTime : UInt64
  maxRSS : UInt64
  ixRSS : UInt64
  idRSS : UInt64
  isRSS : UInt64
  minFlt : UInt64
  majFlt : UInt64
  nSwap : UInt64
  inBlock : UInt64
  outBlock : UInt64
  msgSent : UInt64
  msgRecv : UInt64
  signals : UInt64
  voluntaryCS : UInt64
  involuntaryCS : UInt64
deriving Repr, Inhabited

/--
Represents the breakdown of CPU time usage in milliseconds.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/System/Variant0e310ebc5f51f373212dce6b3b07f0e6ac952323188bf1f4919a9459031b504d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/System/Variant0e310ebc5f51f373212dce6b3b07f0e6ac952323188bf1f4919a9459031b504d.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca2f4e8ecb440e778a4fbb25ee489ab2ea2bd492` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
