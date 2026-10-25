# casesExpand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93dbb9aa19489f597f99204e411fe11a74980596c1c769d3440544814e0e0b93",
  "kind": "def",
  "lexical_name": "casesExpand",
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
  "slug": "casesexpand--95bb364a9150f39a15c24cd7",
  "source": {
    "blob": "2b480dd006405f80640df5ba74b92bf07fb2758a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 254,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant07f8bb37f7a7327d3c3b2dcd16a59810c2df7bd400927484c3dd3573b87ba439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95bb364a9150f39a15c24cd7318a900aee2efba704bbf8c729d928a5b63c855c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant07f8bb37f7a7327d3c3b2dcd16a59810c2df7bd400927484c3dd3573b87ba439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93dbb9aa19489f597f99204e411fe11a74980596c1c769d3440544814e0e0b93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def casesExpand : TacticCodeAction := fun _ snap ctx _ node => do
  let .node (.ofTacticInfo info) _ := node | return #[]
  let (discr, induction, alts) ← match info.stx with
    | `(tactic| cases $[$_ :]? $e $[$alts:inductionAlts]?) => pure (e, false, alts)
    | `(tactic| induction $e $[generalizing $_*]? $[$alts:inductionAlts]?) => pure (e, true, alts)
    | _ => return #[]
  if let some alts := alts then
    -- this detects the incomplete syntax `cases e with`
    unless alts.raw[2][0][0][0][0].isMissing do return #[]
  let some (.ofTermInfo discrInfo) := node.findInfo? fun i =>
    i.stx.getKind == discr.raw.getKind && i.stx.getRange? == discr.raw.getRange?
    | return #[]
  let .const name _ := (← discrInfo.runMetaM ctx (do whnf (← inferType discrInfo.expr))).getAppFn
    | return #[]
  let tacName := info.stx.getKind.updatePrefix .anonymous
  let eager := {
    title := s!"Generate an explicit pattern match for '{tacName}'."
    kind? := "quickfix"
  }
  let doc ← readDoc
  pure #[{
    eager
    lazy? := some do
      let tacPos := info.stx.getPos?.get!
      let endPos := doc.meta.text.utf8PosToLspPos info.stx.getTailPos?.get!
      let startPos := if alts.isSome then
        let stx' := info.stx.setArg (if induction then 4 else 3) mkNullNode
        doc.meta.text.utf8PosToLspPos stx'.getTailPos?.get!
      else endPos
      let elimName := if induction then mkRecName name else mkCasesOnName name
      let ctors ← discrInfo.runMetaM ctx (getElimNames name elimName)
      let newText := if ctors.isEmpty then "" else Id.run do
        let mut str := " with"
        let indent := "\n".pushn ' ' (findIndentAndIsStart doc.meta.text.source tacPos).1
        for (name, args) in ctors do
          let mut ctor := toString name
          if let some _ := (Parser.getTokenTable snap.env).find? ctor then
            ctor := s!"{idBeginEscape}{ctor}{idEndEscape}"
          str := str ++ indent ++ s!"| {ctor}"
          -- replace n_ih with just ih if there is only one
          let args := if induction &&
            args.foldl (fun c n =>
              if n.eraseMacroScopes.getString!.endsWith "_ih" then c+1 else c) 0 == 1
          then
            args.map (fun n => if !n.hasMacroScopes && n.getString!.endsWith "_ih" then `ih else n)
          else args
          for arg in args do
            str := str ++ if arg.hasNum || arg.isInternal then " _" else s!" {arg}"
          str := str ++ s!" => sorry"
        str
      pure { eager with
        edit? := some <|.ofTextEdit doc.versionedIdentifier {
          range := ⟨startPos, endPos⟩
          newText
        }
      }
  }]

/-- The "Add subgoals" code action puts `· done` subgoals for any goals remaining at the end of a
proof.
```
example : True ∧ True := by
  constructor
  -- <- here
```
is transformed to
```
example : True ∧ True := by
  constructor
  · done
  · done
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant07f8bb37f7a7327d3c3b2dcd16a59810c2df7bd400927484c3dd3573b87ba439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant07f8bb37f7a7327d3c3b2dcd16a59810c2df7bd400927484c3dd3573b87ba439.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b480dd006405f80640df5ba74b92bf07fb2758a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
