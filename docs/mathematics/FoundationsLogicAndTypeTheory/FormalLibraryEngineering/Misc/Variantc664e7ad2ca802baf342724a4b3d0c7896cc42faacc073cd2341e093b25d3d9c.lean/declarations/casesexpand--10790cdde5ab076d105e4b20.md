# casesExpand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbb01f7cc207a23fbeadf9381ead1a8def81be4d7eac70fda1e069ffbc70e384",
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
  "slug": "casesexpand--10790cdde5ab076d105e4b20",
  "source": {
    "blob": "62050408732ce4dbc7901666dd94ccca99bb38cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 324,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantc664e7ad2ca802baf342724a4b3d0c7896cc42faacc073cd2341e093b25d3d9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10790cdde5ab076d105e4b20ac03c0ea6351981efc9f247acbea12a6760271ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantc664e7ad2ca802baf342724a4b3d0c7896cc42faacc073cd2341e093b25d3d9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbb01f7cc207a23fbeadf9381ead1a8def81be4d7eac70fda1e069ffbc70e384`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def casesExpand : TacticCodeAction := fun _ snap ctx _ node => do
  let .node (.ofTacticInfo info) _ := node | return #[]
  let (targets, induction, using_, alts) ← match info.stx with
    | `(tactic| cases $[$[$_ :]? $targets],* $[using $u]? $(alts)?) =>
      pure (targets, false, u, alts)
    | `(tactic| induction $[$[$_ :]? $targets],* $[using $u]? $[generalizing $_*]? $(alts)?) =>
      pure (targets, true, u, alts)
    | _ => return #[]
  let some discrInfos := targets.mapM (findTermInfo? node) | return #[]
  let some discr₀ := discrInfos[0]? | return #[]
  let mut some ctors ← discr₀.runMetaM ctx do
      let targets := discrInfos.map (·.expr)
      match using_ with
      | none =>
        if tactic.customEliminators.get (← getOptions) then
          if let some elimName ← getCustomEliminator? targets induction then
            return some (← getElimExprNames (← getConstInfo elimName).type)
        matchConstInduct (← whnf (← inferType discr₀.expr)).getAppFn
            (fun _ => failure) fun val _ => do
          let elimName := if induction then mkRecName val.name else mkCasesOnName val.name
          return some (← getElimExprNames (← getConstInfo elimName).type)
      | some u =>
        let some info := findTermInfo? node u | return none
        return some (← getElimExprNames (← inferType info.expr))
    | return #[]
  let mut fallback := none
  if let some alts := alts then
    if let `(Parser.Tactic.inductionAlts| with $(_)? $alts*) := alts then
      for alt in alts do
        match alt with
        | `(Parser.Tactic.inductionAlt| | _ $_* => $fb) => fallback := fb.raw.getRange?
        | `(Parser.Tactic.inductionAlt| | $id:ident $_* => $_) =>
          ctors := ctors.filter (fun x => x.1 != id.getId)
        | _ => pure ()
  if ctors.isEmpty then return #[]
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
      let indent := "\n".pushn ' ' (findIndentAndIsStart doc.meta.text.source tacPos).1
      let (startPos, str') := if alts.isSome then
        let stx' := if fallback.isSome then
          info.stx.modifyArg (if induction then 4 else 3)
            (·.modifyArg 0 (·.modifyArg 2 (·.modifyArgs (·.filter fun s =>
              !(s matches `(Parser.Tactic.inductionAlt| | _ $_* => $_))))))
        else info.stx
        (doc.meta.text.utf8PosToLspPos stx'.getTailPos?.get!, "")
      else (endPos, " with")
      let fallback := if let some ⟨startPos, endPos⟩ := fallback then
        String.Pos.Raw.extract doc.meta.text.source startPos endPos
      else
        "sorry"
      let newText := Id.run do
        let mut str := str'
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
          str := str ++ s!" => " ++ fallback
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantc664e7ad2ca802baf342724a4b3d0c7896cc42faacc073cd2341e093b25d3d9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantc664e7ad2ca802baf342724a4b3d0c7896cc42faacc073cd2341e093b25d3d9c.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62050408732ce4dbc7901666dd94ccca99bb38cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
