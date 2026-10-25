# expandNestedActionsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6008a707e3cf5a0c654c1862bc817cd54ccb86b6ad6aef9358ad2730c75c5aa",
  "kind": "def",
  "lexical_name": "expandNestedActionsAux",
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
  "slug": "expandnestedactionsaux--f726daba2807a91846708813",
  "source": {
    "blob": "8989d99b84b6c7ee7db899a0ac9d1716f4853e0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 908,
    "line": 868,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38dd1fce5c451e57fd106239c1cdb3b4d2d550515c568fb847ebb9d66ed64b9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f726daba2807a918467088135ab6f0119e9aab2374e082a940b8c44f8abfef94",
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

Occurrence: `declaration:a6008a707e3cf5a0c654c1862bc817cd54ccb86b6ad6aef9358ad2730c75c5aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 868–908.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def expandNestedActionsAux (baseId : Name) (inQuot : Bool) (inBinder : Bool) : Syntax → StateT (Array DoElem) DoElabM Syntax
  | stx@(Syntax.node i k args) =>
    if k == choiceKind then do
      -- choice node: check that lifts are consistent
      let alts ← stx.getArgs.mapM (expandNestedActionsAux baseId inQuot inBinder · |>.run #[])
      let (_, lifts) := alts[0]!
      unless alts.all (·.2 == lifts) do
        throwErrorAt stx "Cannot lift nested action `{stx}` over inconsistent syntax variants.\nConsider lifting out the binding manually."
      modify (· ++ lifts)
      return .node i k (alts.map (·.1))
    else if liftNestedActionDelimiter k then
      return stx
    -- For `pure` if-then-else, we only lift `(<- ...)` occurring in the condition.
    else if h : args.size >= 2 ∧ (k == ``termDepIfThenElse || k == ``termIfThenElse) then do
      let inAntiquot := stx.isAntiquot && !stx.isEscapedAntiquot
      let arg1 ← expandNestedActionsAux baseId (inQuot && !inAntiquot || stx.isQuot) inBinder args[1]
      let args := args.set! 1 arg1
      return Syntax.node i k args
    else if k == ``Parser.Term.nestedAction && !inQuot then withFreshMacroScope do
      if inBinder then
        throwErrorAt stx "Cannot lift nested action `{stx}` over a binder.\nThis error usually happens when you are trying to lift a method nested in a `fun`, `let`, or `match`-alternative, and it can often be fixed by adding a missing `do`."
      let arg ← expandNestedActionsAux baseId inQuot inBinder args[1]!
      -- Pre-stage0-update format stored a term in `args[1]`; the new format stores a doElem.
      -- Wrap raw terms in `doExpr` so the subsequent `let _ ← _` quotation parses correctly.
      let isDoElem :=
        (Parser.getParserCategory? (← getEnv) `doElem).any (·.kinds.contains arg.getKind)
      let act : DoElem ←
        if isDoElem then pure ⟨arg⟩
        else let t : Term := ⟨arg⟩; `(doElem| $t:term)
      -- keep name deterministic across choice branches
      let id ← mkIdentFromRef (.num baseId (← get).size)
      let auxDoElem ← `(doElem| let $id:ident ← $act)
      modify fun s => s.push auxDoElem
      return id
    else do
      let inAntiquot := stx.isAntiquot && !stx.isEscapedAntiquot
      let inBinder   := inBinder || (!inQuot && nestedActionForbiddenBinder stx)
      let args ← args.mapM (expandNestedActionsAux baseId (inQuot && !inAntiquot || stx.isQuot) inBinder)
      return Syntax.node i k args
  | stx => return stx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38dd1fce5c451e57fd106239c1cdb3b4d2d550515c568fb847ebb9d66ed64b9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38dd1fce5c451e57fd106239c1cdb3b4d2d550515c568fb847ebb9d66ed64b9f.lean#L868).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8989d99b84b6c7ee7db899a0ac9d1716f4853e0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
