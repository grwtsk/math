# runSingleCmd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f28b4300d5c9c925a5024faf600de42e7dd5587530fe3b9983f565388b39d397",
  "kind": "def",
  "lexical_name": "runSingleCmd",
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
  "slug": "runsinglecmd--f81329e27b1ac021bc9f46cb",
  "source": {
    "blob": "463b803e00a27d35577a8901b9bf3d0a6dd62128",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f81329e27b1ac021bc9f46cb8582c2073b9348b392c2df6ab88056b0c0dde6b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f28b4300d5c9c925a5024faf600de42e7dd5587530fe3b9983f565388b39d397`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runSingleCmd (p : Parsed) : IO UInt32 := do
  let buildDir := match p.flag? "build" with
    | some dir => dir.as! String
    | none => ".lake/build"
  let baseDir := outputBaseDir buildDir
  let module := p.positionalArg! "module" |>.as! String |>.toName
  let isJson := p.hasFlag "json"
  let options : LeanOptions ← match p.flag? "options" with
    | some o => IO.ofExcept (Json.parse (o.as! String) >>= fromJson?)
    | none => pure (∅ : LeanOptions)
  if isJson then
    let json ← jsonOfImportModule module options.toOptions
    outputJsonResults baseDir module json
  else
    let latexOutput ← latexOutputOfImportModule module options.toOptions
    discard <| outputLatexResults baseDir module latexOutput
  return 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant1cf810aee9c1b876a90ca2df805218574fa8d5534207f18f6af96da50dae8af6.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `463b803e00a27d35577a8901b9bf3d0a6dd62128` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
