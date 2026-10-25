# propose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b565720281af23d084ac11a452628e93837b871641152031ab047a50acda3629",
  "kind": "def",
  "lexical_name": "propose",
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
  "slug": "propose--ab1a66b36874bd49320dbdd7",
  "source": {
    "blob": "c0480409531a2275093667ba00ce02e9a98442a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variant337f65272481d60e8bcef258c588649a8f09df656da76af7a80d216c33175451.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab1a66b36874bd49320dbdd7a678186b43f0bc07d8cb10fe0ff93c0d2110f62e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variant337f65272481d60e8bcef258c588649a8f09df656da76af7a80d216c33175451.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b565720281af23d084ac11a452628e93837b871641152031ab047a50acda3629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propose (lemmas : DiscrTree Name) (type : Expr) (required : Array Expr)
    (solveByElimDepth := 15) : MetaM (Array (Name × Expr)) := do
  guard !required.isEmpty
  let ty ← whnfR (← instantiateMVars (← inferType required[0]!))
  let candidates ← lemmas.getMatch ty
  candidates.filterMapM fun lem : Name =>
    try
      trace[Tactic.propose] "considering {lem}"
      let Expr.mvar g ← mkFreshExprMVar type | failure
      let e ← mkConstWithFreshMVarLevels lem
      let (args, _, _) ← forallMetaTelescope (← inferType e)
      let .true ← preservingMCtx <| withAssignableSyntheticOpaque <|
        isDefEq type (← inferType (mkAppN e args)) | failure
      g.assign (mkAppN e args)
      let use := required.filterMap fun e => match e with | .fvar _ => none | _ => some e
      solveByElim g (args.map fun a => a.mvarId!) use required solveByElimDepth
      trace[Tactic.propose] "successfully filled in arguments for {lem}"
      pure <| some (lem, ← instantiateMVars (.mvar g))
    catch _ => pure none

open Lean.Parser.Tactic

/--
* `have? using a, b, c` tries to find a lemma
  which makes use of each of the local hypotheses `a, b, c`,
  and reports any results via trace messages.
* `have? : h using a, b, c` only returns lemmas whose type matches `h` (which may contain `_`).
* `have?! using a, b, c` will also call `have` to add results to the local goal state.

Note that `have?` (unlike `apply?`) does not inspect the goal at all,
only the types of the lemmas in the `using` clause.

`have?` should not be left in proofs; it is a search tool, like `apply?`.

Suggestions are printed as `have := f a b c`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variant337f65272481d60e8bcef258c588649a8f09df656da76af7a80d216c33175451.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propose/Variant337f65272481d60e8bcef258c588649a8f09df656da76af7a80d216c33175451.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0480409531a2275093667ba00ce02e9a98442a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
