# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23208e307754cd96a30d39f5160d353bf09dace470c55ad463aa7c707f18b2cc",
  "kind": "elab",
  "lexical_name": null,
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
  "slug": "elab--f32fcdaf7bdd4c3c1a3115d8",
  "source": {
    "blob": "9017303de2759059c0b9356eebd29093654d302c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportPretty/Variantb501523f6c011f869b868e85163b97f64b94c1ece96c0c0cf9018f69cf21a273.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f32fcdaf7bdd4c3c1a3115d8c3aeb43426f6d35608f897aba3f424f6e943e665",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportPretty/Variantb501523f6c011f869b868e85163b97f64b94c1ece96c0c0cf9018f69cf21a273.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23208e307754cd96a30d39f5160d353bf09dace470c55ad463aa7c707f18b2cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
elab tk:"#pretty_current_imports " p:("without_public")? : command => do
  let (header, _) ← parseCurrentHeader
  let refs := headerToImportRefsWithWhitespace header
  let some (msg, _) ← liftCoreM <| Import.mkImportSuggestionMessage tk
    -- suggest `meta import Lean.Elab.Command` and `public import ImportGraph.Imports.Pretty`
    #[{ module := `Lean.Elab.Command, isMeta := true, isExported := p.isNone },
      { module := `ImportGraph.Imports.Pretty, isExported := true}]
    refs
    | throwError "Could not create message"
  logInfoAt tk msg

/--
info:
  public meta import I̵m̵p̵o̵r̵t̵G̵r̵a̵p̵h̵.̵I̵m̵p̵o̵r̵t̵s̵.̵F̵r̵o̵m̵S̵o̵u̵r̵c̵e̵
  ̵
  ̵
  ̵
  ̵p̵u̵b̵l̵i̵c̵ ̵m̵e̵t̵a̵ ̵i̵m̵p̵o̵r̵t̵ ̵Lean.Elab.Command -- some comment
  public m̵e̵t̵a̵ ̵import ImportGraph.Imports.Pretty
-/
#guard_msgs in
#pretty_current_imports

/--
info:
  [apply] public import ImportGraph.Imports.Pretty
  ⏎
  meta import Lean.Elab.Command
  ⏎
  /-
  Comments were present when importing `Lean.Elab.Command`, but this module is now imported differently as `meta import Lean.Elab.Command`.
  Decide if the following original comments still apply:
  ```
  public meta import Lean.Elab.Command -- some comment
  ```
  -/
-/
#guard_msgs in
#pretty_current_imports without_public
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportPretty/Variantb501523f6c011f869b868e85163b97f64b94c1ece96c0c0cf9018f69cf21a273.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportPretty/Variantb501523f6c011f869b868e85163b97f64b94c1ece96c0c0cf9018f69cf21a273.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9017303de2759059c0b9356eebd29093654d302c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
