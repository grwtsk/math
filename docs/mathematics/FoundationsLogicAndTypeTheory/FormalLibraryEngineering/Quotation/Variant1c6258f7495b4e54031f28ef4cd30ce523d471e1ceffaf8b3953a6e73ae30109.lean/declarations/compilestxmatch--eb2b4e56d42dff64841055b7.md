# compileStxMatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f64a7367a3291837240c496051efe48f544b603188f2d809c311f4e283e2211b",
  "kind": "def",
  "lexical_name": "compileStxMatch",
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
  "slug": "compilestxmatch--eb2b4e56d42dff64841055b7",
  "source": {
    "blob": "f853dd6ab2d659731df0875f0159b3e57c6c13b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 606,
    "line": 554,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variant1c6258f7495b4e54031f28ef4cd30ce523d471e1ceffaf8b3953a6e73ae30109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb2b4e56d42dff64841055b7c7b38e9ad6dfa11558aa0ed0fa7610867064191b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variant1c6258f7495b4e54031f28ef4cd30ce523d471e1ceffaf8b3953a6e73ae30109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f64a7367a3291837240c496051efe48f544b603188f2d809c311f4e283e2211b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def compileStxMatch (discrs : List Term) (alts : List Alt) : TermElabM Syntax := do
  trace[Elab.match_syntax] "match {discrs} with {alts}"
  match discrs, alts with
  | [],            ([], rhs)::_ => pure rhs  -- nothing left to match
  | _,             []           =>
   logError "non-exhaustive 'match' (syntax)"
   pure Syntax.missing
  | discr::discrs, alt::alts    => do
    let info ← getHeadInfo alt
    let alts := (info.onMatch info.check, alt) :: (← alts.mapM fun alt =>
      return ((← getHeadInfo alt).onMatch info.check, alt))
    let mut yesAlts           := #[]
    let mut undecidedAlts     := #[]
    let mut nonExhaustiveAlts := #[]
    let mut floatedLetDecls   := #[]
    for (x, alt') in alts do
      let mut alt' := alt'
      trace[Elab.match_syntax.onMatch] "{alt'} ~> {repr x}"
      match x with
      | covered f exh =>
        -- we can only factor out a common check if there are no undecided patterns in between;
        -- otherwise we would change the order of alternatives
        if undecidedAlts.isEmpty then
          yesAlts ← yesAlts.push <$> f (alt'.1.tail!, alt'.2)
          if !exh then
            nonExhaustiveAlts := nonExhaustiveAlts.push alt'
        else
          (floatedLetDecls, alt') ← deduplicate floatedLetDecls alt'
          undecidedAlts := undecidedAlts.push alt'
          nonExhaustiveAlts := nonExhaustiveAlts.push alt'
      | undecided =>
        (floatedLetDecls, alt') ← deduplicate floatedLetDecls alt'
        undecidedAlts := undecidedAlts.push alt'
        nonExhaustiveAlts := nonExhaustiveAlts.push alt'
      | uncovered =>
        nonExhaustiveAlts := nonExhaustiveAlts.push alt'
    let mut stx ← info.doMatch
      (yes := fun newDiscrs => do
        let mut yesAlts := yesAlts
        if !undecidedAlts.isEmpty then
          -- group undecided alternatives in a new default case `| discr2, ... => match discr, discr2, ... with ...`
          let vars ← discrs.mapM fun _ => withFreshMacroScope `(__discr)
          let pats := List.replicate newDiscrs.length (Unhygienic.run `(_)) ++ vars
          let alts ← undecidedAlts.mapM fun alt => `(matchAltExpr| | $(alt.1.toArray),* => no_error_if_unused% $(alt.2))
          let rhs  ← `(match __discr, $[$(vars.toArray):term],* with $alts:matchAlt*)
          yesAlts := yesAlts.push (pats, rhs)
        withFreshMacroScope $ compileStxMatch (newDiscrs ++ discrs) yesAlts.toList)
      (no := withFreshMacroScope $ compileStxMatch (discr::discrs) nonExhaustiveAlts.toList)
    for d in floatedLetDecls do
      stx ← `(let_delayed $d:letDecl; $stx)
    `(have __discr := $discr; $stx)
  | _, _ => unreachable!

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variant1c6258f7495b4e54031f28ef4cd30ce523d471e1ceffaf8b3953a6e73ae30109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variant1c6258f7495b4e54031f28ef4cd30ce523d471e1ceffaf8b3953a6e73ae30109.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f853dd6ab2d659731df0875f0159b3e57c6c13b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
