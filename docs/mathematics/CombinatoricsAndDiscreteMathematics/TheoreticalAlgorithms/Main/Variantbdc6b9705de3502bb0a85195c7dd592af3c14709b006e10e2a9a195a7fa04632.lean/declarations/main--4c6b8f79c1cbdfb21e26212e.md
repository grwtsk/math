# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0fdcc3d08954d411d9f70cc6948191fd792a538347d2c1ed90429582a7202da5",
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
  "slug": "main--4c6b8f79c1cbdfb21e26212e",
  "source": {
    "blob": "8250137748045aac4ee934cdc46c8b0c8d1951c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variantbdc6b9705de3502bb0a85195c7dd592af3c14709b006e10e2a9a195a7fa04632.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c6b8f79c1cbdfb21e26212e25e13cd7ab9711005692d9144a5cb7a707ce0d8f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variantbdc6b9705de3502bb0a85195c7dd592af3c14709b006e10e2a9a195a7fa04632.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0fdcc3d08954d411d9f70cc6948191fd792a538347d2c1ed90429582a7202da5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def main (args : List String) : IO Unit := do
  let hashMemo ← getHashMemo
  let hashMap := hashMemo.hashMap
  let goodCurl ← pure !curlArgs.contains (args.headD "") <||> validateCurl
  if leanTarArgs.contains (args.headD "") then validateLeanTar
  match args with
  | ["get"] => getFiles hashMap false false goodCurl true
  | ["get!"] => getFiles hashMap true true goodCurl true
  | ["get-"] => getFiles hashMap false false goodCurl false
  | "get"  :: args =>
    getFiles (← hashMemo.filterByFilePaths (toPaths args)) false false goodCurl true
  | "get!" :: args =>
    getFiles (← hashMemo.filterByFilePaths (toPaths args)) true true goodCurl true
  | "get-" :: args =>
    getFiles (← hashMemo.filterByFilePaths (toPaths args)) false false goodCurl false
  | ["pack"] => discard $ packCache hashMap false
  | ["pack!"] => discard $ packCache hashMap true
  | ["unpack"] => unpackCache hashMap false
  | ["unpack!"] => unpackCache hashMap true
  | ["clean"] =>
    cleanCache $ hashMap.fold (fun acc _ hash => acc.insert $ CACHEDIR / hash.asLTar) .empty
  | ["clean!"] => cleanCache
  | ["put"] => putFiles (← packCache hashMap false) false (← getToken)
  | ["put!"] => putFiles (← packCache hashMap false) true (← getToken)
  | ["commit"] =>
    if !(← isGitStatusClean) then IO.println "Please commit your changes first" return else
    commit hashMap false (← getToken)
  | ["commit!"] =>
    if !(← isGitStatusClean) then IO.println "Please commit your changes first" return else
    commit hashMap true (← getToken)
  | ["collect"] => IO.println "TODO"
  | _ => println help
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variantbdc6b9705de3502bb0a85195c7dd592af3c14709b006e10e2a9a195a7fa04632.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variantbdc6b9705de3502bb0a85195c7dd592af3c14709b006e10e2a9a195a7fa04632.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8250137748045aac4ee934cdc46c8b0c8d1951c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
