# elabDoElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d347606211cda20076b12bc66cd4926931468e46147f2a12f6fda3b63ebcd8a6",
  "kind": "def",
  "lexical_name": "elabDoElem",
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
  "slug": "elabdoelem--91ba4e2dbc0955c205ea3f96",
  "source": {
    "blob": "8989d99b84b6c7ee7db899a0ac9d1716f4853e0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1000,
    "line": 973,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38dd1fce5c451e57fd106239c1cdb3b4d2d550515c568fb847ebb9d66ed64b9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91ba4e2dbc0955c205ea3f96467b5b568eacb1e9b95ac00d23f44abb229ec5a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38dd1fce5c451e57fd106239c1cdb3b4d2d550515c568fb847ebb9d66ed64b9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d347606211cda20076b12bc66cd4926931468e46147f2a12f6fda3b63ebcd8a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 973–1000.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def elabDoElem (stx : DoElem) (cont : DoElemCont) (catchExPostpone : Bool := true) : DoElabM Expr := do
  let k := stx.raw.getKind
  trace[Elab.do.step] "do element: {stx}"
  checkSystem "do element elaborator"
  profileitM Exception "do element elaborator" (decl := k) (← getOptions) <|
  withRef stx <| withIncRecDepth <| withFreshMacroScope <| do
  let mγ ← mkMonadApp (← read).doBlockResultType
  if (← read).deadCode matches .deadSyntactically then
    logWarningAt stx "This `do` element and its control-flow region are dead code. Consider removing it."
    return ← mkFreshExprMVar mγ (userName := `deadCode)
  if (← read).deadCode matches .deadSemantically then
    logWarningAt stx "This `do` element and its control-flow region are dead code. Consider refactoring your code to remove it."
  withDeadCode .alive do -- we have warned for this doElem. No need to warn for every element of the block
  let env ← getEnv
  if let some (decl, stxNew?) ← liftMacroM (expandMacroImpl? env stx) then
    let stxNew ← liftMacroM <| liftExcept stxNew?
    return ← withTermInfoContext' decl stx mγ <|
      Term.withMacroExpansion stx stxNew <|
        withRef stxNew <| elabDoElem ⟨stxNew⟩ cont

  let (doElems, stx) ← expandNestedActions stx
  if !doElems.isEmpty then
    return ← elabDoElems1 (doElems.push stx) cont

  match doElemElabAttribute.getEntries (← getEnv) k with
  | []      => throwError "elaboration function for `{k}` has not been implemented{indentD stx}"
  | elabFns => elabDoElemFns stx cont elabFns catchExPostpone

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38dd1fce5c451e57fd106239c1cdb3b4d2d550515c568fb847ebb9d66ed64b9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38dd1fce5c451e57fd106239c1cdb3b4d2d550515c568fb847ebb9d66ed64b9f.lean#L973).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8989d99b84b6c7ee7db899a0ac9d1716f4853e0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
