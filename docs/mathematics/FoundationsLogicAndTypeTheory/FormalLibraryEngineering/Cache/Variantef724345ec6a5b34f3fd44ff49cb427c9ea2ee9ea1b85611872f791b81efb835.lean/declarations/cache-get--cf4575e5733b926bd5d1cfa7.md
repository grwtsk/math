# Cache.get

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb9521ec0628e66224e35a1ac785879721daf55748fc1cb1c3f0339084cfa2b3",
  "kind": "def",
  "lexical_name": "Cache.get",
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
  "slug": "cache-get--cf4575e5733b926bd5d1cfa7",
  "source": {
    "blob": "6e12b42490213aa7a866dab137569b8593d5af83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf4575e5733b926bd5d1cfa777c4766ae7f50e76ea746e5edd77bf50ab3b937e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb9521ec0628e66224e35a1ac785879721daf55748fc1cb1c3f0339084cfa2b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cache.get [Monad m] [MonadEnv m] [MonadLog m] [MonadOptions m] [MonadLiftT BaseIO m]
    [MonadExcept Exception m] (cache : Cache α) : m α := do
  let t ← match ← ST.Ref.get (m := BaseIO) cache with
    | .inr t => pure t
    | .inl init =>
      let env ← getEnv
      let fileName ← getFileName
      let fileMap ← getFileMap
      let options ← getOptions -- TODO: sanitize options?
      -- Default heartbeats to a reasonable value.
      -- otherwise exact? times out on mathlib
      -- TODO: add customization option
      let options := Core.maxHeartbeats.set options <|
        options.get? Core.maxHeartbeats.name |>.getD 1000000
      let res ← EIO.asTask <|
        init {} |>.run' {} { options, fileName, fileMap } |>.run' { env }
      cache.set (m := BaseIO) (.inr res)
      pure res
  match t.get with
  | Except.ok res => pure res
  | Except.error err => throw err

/--
Cached fold over the environment's declarations,
where a given function is applied to `α` for every constant.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e12b42490213aa7a866dab137569b8593d5af83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
