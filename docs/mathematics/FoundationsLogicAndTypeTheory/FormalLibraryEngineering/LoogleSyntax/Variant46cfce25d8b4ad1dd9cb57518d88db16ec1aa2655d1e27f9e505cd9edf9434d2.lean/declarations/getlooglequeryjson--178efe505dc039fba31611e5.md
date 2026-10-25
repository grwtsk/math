# getLoogleQueryJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9dd683082c0a90699d30cc1c4e940d74378049744c401e58a6c972a0ec3a1066",
  "kind": "def",
  "lexical_name": "getLoogleQueryJson",
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
  "slug": "getlooglequeryjson--178efe505dc039fba31611e5",
  "source": {
    "blob": "6245537746da145e4ccaf8d5c6b242f75dc579cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoogleSyntax/Variant46cfce25d8b4ad1dd9cb57518d88db16ec1aa2655d1e27f9e505cd9edf9434d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:178efe505dc039fba31611e546bf828d9709069560bce500fdfff1dd690fe189",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoogleSyntax/Variant46cfce25d8b4ad1dd9cb57518d88db16ec1aa2655d1e27f9e505cd9edf9434d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9dd683082c0a90699d30cc1c4e940d74378049744c401e58a6c972a0ec3a1066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def getLoogleQueryJson (s : String) (num_results : Nat := 6) :
  CoreM <| LoogleResult:= do
  let s := s.splitOn "/-" |>.getD 0 s |>.trimAscii.toString
  let s := s.replace "\n" " "
  let cache ← loogleCache.get
  match cache.get? (s, num_results) with
  | some r => return r
  | none => do
    let apiUrl := (← IO.getEnv "LEANSEARCHCLIENT_LOOGLE_API_URL").getD "https://loogle.lean-lang.org/json"
    let s' := System.Uri.escapeUri s
    if s.trimAscii.toString == "" then
      return LoogleResult.empty
    let q := apiUrl ++ s!"?q={s'}"
    let out ← IO.Process.output {cmd := "curl", args := #["-X", "GET", "--user-agent", ← useragent,  q]}
    match Json.parse out.stdout with
    | Except.error _ =>
      IO.throwServerError s!"Could not contact Loogle server"
    | Except.ok js =>
    let result? := js.getObjValAs?  Json "hits" |>.toOption
    let result? := result?.filter fun js => js != Json.null
    match result? with
      | some result => do
          match result.getArr? with
          | Except.ok arr =>
            let arr :=  arr[0:num_results] |>.toArray
            let xs : Array SearchResult ←
              arr.mapM fun js => do
                let doc? := js.getObjValAs? String "doc" |>.toOption
                let name? := js.getObjValAs? String "name"
                let type? := js.getObjValAs? String "type"
                match name?, type? with
                | Except.ok name, Except.ok type =>
                  pure <| {name := name, type? := some type, docString? := doc?, doc_url? := none, kind? := none}
                | _, _ =>
                  IO.throwServerError s!"Could not obtain name and type from {js}"
            loogleCache.modify fun m => m.insert (s, num_results) (LoogleResult.success xs)
            return LoogleResult.success xs
          | Except.error e => IO.throwServerError s!"Could not obtain array from {js}; error: {e}, query :{s'}, hits: {result}"
      | _ =>
        let error? := js.getObjValAs? String "error"
        match error? with
          | Except.ok error =>
            let suggestions? :=
              js.getObjValAs? (List String) "suggestions" |>.toOption
            loogleCache.modify fun m => m.insert (s, num_results) (LoogleResult.failure error suggestions?)
            pure <| LoogleResult.failure error suggestions?
          | _ =>
            IO.throwServerError s!"Could not obtain hits or error from {js}"

-- #eval getLoogleQueryJson "List"

def loogleUsage : String :=
  "Loogle Usage

Loogle finds definitions and lemmas in various ways:

By constant:
🔍 Real.sin
finds all lemmas whose statement somehow mentions the sine function.

By lemma name substring:
🔍 \"differ\"
finds all lemmas that have \"differ\" somewhere in their lemma name.

By subexpression:
🔍 _ * (_ ^ _)
finds all lemmas whose statements somewhere include a product where the second argument is raised to some power.

The pattern can also be non-linear, as in
🔍 Real.sqrt ?a * Real.sqrt ?a

If the pattern has parameters, they are matched in any order. Both of these will find List.map:
🔍 (?a -> ?b) -> List ?a -> List ?b
🔍 List ?a -> (?a -> ?b) -> List ?b

By main conclusion:
🔍 |- tsum _ = _ * tsum _
finds all lemmas where the conclusion (the subexpression to the right of all → and ∀) has the given shape.

As before, if the pattern has parameters, they are matched against the hypotheses of the lemma in any order; for example,
🔍 |- _ < _ → tsum _ < tsum _
will find tsum_lt_tsum even though the hypothesis f i < g i is not the last.

If you pass more than one such search filter, separated by commas Loogle will return lemmas which match all of them. The search
🔍 Real.sin, \"two\", tsum, _ * _, _ ^ _, |- _ < _ → _
would find all lemmas which mention the constants Real.sin and tsum, have \"two\" as a substring of the lemma name, include a product and a power somewhere in the type, and have a hypothesis of the form _ < _ (if there were any such lemmas). Metavariables (?a) are assigned independently in each filter."

open Lean.Parser
def unicode_turnstile := nonReservedSymbol "⊢ "
def ascii_turnstile := nonReservedSymbol "|- "

/-- The turnstyle uesd bin `#find`, unicode or ascii allowed -/
syntax turnstyle := patternIgnore(unicode_turnstile <|> ascii_turnstile)

/-- a single `#find` filter. The `term` can also be an ident or a strlit,
these are distinguished in `parseFindFilters` -/
syntax loogle_filter := (turnstyle term) <|> term

/-- The argument to `#find`, a list of filters -/
syntax loogle_filters := loogle_filter,*

open Command
/--
Search [Loogle](https://loogle.lean-lang.org/json) from within Lean. This can be used as a command, term or tactic as in the following examples. In the case of a tactic, only valid tactics are displayed.


```lean
#loogle List ?a → ?a

example := #loogle List ?a → ?a

example : 3 ≤ 5 := by
  #loogle Nat.succ_le_succ
  sorry

```

## Loogle Usage

Loogle finds definitions and lemmas in various ways:

By constant:
🔍 Real.sin
finds all lemmas whose statement somehow mentions the sine function.

By lemma name substring:
🔍 \"differ\"
finds all lemmas that have \"differ\" somewhere in their lemma name.

By subexpression:
🔍 _ * (_ ^ _)
finds all lemmas whose statements somewhere include a product where the second argument is raised to some power.

The pattern can also be non-linear, as in
🔍 Real.sqrt ?a * Real.sqrt ?a

If the pattern has parameters, they are matched in any order. Both of these will find List.map:
🔍 (?a -> ?b) -> List ?a -> List ?b
🔍 List ?a -> (?a -> ?b) -> List ?b

By main conclusion:
🔍 |- tsum _ = _ * tsum _
finds all lemmas where the conclusion (the subexpression to the right of all → and ∀) has the given shape.

As before, if the pattern has parameters, they are matched against the hypotheses of the lemma in any order; for example,
🔍 |- _ < _ → tsum _ < tsum _
will find tsum_lt_tsum even though the hypothesis f i < g i is not the last.

If you pass more than one such search filter, separated by commas Loogle will return lemmas which match all of them. The search
🔍 Real.sin, \"two\", tsum, _ * _, _ ^ _, |- _ < _ → _
would find all lemmas which mention the constants Real.sin and tsum, have \"two\" as a substring of the lemma name, include a product and a power somewhere in the type, and have a hypothesis of the form _ < _ (if there were any such lemmas). Metavariables (?a) are assigned independently in each filter.

You can modify the Loogle server URL by setting the `LEANSEARCHCLIENT_LOOGLE_API_URL` environment variable.
-/
syntax (name := loogle_cmd) "#loogle" loogle_filters  : command
@[command_elab loogle_cmd] def loogleCmdImpl : CommandElab := fun stx =>
  Command.liftTermElabM do
  match stx with
  | `(command| #loogle $args:loogle_filters) =>
    let s := (← PrettyPrinter.ppCategory ``loogle_filters args).pretty
    let result ← getLoogleQueryJson s
    match result with
    | LoogleResult.empty =>
      logInfo loogleUsage
    | LoogleResult.success xs =>
      let suggestions := xs.map SearchResult.toCommandSuggestion
      if suggestions.isEmpty then
        logWarning "Loogle search returned no results"
        logInfo loogleUsage
      else
        TryThis.addSuggestions stx suggestions (header := s!"Loogle Search Results")
    | LoogleResult.failure error suggestions? =>
      logWarning s!"Loogle search failed with error: {error}"
      logInfo loogleUsage
      match suggestions? with
      | some suggestions =>
        let suggestions : List TryThis.Suggestion :=
          suggestions.map fun s =>
            {suggestion := .string s!"#loogle {s}"}
        unless suggestions.isEmpty do
          TryThis.addSuggestions stx suggestions.toArray (header := s!"Did you maybe mean")
      | none => pure ()
  | _ => throwUnsupportedSyntax

@[inherit_doc loogle_cmd]
syntax (name := just_loogle_cmd)(priority := low) "#loogle" loogle_filters  : command
@[command_elab just_loogle_cmd] def justLoogleCmdImpl : CommandElab := fun _ => return


@[inherit_doc loogle_cmd]
syntax (name := loogle_term) "#loogle" loogle_filters  : term
@[term_elab loogle_term] def loogleTermImpl : TermElab :=
    fun stx expectedType? => do
  match stx with
  | `(#loogle $args) =>
    let s := (← PrettyPrinter.ppCategory ``loogle_filters args).pretty
    let result ← getLoogleQueryJson s
    match result with
    | LoogleResult.empty =>
      logInfo loogleUsage
    | LoogleResult.success xs =>
      let suggestions := xs.map SearchResult.toTermSuggestion
      if suggestions.isEmpty then
        logWarning "Loogle search returned no results"
        logInfo loogleUsage
      else
        TryThis.addSuggestions stx suggestions (header := s!"Loogle Search Results")

    | LoogleResult.failure error suggestions? =>
      logWarning s!"Loogle search failed with error: {error}"
      logInfo loogleUsage
      match suggestions? with
      | some suggestions =>
        let suggestions : List TryThis.Suggestion :=
          suggestions.map fun s =>
            let s := s.replace "\"" "\\\""
            {suggestion := .string s!"#loogle \"{s}\""}
        unless suggestions.isEmpty do
          TryThis.addSuggestions stx suggestions.toArray (header := s!"Did you maybe mean")
      | none => pure ()
    defaultTerm expectedType?
  | _ => throwUnsupportedSyntax

@[inherit_doc loogle_cmd]
syntax (name := loogle_tactic)
  withPosition("#loogle" (ppSpace colGt (loogle_filters)))  : tactic
@[tactic loogle_tactic] def loogleTacticImpl : Tactic :=
    fun stx => do
  match stx with
  | `(tactic|#loogle $args) =>
    let s := (← PrettyPrinter.ppCategory ``loogle_filters args).pretty
    let result ← getLoogleQueryJson s
    match result with
    | LoogleResult.empty =>
      logInfo loogleUsage
    | LoogleResult.success xs => do
      let suggestionGroups := xs.map fun sr =>
         (sr.name, sr.toTacticSuggestions)
      for (name, sg) in suggestionGroups do
        let sg ←  sg.filterM fun s =>
          let sugTxt := s.suggestion
          match sugTxt with
          | .string s => do
            let stx? := runParserCategory (← getEnv) `tactic s
            match stx? with
            | Except.ok stx =>
              let n? ← checkTactic (← getMainTarget) stx
              return n?.isSome
            | Except.error _ =>
              pure false
          | _ => pure false
        unless sg.isEmpty do
          TryThis.addSuggestions stx sg (header := s!"From: {name}")
    | LoogleResult.failure error suggestions? =>
      logWarning s!"Loogle search failed with error: {error}"
      logInfo loogleUsage
      match suggestions? with
      | some suggestions =>
        let suggestions : List TryThis.Suggestion :=
          suggestions.map fun s =>
            {suggestion := .string s!"#loogle \"{s}\""}
        unless suggestions.isEmpty do
          TryThis.addSuggestions stx suggestions.toArray (header := s!"Did you maybe mean")
      | none => pure ()
  | _ => throwUnsupportedSyntax

syntax (name := just_loogle_tactic)(priority := low) "#loogle"  : tactic
@[tactic just_loogle_tactic] def justLoogleTacticImpl : Tactic :=
  fun _ => do
    logWarning loogleUsage

example : 3 ≤ 5 := by
  -- #loogle Nat.succ_le_succ
  decide

-- example := #loogle List ?a → ?b

end LeanSearchClient

-- #loogle "sin", Real → Real, |- Real
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoogleSyntax/Variant46cfce25d8b4ad1dd9cb57518d88db16ec1aa2655d1e27f9e505cd9edf9434d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoogleSyntax/Variant46cfce25d8b4ad1dd9cb57518d88db16ec1aa2655d1e27f9e505cd9edf9434d2.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6245537746da145e4ccaf8d5c6b242f75dc579cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
