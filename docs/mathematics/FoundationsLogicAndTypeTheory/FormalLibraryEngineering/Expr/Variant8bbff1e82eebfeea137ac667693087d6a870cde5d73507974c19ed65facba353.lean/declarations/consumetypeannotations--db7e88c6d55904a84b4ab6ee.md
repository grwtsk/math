# consumeTypeAnnotations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2bd74ff4d6ee1c80e9828683509b1c4556aae135fc286c0b96dbcf1fa65c501",
  "kind": "def",
  "lexical_name": "consumeTypeAnnotations",
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
  "slug": "consumetypeannotations--db7e88c6d55904a84b4ab6ee",
  "source": {
    "blob": "5df8765a9589b3fe299e04390e2285ffe5a90043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1761,
    "line": 1747,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant8bbff1e82eebfeea137ac667693087d6a870cde5d73507974c19ed65facba353.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db7e88c6d55904a84b4ab6eeda5b2058a4106f3d998686494e053bc51ad21196",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant8bbff1e82eebfeea137ac667693087d6a870cde5d73507974c19ed65facba353.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2bd74ff4d6ee1c80e9828683509b1c4556aae135fc286c0b96dbcf1fa65c501`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1747–1761.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def consumeTypeAnnotations (e : Expr) : Expr :=
  if e.isOptParam || e.isAutoParam then
    consumeTypeAnnotations e.appFn!.appArg!
  else if e.isOutParam || e.isSemiOutParam then
    consumeTypeAnnotations e.appArg!
  else
    e

/--
Remove metadata annotations and `outParam`, `optParam`, and `autoParam` applications/annotations from `e`.
Note that it does not remove nested annotations.
Examples:
- Given `e` of the form `outParam (optParam Nat b)`, `cleanupAnnotations e = b`.
- Given `e` of the form `Nat → outParam (optParam Nat b)`, `cleanupAnnotations e = e`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant8bbff1e82eebfeea137ac667693087d6a870cde5d73507974c19ed65facba353.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant8bbff1e82eebfeea137ac667693087d6a870cde5d73507974c19ed65facba353.lean#L1747).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5df8765a9589b3fe299e04390e2285ffe5a90043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
