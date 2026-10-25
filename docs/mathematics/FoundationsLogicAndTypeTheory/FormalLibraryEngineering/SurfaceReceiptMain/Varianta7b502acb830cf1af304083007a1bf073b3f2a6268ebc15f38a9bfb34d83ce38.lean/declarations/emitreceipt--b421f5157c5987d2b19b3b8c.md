# emitReceipt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c24e9f35de032dc9eb9b6beb855bfeab08773a8d1a9275aaf91da5ef52b10e65",
  "kind": "def",
  "lexical_name": "emitReceipt",
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
  "slug": "emitreceipt--b421f5157c5987d2b19b3b8c",
  "source": {
    "blob": "34938c037e581f70059238df4e2cb3c0214c13e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Varianta7b502acb830cf1af304083007a1bf073b3f2a6268ebc15f38a9bfb34d83ce38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b421f5157c5987d2b19b3b8c45eb7cc2d6333ada15503b57c011f6f76c44d5b4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Varianta7b502acb830cf1af304083007a1bf073b3f2a6268ebc15f38a9bfb34d83ce38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c24e9f35de032dc9eb9b6beb855bfeab08773a8d1a9275aaf91da5ef52b10e65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitReceipt (declaration : String) : IO UInt32 := do
  initSearchPath (← findSysroot) [".lake/build/lib/lean"]
  let env ← importModules #[{ module := `Surface }] {}
  let declarationName := nameFromDottedString declaration
  match env.find? declarationName with
  | none =>
      IO.eprintln <| "surface_receipt: declaration not found: " ++ declaration
      pure 2
  | some info =>
      unless info.isTheorem do
        IO.eprintln <| "surface_receipt: declaration is not a theorem: " ++ declaration
        return 3
      let action : CoreM (String × Array Name × Option DeclarationRanges) := do
        let normalizedType ← (do
          return toString (← Meta.ppExpr info.type)).run'
        let axioms ← Lean.collectAxioms declarationName
        let ranges ← Lean.findDeclarationRanges? declarationName
        pure (normalizedType, axioms, ranges)
      let (normalizedType, axioms, ranges) ← action.toIO'
        { fileName := "<surface_receipt>", fileMap := default }
        { env := env }
      IO.println <| receiptJson env declarationName normalizedType axioms.toList ranges
      pure 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Varianta7b502acb830cf1af304083007a1bf073b3f2a6268ebc15f38a9bfb34d83ce38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Varianta7b502acb830cf1af304083007a1bf073b3f2a6268ebc15f38a9bfb34d83ce38.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34938c037e581f70059238df4e2cb3c0214c13e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
