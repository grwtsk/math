# checkForToolchainMismatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13895a9f5798f98c553643f56818391f37effc83a1e011bb3290b7cc8a8507a3",
  "kind": "def",
  "lexical_name": "checkForToolchainMismatch",
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
  "slug": "checkfortoolchainmismatch--8a750bae8889bf26e088bfa1",
  "source": {
    "blob": "cd8649fbc13ce4c7b901e279c83d2d8fb64bbf9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 181,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant13abcb6c6c9749d497b93d1815dc819337f8fc347f7e67492f99bad1e6f678d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a750bae8889bf26e088bfa10447b5823890ae199c8ad2b2287086a2d94b2dc1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant13abcb6c6c9749d497b93d1815dc819337f8fc347f7e67492f99bad1e6f678d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13895a9f5798f98c553643f56818391f37effc83a1e011bb3290b7cc8a8507a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkForToolchainMismatch : IO.CacheM Unit := do
  let mathlibToolchainFile := (← read).mathlibDepPath / "lean-toolchain"
  let downstreamToolchain ← IO.FS.readFile "lean-toolchain"
  let mathlibToolchain ← IO.FS.readFile mathlibToolchainFile
  if !(mathlibToolchain.trim = downstreamToolchain.trim) then
    IO.println "Dependency Mathlib uses a different lean-toolchain"
    IO.println s!"  Project uses {downstreamToolchain.trim}"
    IO.println s!"  Mathlib uses {mathlibToolchain.trim}"
    IO.println "\nThe cache will not work unless your project's toolchain matches Mathlib's toolchain"
    IO.println s!"This can be achieved by copying the contents of the file `{mathlibToolchainFile}`
into the `lean-toolchain` file at the root directory of your project"
    if !System.Platform.isWindows then
      IO.println s!"You can use `cp {mathlibToolchainFile} ./lean-toolchain`"
    else
      IO.println s!"On powershell you can use `cp {mathlibToolchainFile} ./lean-toolchain`"
      IO.println s!"On Windows CMD you can use `copy {mathlibToolchainFile} lean-toolchain`"
    IO.Process.exit 1
  return ()

/-- Fetches the ProofWidgets cloud release and prunes non-JS files. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant13abcb6c6c9749d497b93d1815dc819337f8fc347f7e67492f99bad1e6f678d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant13abcb6c6c9749d497b93d1815dc819337f8fc347f7e67492f99bad1e6f678d6.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd8649fbc13ce4c7b901e279c83d2d8fb64bbf9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
