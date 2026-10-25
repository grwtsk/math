# unpackCache

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6292169c96bde5aa9bb2d45a90b1a6d6550a0dc1d72af6dca2eaebbbd1d554f0",
  "kind": "def",
  "lexical_name": "unpackCache",
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
  "slug": "unpackcache--e6828751b4cae8ac873012e2",
  "source": {
    "blob": "2d073ddc40c32db529c8db94ba902ea5328a3f3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 292,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IO/Variant8f1dc42e00b9102c506c4ea86a482fc79f219d8fe1e8edb3437c39a53f3995f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6828751b4cae8ac873012e27bce384088fceb36bbb25bd4eec4413870ae8693",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IO/Variant8f1dc42e00b9102c506c4ea86a482fc79f219d8fe1e8edb3437c39a53f3995f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6292169c96bde5aa9bb2d45a90b1a6d6550a0dc1d72af6dca2eaebbbd1d554f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unpackCache (hashMap : HashMap) (force : Bool) : IO Unit := do
  let hashMap ← hashMap.filterExists true
  let size := hashMap.size
  if size > 0 then
    let now ← IO.monoMsNow
    IO.println s!"Decompressing {size} file(s)"
    let isMathlibRoot ← isMathlibRoot
    let args := (if force then #["-f"] else #[]) ++ #["-x", "-j", "-"]
    let child ← IO.Process.spawn { cmd := ← getLeanTar, args, stdin := .piped }
    let (stdin, child) ← child.takeStdin
    let config : Array Lean.Json := hashMap.fold (init := #[]) fun config path hash =>
      let pathStr := s!"{CACHEDIR / hash.asLTar}"
      if isMathlibRoot || !isPathFromMathlib path then
        config.push <| .str pathStr
      else -- only mathlib files, when not in the mathlib4 repo, need to be redirected
        config.push <| .mkObj [("file", pathStr), ("base", mathlibDepPath.toString)]
    stdin.putStr <| Lean.Json.compress <| .arr config
    let exitCode ← child.wait
    if exitCode != 0 then throw $ IO.userError s!"leantar failed with error code {exitCode}"
    IO.println s!"unpacked in {(← IO.monoMsNow) - now} ms"
  else IO.println "No cache files to decompress"

/-- Retrieves the azure token from the environment -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IO/Variant8f1dc42e00b9102c506c4ea86a482fc79f219d8fe1e8edb3437c39a53f3995f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IO/Variant8f1dc42e00b9102c506c4ea86a482fc79f219d8fe1e8edb3437c39a53f3995f9.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d073ddc40c32db529c8db94ba902ea5328a3f3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
