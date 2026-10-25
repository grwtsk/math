# elabDoMatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ef31f6aa28e8bb1471b2eaf43ba4b399213787632196567af5811e8fdd75ca2",
  "kind": "def",
  "lexical_name": "elabDoMatch",
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
  "slug": "elabdomatch--9fcace42d881706d90b489d4",
  "source": {
    "blob": "249e89b55de88b1457acca3fa26ce85855f4cf7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 236,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fcace42d881706d90b489d47d70a4888c1560a3d8143f3e0915ebea46cccd43",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ef31f6aa28e8bb1471b2eaf43ba4b399213787632196567af5811e8fdd75ca2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_doElem_elab Lean.Parser.Term.doMatch] partial def elabDoMatch : DoElab := fun stx dec => do
  let `(doMatch| match $[(dependent := $dep)]? $[(generalizing := $gen?)]? $(motive?)? $discrs,* with $alts:matchAlt*) := stx | throwUnsupportedSyntax

  -- Expand alts
  if let some stxNew ← liftMacroM <| Term.expandMatchAlts? stx then
    return ← Term.withMacroExpansion stx stxNew <| elabDoElem ⟨stxNew⟩ dec

  -- Expand non-atomic discriminants for independent elaboration problems
  if let some discrs ← expandNonAtomicDiscrs? discrs then
    let newStx ← `(doElem| match $[(generalizing := $gen?)]? $(motive?)? $discrs,* with $alts:matchAlt*)
    -- We use `mkSaveInfoAnnotation` to make sure the info trees for the discriminants are saved
    -- even if the inner match elaboration is postponed (returning a metavariable).
    -- Without this, `withTermInfoContext'` in `elabDoElemFns` would discard the subtrees
    -- containing TermInfo for variable references in the discriminants.
    return Term.mkSaveInfoAnnotation (← Term.withMacroExpansion stx newStx <| elabDoElem ⟨newStx⟩ dec)

  -- Expand simple matches to `let`
  if let `(matchAltExpr| | $y:ident => $seq) := alts.getD 0 ⟨.missing⟩ then
    if let `(matchDiscr| $discr:term) := discrs.getElems.getD 0 ⟨.missing⟩ then
      if alts.size == 1 && (← Term.isPatternVar y) then
        let newStx ← `(doSeq| let $y:ident := $discr; do $(⟨seq⟩))
        return ← Term.withMacroExpansion stx newStx <| elabDoSeq ⟨newStx⟩ dec

  -- Expand syntax_match to a term match. This is OK because it is never dependent.
  if isSyntaxMatch alts then
    return ← expandToTermMatch stx dec

  -- If the user has explicitly requested a dependent match, we expand to a term match as well.
  if dep.getD ⟨.missing⟩ matches `(trueVal| true) then
    return ← expandToTermMatch stx dec

  if let some stx := motive? then
    throwErrorAt stx "The `do` elaborator does not support custom motives.\nIf you want a dependent match, try `(dependent := true)`.\nIf you want to provide an expected type, do so via type ascription on the bind."
  if let some stx := gen? then
    throwErrorAt stx "The `do` elaborator does not support dependent matches and generalization by default. Try `(dependent := true)`."

  checkMutVarsForShadowing (← getAltsPatternVars alts)
  elabDoMatchCore discrs (alts.filterMap (Term.getMatchAlt ``doSeq)) dec
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantb42beb2008d88b3cb9ff48b19ba67864db932fb4eb33e93ae65d3b0e192d7c22.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `249e89b55de88b1457acca3fa26ce85855f4cf7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
