# recordLints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dee5bea2acac74f625e1fb625ea5311e885ad57cd278ed68048e41f62f32d6f0",
  "kind": "def",
  "lexical_name": "recordLints",
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
  "slug": "recordlints--3af3e38ff1f5ffb405b7badf",
  "source": {
    "blob": "94cf31d28dd2699d52d8cfa0bb6cd9aff18a52f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentLintLog/Variant005de1c9dc5f646c6ab8409a6bc2cba91ee05540c47f176964356dae13ff39ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3af3e38ff1f5ffb405b7badfe16f0c626b2aca526ace37ecd813c38a6748efd0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentLintLog/Variant005de1c9dc5f646c6ab8409a6bc2cba91ee05540c47f176964356dae13ff39ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dee5bea2acac74f625e1fb625ea5311e885ad57cd278ed68048e41f62f32d6f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recordLints (fileMap : FileMap) (env : Environment)
    (commandLints : Array (Option Syntax × MessageLog)) : BaseIO Environment := do
  commandLints.foldlM (init := env) fun env (cmdStx?, messages) => do
    let declRange? : Option DeclarationRange ← match cmdStx? with
      | some stx => (Lean.Elab.getDeclarationRange? stx : ReaderT FileMap _ _).run fileMap
      | none     => pure none
    let position? : Option Position := declRange?.map (·.pos)
    messages.reportedPlusUnreported.foldlM (init := env) fun env m => do
      unless m.data.isLinterMessage do
        return env
      let kind := m.data.kind
      if kind.isAnonymous then
        return env
      let sm ← m.serialize
      return lintLogExt.addEntry env { linter := kind, message := sm, position?, file := m.fileName }

end Lean.Linter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentLintLog/Variant005de1c9dc5f646c6ab8409a6bc2cba91ee05540c47f176964356dae13ff39ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentLintLog/Variant005de1c9dc5f646c6ab8409a6bc2cba91ee05540c47f176964356dae13ff39ae.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94cf31d28dd2699d52d8cfa0bb6cd9aff18a52f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
