# openInBrowser

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22dce65745733818254c904ed6d7756c5f60204f02590858338785249cd180ad",
  "kind": "def",
  "lexical_name": "openInBrowser",
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
  "slug": "openinbrowser--a9edc7114c81e4daebe404d7",
  "source": {
    "blob": "9271dde62a56a4069c2c619b223c089711d8e6a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProfilerServer/Variant8dda7eb30c0626a80e791aef6d566aca02821a4ef3f42988754afd821a57c54c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9edc7114c81e4daebe404d7a01f0c949e453c7e8e6f90e95e11922cc89d4825",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProfilerServer/Variant8dda7eb30c0626a80e791aef6d566aca02821a4ef3f42988754afd821a57c54c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22dce65745733818254c904ed6d7756c5f60204f02590858338785249cd180ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def openInBrowser (url : String) : IO Unit := do
  let args : IO.Process.SpawnArgs :=
    if System.Platform.isWindows then
      { cmd := "cmd", args := #["/c", "start", "", url] }
    else if System.Platform.isOSX then
      { cmd := "open", args := #[url] }
    else
      { cmd := "xdg-open", args := #[url] }
  try
    let child ← IO.Process.spawn { args with stdout := .null, stderr := .null, stdin := .null }
    discard child.wait
  catch _ =>
    -- Browser launch is opportunistic; the URL is also printed for the user to copy.
    pure ()

/--
Serve the JSON-encoded `profile` over HTTP on an ephemeral `127.0.0.1` port and open it in the
user's default browser via `https://profiler.firefox.com`. Shuts down once the profile has been
fetched (reloads inside the viewer are not supported); the user can also Ctrl+C as usual.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProfilerServer/Variant8dda7eb30c0626a80e791aef6d566aca02821a4ef3f42988754afd821a57c54c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProfilerServer/Variant8dda7eb30c0626a80e791aef6d566aca02821a4ef3f42988754afd821a57c54c.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9271dde62a56a4069c2c619b223c089711d8e6a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
