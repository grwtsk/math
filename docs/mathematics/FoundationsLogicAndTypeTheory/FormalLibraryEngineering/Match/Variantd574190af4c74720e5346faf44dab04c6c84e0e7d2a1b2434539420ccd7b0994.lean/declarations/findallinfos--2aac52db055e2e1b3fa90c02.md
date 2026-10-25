# findAllInfos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2ff5d2d30bf9046f6d8c85438815fa15b0658f0fda794350a9c98bfc01782f3",
  "kind": "def",
  "lexical_name": "findAllInfos",
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
  "slug": "findallinfos--2aac52db055e2e1b3fa90c02",
  "source": {
    "blob": "b770f13b7f60384df0a47bde130a20e41980cce6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantd574190af4c74720e5346faf44dab04c6c84e0e7d2a1b2434539420ccd7b0994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2aac52db055e2e1b3fa90c021a97d8f112a7eee24323739b729e377a9f4d60d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantd574190af4c74720e5346faf44dab04c6c84e0e7d2a1b2434539420ccd7b0994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2ff5d2d30bf9046f6d8c85438815fa15b0658f0fda794350a9c98bfc01782f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def findAllInfos (p : Info → Bool) (t : InfoTree) : Array Info :=
  loop t #[]
where
  /-- Inner loop for `findAllInfos`. -/
  loop (t : InfoTree) (acc : Array Info) : Array Info :=
    match t with
    | .context _ childTree => loop childTree acc
    | .node info children  =>
      let acc' := if p info then acc.push info else acc
      children.foldl (fun currentAcc child => loop child currentAcc) acc'
    | .hole _              => acc

/-- Computes for a constructor, if it makes sense to use `@constr` in a match, by determining
    if it has any non-parameter implicit arguments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantd574190af4c74720e5346faf44dab04c6c84e0e7d2a1b2434539420ccd7b0994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantd574190af4c74720e5346faf44dab04c6c84e0e7d2a1b2434539420ccd7b0994.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b770f13b7f60384df0a47bde130a20e41980cce6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
