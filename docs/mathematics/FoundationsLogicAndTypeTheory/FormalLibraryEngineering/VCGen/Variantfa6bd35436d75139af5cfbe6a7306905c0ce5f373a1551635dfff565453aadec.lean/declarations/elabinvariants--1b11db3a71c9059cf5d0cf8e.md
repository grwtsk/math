# elabInvariants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:730637bcebd096bab3d38ada86b19d5709bb8774cc9375cb82f3d2a7f7661416",
  "kind": "def",
  "lexical_name": "elabInvariants",
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
  "slug": "elabinvariants--1b11db3a71c9059cf5d0cf8e",
  "source": {
    "blob": "9f6d4959639a2c0ff8bdee31dec50bd8aba8af20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 355,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b11db3a71c9059cf5d0cf8ecd6cdf1be90c66db80b9b44baf243c2349dbc7a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:730637bcebd096bab3d38ada86b19d5709bb8774cc9375cb82f3d2a7f7661416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabInvariants (stx : Syntax) (invariants : Array MVarId) (suggestInvariant : MVarId → TacticM Term) : TacticM Unit := do
  let some stx := stx.getOptional? | return ()
  let stx : TSyntax ``invariantAlts := ⟨stx⟩
  withRef stx do
  match stx with
  | `(invariantAlts| $invariantsKW $alts*) =>
    let invariants ← invariants.filterM (not <$> ·.isAssigned)

    let mut dotOrCase := LBool.undef -- .true => dot
    for h : n in 0...alts.size do
      let alt := alts[n]
      match alt with
      | `(invariantDotAlt| · $rhs) =>
        if dotOrCase matches .false then
          logErrorAt alt m!"Alternation between labelled and bulleted invariants is not supported."
          break
        dotOrCase := .true
        let some mv := invariants[n]? | do
          logErrorAt alt m!"More invariants have been defined ({alts.size}) than there were unassigned invariants goals `inv<n>` ({invariants.size})."
          continue
        withRef rhs do
        discard <| evalTacticAt (← `(tactic| exact $rhs)) mv
      | `(invariantCaseAlt| | $tag $args* => $rhs) =>
        if dotOrCase matches .true then
          logErrorAt alt m!"Alternation between labelled and bulleted invariants is not supported."
          break
        dotOrCase := .false
        let n? : Option Nat := do
            let `(binderIdent| $tag:ident) := tag | some n -- fall back to ordinal
            let .str .anonymous s := tag.getId | none
            s.dropPrefix? "inv" >>= String.Slice.toNat?
        let some mv := do invariants[(← n?) - 1]? | do
          logErrorAt alt m!"No invariant with label {tag} {repr tag}."
          continue
        if ← mv.isAssigned then
          logErrorAt alt m!"Invariant {n?.get!} is already assigned."
          continue
        withRef rhs do
        discard <| evalTacticAt (← `(tactic| rename_i $args*; exact $rhs)) mv
      | _ => logErrorAt alt m!"Expected `invariantDotAlt`, got {alt}"

    if let `(invariantsKW| invariants) := invariantsKW then
      if alts.size < invariants.size then
        let missingTypes ← invariants[alts.size:].toArray.mapM (·.getType)
        throwErrorAt stx m!"Lacking definitions for the following invariants.\n{toMessageList missingTypes}"
    else
      -- Otherwise, we have `invariants?`. Suggest missing invariants.
      let mut suggestions := #[]
      for i in 0...invariants.size do
        let mv := invariants[i]!
        if ← mv.isAssigned then
          continue
        -- A failing suggestion (e.g. an invariant shape the analysis does not understand)
        -- degrades to "no suggestion" rather than failing the tactic.
        let invariant? ← try some <$> suggestInvariant mv catch _ => pure none
        if let some invariant := invariant? then
          suggestions := suggestions.push (← `(invariantDotAlt| · $invariant))
      let alts' := alts ++ suggestions
      let stx' ← `(invariantAlts|invariants $alts'*)
      if suggestions.size > 0 then
        Lean.Meta.Tactic.TryThis.addSuggestion stx stx'
      else
        logInfoAt stx m!"There were no suggestions for missing invariants."
  | _ => logErrorAt stx m!"Expected invariantAlts, got {stx}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f6d4959639a2c0ff8bdee31dec50bd8aba8af20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
