# mkTermContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d43263a0bb67283c95225d574b9418880d6ddb69130137552b1e511dd24576ad",
  "kind": "def",
  "lexical_name": "mkTermContext",
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
  "slug": "mktermcontext--2842e8feb1a56f6972aa18f8",
  "source": {
    "blob": "112bf0606c1b16af59d7953c32ac7959b6508ced",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 730,
    "line": 696,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant144be283be181e428cada561e868552bef3d8af17354965e4cf96916074c3140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2842e8feb1a56f6972aa18f8acfd4e362e81b5a67c2679b9f191cb99d3fb16ef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant144be283be181e428cada561e868552bef3d8af17354965e4cf96916074c3140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d43263a0bb67283c95225d574b9418880d6ddb69130137552b1e511dd24576ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 696–730.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def mkTermContext (ctx : Context) (s : State) : CommandElabM Term.Context := do
  let scope      := s.scopes.head!
  let mut sectionVars := {}
  for id in (← scope.varDecls.flatMapM getBracketedBinderIds), uid in scope.varUIds do
    sectionVars := sectionVars.insert id uid
  return {
    macroStack             := ctx.macroStack
    sectionVars            := sectionVars
    isNoncomputableSection := scope.isNoncomputable
    isMetaSection          := scope.isMeta }

/--
Lift the `TermElabM` monadic action `x` into a `CommandElabM` monadic action.

Note that `x` is executed with an empty message log. Thus, `x` cannot modify/view messages produced by
previous commands.

If you need to access the free variables corresponding to the ones declared using the `variable` command,
consider using `runTermElabM`.

Recall that `TermElabM` actions can automatically lift `MetaM` and `CoreM` actions.
Example:
```
public import Lean

open Lean Elab Command Meta

def printExpr (e : Expr) : MetaM Unit := do
  IO.println s!"{← ppExpr e} : {← ppExpr (← inferType e)}"

#eval
  liftTermElabM do
    printExpr (mkConst ``Nat)
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant144be283be181e428cada561e868552bef3d8af17354965e4cf96916074c3140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant144be283be181e428cada561e868552bef3d8af17354965e4cf96916074c3140.lean#L696).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `112bf0606c1b16af59d7953c32ac7959b6508ced` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
