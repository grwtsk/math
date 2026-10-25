# getAppUpToDefeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f066eaac2a2ef4992e00964698b907c86088312b2290fe0d3ec4d1e59f9776b9",
  "kind": "def",
  "lexical_name": "getAppUpToDefeq",
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
  "slug": "getappuptodefeq--48095dd744bbecf5c171da22",
  "source": {
    "blob": "2961f0f7d4afe1abc44d8424e3e0e63f79c9ae42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 281,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant889b0abf7a8f588048ef076869745808a2f1dcc71c6e0130ce7159b65b8fffd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48095dd744bbecf5c171da2262cf307a54cff084c950b12850c8e6687a7a2a91",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant889b0abf7a8f588048ef076869745808a2f1dcc71c6e0130ce7159b65b8fffd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f066eaac2a2ef4992e00964698b907c86088312b2290fe0d3ec4d1e59f9776b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getAppUpToDefeq (e : Expr) : MetaM (Expr × Array Expr) :=
  go #[] e
where
  go (args : Array Expr) (e : Expr) : MetaM (Expr × Array Expr) := do
    match ← whnf e with
    | .app f e => go (args.push e) f
    | _ => return (e, args.reverse)

/--
Partition an array of structures containing `MVarId`s into 'goals' and
'proper mvars'. An `MVarId` from the input array `goals` is classified as a
proper mvar if any of the `MVarId`s depend on it, and as a goal otherwise.
Additionally, for each goal, we report the set of mvars that the goal depends
on.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant889b0abf7a8f588048ef076869745808a2f1dcc71c6e0130ce7159b65b8fffd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant889b0abf7a8f588048ef076869745808a2f1dcc71c6e0130ce7159b65b8fffd0.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2961f0f7d4afe1abc44d8424e3e0e63f79c9ae42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
