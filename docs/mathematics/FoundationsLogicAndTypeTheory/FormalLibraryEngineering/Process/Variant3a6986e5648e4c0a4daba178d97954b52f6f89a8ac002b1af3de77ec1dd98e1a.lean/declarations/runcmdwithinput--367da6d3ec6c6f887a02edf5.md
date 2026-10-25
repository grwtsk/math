# runCmdWithInput'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ea1871d6f2574880fae814713db75bf9e82410555f7b8db618fe0ae6370a5db",
  "kind": "def",
  "lexical_name": "runCmdWithInput'",
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
  "slug": "runcmdwithinput--367da6d3ec6c6f887a02edf5",
  "source": {
    "blob": "e39f37d25dc4f1aac044e18ef39169c4f0c9b3d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant3a6986e5648e4c0a4daba178d97954b52f6f89a8ac002b1af3de77ec1dd98e1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:367da6d3ec6c6f887a02edf5ee765abd6d4a8e203a0800ad7f7ab0c97fc9b9c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant3a6986e5648e4c0a4daba178d97954b52f6f89a8ac002b1af3de77ec1dd98e1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ea1871d6f2574880fae814713db75bf9e82410555f7b8db618fe0ae6370a5db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runCmdWithInput' (cmd : String) (args : Array String)
    (input : String := "") (throwFailure := true) : IO Output := do
  let child ← spawn
    { cmd := cmd, args := args, stdin := .piped, stdout := .piped, stderr := .piped }
  let (stdin, child) ← child.takeStdin
  stdin.putStr input
  stdin.flush
  let stdout ← IO.asTask child.stdout.readToEnd Task.Priority.dedicated
  let err ← child.stderr.readToEnd
  let exitCode ← child.wait
  if exitCode != 0 && throwFailure then
    throw $ IO.userError err
  else
    let out ← IO.ofExcept stdout.get
    return ⟨exitCode, out, err⟩

/--
Pipe `input` into stdin of the spawned process,
then return the entire content of stdout as a `String` upon completion.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant3a6986e5648e4c0a4daba178d97954b52f6f89a8ac002b1af3de77ec1dd98e1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Process/Variant3a6986e5648e4c0a4daba178d97954b52f6f89a8ac002b1af3de77ec1dd98e1a.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e39f37d25dc4f1aac044e18ef39169c4f0c9b3d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
