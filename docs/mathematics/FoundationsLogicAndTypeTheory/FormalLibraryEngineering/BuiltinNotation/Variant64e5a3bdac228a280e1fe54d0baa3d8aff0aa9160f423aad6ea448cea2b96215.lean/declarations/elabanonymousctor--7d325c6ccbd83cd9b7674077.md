# elabAnonymousCtor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a2a97ea30fa735fbdcf1553ad606cd96f082d9d701245c3a112fe2aa0308752",
  "kind": "def",
  "lexical_name": "elabAnonymousCtor",
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
  "slug": "elabanonymousctor--7d325c6ccbd83cd9b7674077",
  "source": {
    "blob": "93ccf3f0a584d0877fb3442500c1b7e37083fe83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variant64e5a3bdac228a280e1fe54d0baa3d8aff0aa9160f423aad6ea448cea2b96215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d325c6ccbd83cd9b7674077d71388d538b16875036cca6f8fb3a49268c2604c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variant64e5a3bdac228a280e1fe54d0baa3d8aff0aa9160f423aad6ea448cea2b96215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a2a97ea30fa735fbdcf1553ad606cd96f082d9d701245c3a112fe2aa0308752`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_term_elab anonymousCtor] def elabAnonymousCtor : TermElab := fun stx expectedType? =>
  match stx with
  | `(⟨$args,*⟩) => do
    tryPostponeIfNoneOrMVar expectedType?
    let throwExpTypeUnknown {α} : TermElabM α :=
      throwError "Invalid `⟨...⟩` notation: The expected type of this term could not be determined"
    let usageNote := .note m!"\
      This notation can only be used when the expected type is an inductive type with a single constructor"
    match expectedType? with
    | some expectedType =>
      let expectedType ← whnf expectedType
      if expectedType.getAppFn.isMVar then throwExpTypeUnknown
      matchConstInduct expectedType.getAppFn
        (fun _ => throwError m!"Invalid `⟨...⟩` notation: The expected type{inlineExpr expectedType}is not an inductive type"
                    ++ usageNote)
        (fun ival _ => do
          match ival.ctors with
          | [ctor] =>
            if (← isInaccessiblePrivateName ctor) then
              throwError "Invalid `⟨...⟩` notation: Constructor for `{ival.name}` is marked as private"
            let cinfo ← getConstInfoCtor ctor
            let numExplicitFields ← forallTelescopeReducing cinfo.type fun xs _ => do
              let mut n := 0
              for h : i in cinfo.numParams...xs.size do
                if (← getFVarLocalDecl xs[i]).binderInfo.isExplicit then
                  n := n + 1
              return n
            let mut args := args.getElems
            if args.size < numExplicitFields then
              let fieldsStr := if numExplicitFields == 1 then "fields" else "field"
              let providedStr :=
                if args.size == 0 then "none were"
                else if args.size == 1 then "only 1 was"
                else s!"only {args.size} were"
              let errMsg := m!"Insufficient number of fields for `⟨...⟩` constructor: Constructor \
                `{ctor}` has {numExplicitFields} explicit {fieldsStr}, but {providedStr} provided"
              if (← read).errToSorry then
                logError errMsg
              else
                throwError errMsg
              for _ in args.size...numExplicitFields do
                let s ← mkLabeledSorry (← mkFreshTypeMVar) (synthetic := true) (unique := false)
                args := args.push <| ← exprToSyntax s
            let newStx ← if args.size == numExplicitFields then
              `($(mkCIdentFrom stx ctor (canonical := true)) $(args)*)
            else if numExplicitFields == 0 then
              throwError "Insufficient number of fields for `⟨...⟩` constructor: Constructor \
                `{ctor}` does not have explicit fields, but {args.size} \
                {if args.size == 1 then "was" else "were"} provided"
            else
              let extra := args[(numExplicitFields-1)...args.size]
              let newLast ← `(⟨$[$extra],*⟩)
              let newArgs := args[*...(numExplicitFields-1)].toArray.push newLast
              `($(mkCIdentFrom stx ctor (canonical := true)) $(newArgs)*)
            withMacroExpansion stx newStx $ elabTerm newStx expectedType?
          | [] => throwError "Invalid `⟨...⟩` notation: The expected type{inlineExpr expectedType}has no constructors"
          | _ => throwError m!"Invalid `⟨...⟩` notation: The expected type{inlineExpr expectedType}has more than one constructor"
                  ++ usageNote)
    | none => throwExpTypeUnknown
  | _ => throwUnsupportedSyntax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variant64e5a3bdac228a280e1fe54d0baa3d8aff0aa9160f423aad6ea448cea2b96215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variant64e5a3bdac228a280e1fe54d0baa3d8aff0aa9160f423aad6ea448cea2b96215.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93ccf3f0a584d0877fb3442500c1b7e37083fe83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
