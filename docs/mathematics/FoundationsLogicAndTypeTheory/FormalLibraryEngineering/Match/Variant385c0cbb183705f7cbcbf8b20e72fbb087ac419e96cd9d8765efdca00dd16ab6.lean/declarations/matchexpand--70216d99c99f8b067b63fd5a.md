# matchExpand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fedb5e5201219bbf9cf3337fe7713b7e964e63809d3ec1bfa5032320ab2be325",
  "kind": "def",
  "lexical_name": "matchExpand",
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
  "slug": "matchexpand--70216d99c99f8b067b63fd5a",
  "source": {
    "blob": "77cab788f8bb57b45a98751c48e73d6765a23082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant385c0cbb183705f7cbcbf8b20e72fbb087ac419e96cd9d8765efdca00dd16ab6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70216d99c99f8b067b63fd5a1aa02a7abf7e2d33e0f062fef89af5ff93fd330d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant385c0cbb183705f7cbcbf8b20e72fbb087ac419e96cd9d8765efdca00dd16ab6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fedb5e5201219bbf9cf3337fe7713b7e964e63809d3ec1bfa5032320ab2be325`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def matchExpand : CommandCodeAction := fun CodeActionParams snap ctx node => do
  /- Since `match` is a term (not a command) `@[command_code_action Parser.Term.match]` will
  not fire. So we filter `command_code_action` ourselves in Step 1 for now. -/

  /- 1. Find ALL ofTermInfo Info nodes that are of kind `Term.match` -/
  let allMatchInfos := findAllInfos isMatchTerm node

  /- 2. Filter these candidates within the `RequestM` monad based on the cursor being in the
  header lines of these matches. -/
  let doc ← readDoc
  let relevantMatchInfos ← allMatchInfos.filterM fun matchInfo => do
    let some headerRangeRaw := getMatchHeaderRange? matchInfo.stx | return false
    let headerRangeLsp := doc.meta.text.utf8RangeToLspRange headerRangeRaw

    let cursorRangeLsp := CodeActionParams.range
    -- check if the cursor range is contained in the header range
    return (cursorRangeLsp.start ≥ headerRangeLsp.start && cursorRangeLsp.end ≤ headerRangeLsp.end)

  /- 3. Pick the first (and mostly only) candidate. There might sometimes be more,
  since some things are just contained multiple times in 'node'. -/
  let some matchInfo := relevantMatchInfos[0]? | return #[]
  let some headerRangeRaw := getMatchHeaderRange? matchInfo.stx | return #[]

  /- Isolate the array of match-discriminants -/
  let discrs ← match matchInfo.stx with
  | `(term| match
    $[(generalizing := $generalizingVal)]?
    $[(motive := $motiveVal)]?
    $[$discrs:matchDiscr],*
    with $_) => pure discrs
  | _ => return #[]

  /- Reduce discrs to the array of match-discriminants-terms (i.e. "[n1, n2]" in "match n2,n2"). -/
  let some discrTerms := discrs.mapM (fun discr =>
    match discr with
    | `(matchDiscr| $t: term) => some t
    | `(matchDiscr| $_:ident : $t: term) => some t
    | _ => none
    ) | return #[]

  -- Get a Bool, that tells us if "with" is already typed in:
  let withPresent :=
    (matchInfo.stx.getArgs.find? (fun s => s.isAtom && s.getAtomVal == "with")).isSome

  /- Construct a list containing for each discriminant its list of constructor names paired with
     a Bool that determines if it makes sense to use the constructor with `@`.
     The list contains the first discriminant constructors last,
     since we are prepending in the loop. -/
  let mut constructors_rev : List (List (Name × Bool)) := []
  for discrTerm in discrTerms do
    let some (info, updatedCtx) := findTermInfoWithCtx? node discrTerm ctx | return #[]
    let ty ← info.runMetaM updatedCtx (Lean.Meta.inferType info.expr)
    let .const name _ := (← info.runMetaM updatedCtx (whnf ty)).getAppFn | return #[]
    -- Find the inductive constructors of e:
    let some (.inductInfo indInfo) := snap.env.find? name | return #[]
    let ctors := indInfo.ctors
    constructors_rev :=
      (ctors.map (fun ctor => (ctor, hasImplicitNonparArg ctor snap.env)))
        :: constructors_rev

  let mkAction (title : String) (explicitArgsOnly : Bool) : LazyCodeAction :=
      let eager : Lsp.CodeAction := {
      title := title
      kind? := "quickfix"
      }
    { --rest is lightly adapted from eqnStub:
    eager
    lazy? := some do
      let holePos := headerRangeRaw.stop --where we start inserting
      let (indent, _) := findIndentAndIsStart doc.meta.text.source headerRangeRaw.start
      let mut str := if withPresent then "" else " with"

      let indent := "\n".pushn ' ' (indent) --use the same indent as the 'match' line.
      let constructor_combinations := constructors_rev.sections.map List.reverse
      for l in constructor_combinations do
        str := str ++ indent ++ "| "
        for ctor_idx in [:l.length] do
          let (ctor, existsExplicitNonparArg) := l[ctor_idx]!
          let suffix := if constructors_rev.length ≥ 2 then s!"_{ctor_idx + 1}" else ""
          let some pat :=
            patternFromConstructor ctor snap.env suffix explicitArgsOnly existsExplicitNonparArg |
              panic! "bad inductive"
          str := str ++ pat
          if ctor_idx < l.length - 1 then
            str := str ++ ", "
        str := str ++ s!" => _"
      pure { eager with
        edit? := some <|.ofTextEdit doc.versionedIdentifier {
          range := doc.meta.text.utf8RangeToLspRange ⟨holePos, holePos⟩-- adapted to insert-only
          newText := str
        }
      }
  }
  /- Show the code action with implicit arguments if at least one constructor has an implicit
     non-parameter argument. -/
  let showExplicitCodeAction := constructors_rev.any (fun l =>
    l.any (fun (_, ctor_hasImplicitNonparArg) => ctor_hasImplicitNonparArg))

  if (showExplicitCodeAction) then
    return #[mkAction "Generate a list of equations for this match." True,
             mkAction "Generate a list of equations with implicit arguments for this match." False]
  else
    return #[mkAction "Generate a list of equations for this match." True]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant385c0cbb183705f7cbcbf8b20e72fbb087ac419e96cd9d8765efdca00dd16ab6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant385c0cbb183705f7cbcbf8b20e72fbb087ac419e96cd9d8765efdca00dd16ab6.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77cab788f8bb57b45a98751c48e73d6765a23082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
