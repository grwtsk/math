# busyAcquireLockFile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fe921f738cb6991a0eb92adcc1e5e9fe7d8e96a1886554a068d1aa9babed75e",
  "kind": "def",
  "lexical_name": "busyAcquireLockFile",
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
  "slug": "busyacquirelockfile--b0a12c8fa04c71e4d11a579a",
  "source": {
    "blob": "78f109574faedcfedd6d142ed51b5b700082aa63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lock/Variante41f9a5b34cb425553ce6c9af377f4f89b85f8f6f8d8299c570b195b7d7e927d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0a12c8fa04c71e4d11a579a238e4d6836f34a36611b7d4c107b92af677cf368",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lock/Variante41f9a5b34cb425553ce6c9af377f4f89b85f8f6f8d8299c570b195b7d7e927d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fe921f738cb6991a0eb92adcc1e5e9fe7d8e96a1886554a068d1aa9babed75e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] public partial def busyAcquireLockFile (lockFile : FilePath) : IO PUnit := do
  busyLoop true
where
  busyLoop firstTime :=
    try
      if let some dir := lockFile.parent then
        IO.FS.createDirAll dir
      -- Remark: fail if already exists
      -- (not part of POSIX, but supported on all our platforms)
      let h ← IO.FS.Handle.mk lockFile .writeNew
      h.putStrLn <| toString <| ← IO.Process.getPID
    catch
      | .alreadyExists .. => do
        if firstTime then
          let stderr ← IO.getStderr
          stderr.putStrLn s!"\
            warning: waiting for prior `lake build` invocation to finish... \
            (remove '{lockFile}' if stuck)"
          stderr.flush
        IO.sleep (ms := 300)
        busyLoop false
      | e => throw e

/-- Busy wait to acquire the lock of `lockFile`, run `act`, and then release the lock. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lock/Variante41f9a5b34cb425553ce6c9af377f4f89b85f8f6f8d8299c570b195b7d7e927d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lock/Variante41f9a5b34cb425553ce6c9af377f4f89b85f8f6f8d8299c570b195b7d7e927d.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78f109574faedcfedd6d142ed51b5b700082aa63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
