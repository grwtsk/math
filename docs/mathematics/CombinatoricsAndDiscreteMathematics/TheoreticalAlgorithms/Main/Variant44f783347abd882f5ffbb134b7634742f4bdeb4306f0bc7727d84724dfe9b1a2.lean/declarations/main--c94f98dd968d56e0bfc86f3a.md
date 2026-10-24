# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae3829355f50b57157ee36578a96b9552a427e0c632c0414368119feb2ff8381",
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
  "slug": "main--c94f98dd968d56e0bfc86f3a",
  "source": {
    "blob": "f6bca7cb16a489e51a22a4ad54ed3b5fab328eeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant44f783347abd882f5ffbb134b7634742f4bdeb4306f0bc7727d84724dfe9b1a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c94f98dd968d56e0bfc86f3a3bc34c3bdbe6036db1c469405fdaec693ebc1fe7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant44f783347abd882f5ffbb134b7634742f4bdeb4306f0bc7727d84724dfe9b1a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae3829355f50b57157ee36578a96b9552a427e0c632c0414368119feb2ff8381`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def main (args : List String) : IO Unit := do
  if Lean.versionString == "4.8.0-rc1" && Lean.githash == "b470eb522bfd68ca96938c23f6a1bce79da8a99f" then do
    println "Unfortunately, you have a broken Lean v4.8.0-rc1 installation."
    println "Please run `elan toolchain uninstall leanprover/lean4:v4.8.0-rc1` and try again."
    Process.exit 1
  if args.isEmpty then
    println help
    Process.exit 0
  CacheM.run do

  let (repo?, args) ← parseRepo args
  let mut roots : Std.HashMap Lean.Name FilePath ← parseArgs args
  if roots.isEmpty then do
    -- No arguments means to start from `Mathlib.lean`
    -- TODO: could change this to the default-target of a downstream project
    let mod := `Mathlib
    let sp := (← read).srcSearchPath
    let sourceFile ← Lean.findLean sp mod
    roots := roots.insert mod sourceFile

  let hashMemo ← getHashMemo roots
  let hashMap := hashMemo.hashMap
  let goodCurl ← pure !curlArgs.contains (args.headD "") <||> validateCurl
  if leanTarArgs.contains (args.headD "") then validateLeanTar
  let get (args : List String) (force := false) (decompress := true) := do
    let hashMap ← if args.isEmpty then pure hashMap else hashMemo.filterByRootModules roots.keys
    getFiles repo? hashMap force force goodCurl decompress
  let pack (overwrite verbose unpackedOnly := false) := do
    packCache hashMap overwrite verbose unpackedOnly (← getGitCommitHash)
  let put (overwrite unpackedOnly := false) := do
    let repo := repo?.getD MATHLIBREPO
    putFiles repo (← pack overwrite (verbose := true) unpackedOnly) overwrite (← getToken)
  match args with
  | "get"  :: args => get args
  | "get!" :: args => get args (force := true)
  | "get-" :: args => get args (decompress := false)
  | ["pack"] => discard <| pack
  | ["pack!"] => discard <| pack (overwrite := true)
  | ["unpack"] => unpackCache hashMap false
  | ["unpack!"] => unpackCache hashMap true
  | ["clean"] =>
    cleanCache <| hashMap.fold (fun acc _ hash => acc.insert <| CACHEDIR / hash.asLTar) .empty
  | ["clean!"] => cleanCache
  -- We allow arguments for `put*` so they can be added to the `roots`.
  | "put" :: _ => put
  | "put!" :: _ => put (overwrite := true)
  | "put-unpacked" :: _ => put (unpackedOnly := true)
  | ["commit"] =>
    if !(← isGitStatusClean) then IO.println "Please commit your changes first" return else
    commit hashMap false (← getToken)
  | ["commit!"] =>
    if !(← isGitStatusClean) then IO.println "Please commit your changes first" return else
    commit hashMap true (← getToken)
  | ["collect"] => IO.println "TODO"
  | "lookup" :: _ => lookup hashMap roots.keys
  | _ => println help
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant44f783347abd882f5ffbb134b7634742f4bdeb4306f0bc7727d84724dfe9b1a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant44f783347abd882f5ffbb134b7634742f4bdeb4306f0bc7727d84724dfe9b1a2.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6bca7cb16a489e51a22a4ad54ed3b5fab328eeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
