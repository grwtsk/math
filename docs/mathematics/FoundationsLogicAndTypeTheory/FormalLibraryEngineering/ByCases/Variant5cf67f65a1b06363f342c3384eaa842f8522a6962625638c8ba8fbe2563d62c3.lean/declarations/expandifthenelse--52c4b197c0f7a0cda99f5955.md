# expandIfThenElse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28fa6a90e77796552a2a332c8b8ec87a207da6bf4ba0a1443e553893c560939b",
  "kind": "def",
  "lexical_name": "expandIfThenElse",
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
  "slug": "expandifthenelse--52c4b197c0f7a0cda99f5955",
  "source": {
    "blob": "f30202f9843b071e5ee2387075637c1813a84de8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByCases/Variant5cf67f65a1b06363f342c3384eaa842f8522a6962625638c8ba8fbe2563d62c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52c4b197c0f7a0cda99f5955ea9b9eea78a33a531d1f714241362b6901c603db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByCases/Variant5cf67f65a1b06363f342c3384eaa842f8522a6962625638c8ba8fbe2563d62c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28fa6a90e77796552a2a332c8b8ec87a207da6bf4ba0a1443e553893c560939b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def expandIfThenElse
    (ifTk thenTk elseTk pos neg : Syntax)
    (mkIf : Term → Term → MacroM Term) : MacroM (TSyntax `tactic) := do
  let mkCase tk holeOrTacticSeq mkName : MacroM (Term × Array (TSyntax `tactic)) := do
    if holeOrTacticSeq.isOfKind ``Parser.Term.syntheticHole then
      pure (⟨holeOrTacticSeq⟩, #[])
    else if holeOrTacticSeq.isOfKind ``Parser.Term.hole then
      pure (← mkName, #[])
    else
      let hole ← withFreshMacroScope mkName
      let holeId := hole.raw[1]
      let case ← (open TSyntax.Compat in `(tactic|
          case $holeId:ident =>%$tk
            -- annotate `then/else` with state after `case`
            with_annotate_state $tk skip
            $holeOrTacticSeq))
      pure (hole, #[case])
  let (posHole, posCase) ← mkCase thenTk pos `(?pos)
  let (negHole, negCase) ← mkCase elseTk neg `(?neg)
  `(tactic| (open Classical in refine%$ifTk $(← mkIf posHole negHole); $[$(posCase ++ negCase)]*))

/--
In tactic mode, `if h : t then tac1 else tac2` can be used as alternative syntax for:
```
by_cases h : t
· tac1
· tac2
```
It performs case distinction on `h : t` or `h : ¬t` and `tac1` and `tac2` are the subproofs.

You can use `?_` or `_` for either subproof to delay the goal to after the tactic, but
if a tactic sequence is provided for `tac1` or `tac2` then it will require the goal to be closed
by the end of the block.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByCases/Variant5cf67f65a1b06363f342c3384eaa842f8522a6962625638c8ba8fbe2563d62c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByCases/Variant5cf67f65a1b06363f342c3384eaa842f8522a6962625638c8ba8fbe2563d62c3.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f30202f9843b071e5ee2387075637c1813a84de8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
