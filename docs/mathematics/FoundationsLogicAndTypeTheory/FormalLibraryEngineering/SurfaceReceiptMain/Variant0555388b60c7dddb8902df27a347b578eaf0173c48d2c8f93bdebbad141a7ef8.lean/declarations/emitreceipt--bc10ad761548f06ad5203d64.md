# emitReceipt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd2a591a67286b4e25cc7dc927ec87a5ad464b7535a68127bf599af683db4303",
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
  "slug": "emitreceipt--bc10ad761548f06ad5203d64",
  "source": {
    "blob": "9d1f0facec99341875a21327470bfa69b0ee1f25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant0555388b60c7dddb8902df27a347b578eaf0173c48d2c8f93bdebbad141a7ef8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc10ad761548f06ad5203d6488ae49ba67d57cb3136cc0d9421e2b6ef2dcc476",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant0555388b60c7dddb8902df27a347b578eaf0173c48d2c8f93bdebbad141a7ef8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd2a591a67286b4e25cc7dc927ec87a5ad464b7535a68127bf599af683db4303`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–105.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant0555388b60c7dddb8902df27a347b578eaf0173c48d2c8f93bdebbad141a7ef8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceReceiptMain/Variant0555388b60c7dddb8902df27a347b578eaf0173c48d2c8f93bdebbad141a7ef8.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d1f0facec99341875a21327470bfa69b0ee1f25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
