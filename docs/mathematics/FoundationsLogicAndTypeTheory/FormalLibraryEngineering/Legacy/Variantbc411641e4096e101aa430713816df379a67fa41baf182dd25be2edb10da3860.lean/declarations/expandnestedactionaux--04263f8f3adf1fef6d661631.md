# expandNestedActionAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56fb35f1d69f02a3e650a9d1b4d137257041c5d7702ba180510d0e98344eee3c",
  "kind": "def",
  "lexical_name": "expandNestedActionAux",
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
  "slug": "expandnestedactionaux--04263f8f3adf1fef6d661631",
  "source": {
    "blob": "9d7b9f53f68fc579718fff78079ef78950d29a7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1369,
    "line": 1323,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04263f8f3adf1fef6d661631d77dc731ea008626206f41f29d181a153bcce80a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56fb35f1d69f02a3e650a9d1b4d137257041c5d7702ba180510d0e98344eee3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1323–1369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def expandNestedActionAux (inQuot : Bool) (inBinder : Bool) : Syntax → StateT (List Syntax) M Syntax
  | stx@(Syntax.node i k args) =>
    if k == choiceKind then do
      -- choice node: check that lifts are consistent
      let alts ← stx.getArgs.mapM (expandNestedActionAux inQuot inBinder · |>.run [])
      let (_, lifts) := alts[0]!
      unless alts.all (·.2 == lifts) do
        throwErrorAt stx "cannot lift `(<- ...)` over inconsistent syntax variants, consider lifting out the binding manually"
      modify (· ++ lifts)
      return .node i k (alts.map (·.1))
    else if nestedActionDelimiter k then
      return stx
    -- For `pure` if-then-else, we only lift `(<- ...)` occurring in the condition.
    else if h : args.size >= 2 ∧ (k == ``termDepIfThenElse || k == ``termIfThenElse) then do
      let inAntiquot := stx.isAntiquot && !stx.isEscapedAntiquot
      let arg1 ← expandNestedActionAux (inQuot && !inAntiquot || stx.isQuot) inBinder args[1]
      let args := args.set! 1 arg1
      return Syntax.node i k args
    else if k == ``Parser.Term.nestedAction && !inQuot then withFreshMacroScope do
      if inBinder then
        throwErrorAt stx "cannot lift `(<- ...)` over a binder, this error usually happens when you are trying to lift a method nested in a `fun`, `let`, or `match`-alternative, and it can often be fixed by adding a missing `do`"
      let arg := args[1]!
      -- The parser has been extended to accept arbitrary `doElem`s, but the legacy `do` elaborator
      -- only supports a term after `←`. Pre-stage0-update format stored a term directly; the new
      -- format wraps a term in `doExpr`. Anything else is a non-trivial `doElem` we cannot lift.
      let isDoElem :=
        (Parser.getParserCategory? (← getEnv) `doElem).any (·.kinds.contains arg.getKind)
      let termArg ←
        if arg.getKind == ``Parser.Term.doExpr then
          pure arg[0]
        else if isDoElem then
          throwErrorAt arg "the legacy `do` elaborator only supports a term after `←`; use `set_option backward.do.legacy false` to enable the new elaborator with full `doElem` support"
        else
          pure arg
      let term ← expandNestedActionAux inQuot inBinder termArg
      -- keep name deterministic across choice branches
      let id ← mkIdentFromRef (.num baseId (← get).length)
      let auxDoElem : Syntax ← `(doElem| let $id:ident ← $term:term)
      modify fun s => s ++ [auxDoElem]
      return id
    else do
      let inAntiquot := stx.isAntiquot && !stx.isEscapedAntiquot
      let inBinder   := inBinder || (!inQuot && nestedActionForbiddenBinder stx)
      let args ← args.mapM (expandNestedActionAux (inQuot && !inAntiquot || stx.isQuot) inBinder)
      return Syntax.node i k args
  | stx => return stx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean#L1323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7b9f53f68fc579718fff78079ef78950d29a7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
