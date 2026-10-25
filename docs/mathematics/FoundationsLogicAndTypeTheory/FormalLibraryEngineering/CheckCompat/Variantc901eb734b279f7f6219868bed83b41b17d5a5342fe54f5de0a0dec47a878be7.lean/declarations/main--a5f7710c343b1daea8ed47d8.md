# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d32c25ef604d4096e539d4e13ee5eb96a1bbcad329bea20c078f30eae019c84a",
  "kind": "def",
  "lexical_name": "main",
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
  "slug": "main--a5f7710c343b1daea8ed47d8",
  "source": {
    "blob": "0401b276c729d4c0cc9de08a9fa9351a418b0fa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompat/Variantc901eb734b279f7f6219868bed83b41b17d5a5342fe54f5de0a0dec47a878be7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5f7710c343b1daea8ed47d8a751e8ce8ef5821015c4ff0fa2cc930795cd653a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompat/Variantc901eb734b279f7f6219868bed83b41b17d5a5342fe54f5de0a0dec47a878be7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d32c25ef604d4096e539d4e13ee5eb96a1bbcad329bea20c078f30eae019c84a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def main (args : List String) : IO UInt32 := do
  -- Find lake-manifest.json - check current dir and parent dirs
  let mut manifestPath : Option FilePath := none
  let mut searchDir := (← IO.currentDir)

  for _ in [0:10] do  -- Search up to 10 levels
    let candidate := searchDir / "lake-manifest.json"
    if ← candidate.pathExists then
      manifestPath := some candidate
      break
    let parent := searchDir / ".."
    if parent == searchDir then break
    searchDir := parent

  match manifestPath with
  | none =>
    IO.eprintln "Error: Could not find lake-manifest.json"
    IO.eprintln "Make sure you're in a Lake project directory and have run 'lake update'"
    return 1
  | some path =>
    let content ← IO.FS.readFile path
    match extractMathlibRev content with
    | none =>
      IO.eprintln "Error: Could not find mathlib in lake-manifest.json"
      IO.eprintln "Make sure your project depends on mathlib"
      return 1
    | some (commit, inputRev) =>
      let isCompatible := commit == expectedMathlibCommit || inputRev == expectedMathlibRev

      if args.contains "--json" then
        -- JSON output for programmatic use
        let result := Lean.Json.mkObj [
          ("compatible", Lean.Json.bool isCompatible),
          ("expected_rev", Lean.Json.str expectedMathlibRev),
          ("expected_commit", Lean.Json.str expectedMathlibCommit),
          ("found_rev", Lean.Json.str inputRev),
          ("found_commit", Lean.Json.str commit)
        ]
        IO.println result.compress
      else
        -- Human-readable output
        IO.println "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        IO.println "  LeanCert Mathlib Compatibility Check"
        IO.println "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
        IO.println s!"  LeanCert expects: {expectedMathlibRev}"
        IO.println s!"  Your project has: {inputRev}"
        if commit != inputRev then
          IO.println s!"  (commit: {commit.take 12}...)"
        IO.println ""

        if isCompatible then
          IO.println "  ✓ Versions match! You're good to go."
        else
          IO.println "  ✗ Version mismatch detected!"
          IO.println ""
          IO.println "  To fix, either:"
          IO.println s!"  1. Set mathlib rev to '{expectedMathlibRev}' in your lakefile.toml"
          IO.println "  2. Or update lake-manifest.json mathlib entry to match"
          IO.println ""
          IO.println "  Then run: rm -rf .lake && lake update && lake build"

        IO.println "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

      return if isCompatible then 0 else 1
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompat/Variantc901eb734b279f7f6219868bed83b41b17d5a5342fe54f5de0a0dec47a878be7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckCompat/Variantc901eb734b279f7f6219868bed83b41b17d5a5342fe54f5de0a0dec47a878be7.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0401b276c729d4c0cc9de08a9fa9351a418b0fa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
