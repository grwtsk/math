# mkEMatchTheoremAndSuggest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b2520fdba33d50a06436ef6aded64969cd0963c7a9a86d1f443328a931ef6a8",
  "kind": "def",
  "lexical_name": "mkEMatchTheoremAndSuggest",
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
  "slug": "mkematchtheoremandsuggest--ac56e18591b5b3f16e312001",
  "source": {
    "blob": "654387b687c2b34418a7dd62aa266d893b498135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1615,
    "line": 1559,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac56e18591b5b3f16e312001cfd9b813d4168e47ae24608841d878b8b723f6ab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b2520fdba33d50a06436ef6aded64969cd0963c7a9a86d1f443328a931ef6a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1559–1615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkEMatchTheoremAndSuggest (ref : Syntax) (declName : Name) (prios : SymbolPriorities)
    (minIndexable : Bool) (isParam : Bool := false) : MetaM EMatchTheorem := do
  let tryModifier (thmKind : EMatchTheoremKind) (minIndexable : MinIndexableMode) : SelectM Unit := do
    try
      match minIndexable with
      | .yes =>
        let thm ← mkEMatchTheoremForDecl declName thmKind prios (showInfo := false) (minIndexable := true)
        save ref thm (minIndexable := true) (isParam := isParam)
      | .no =>
        let thm ← mkEMatchTheoremForDecl declName thmKind prios (showInfo := false) (minIndexable := false)
        save ref thm (minIndexable := false) (isParam := isParam)
      | .both =>
        let thm₁ ← mkEMatchTheoremForDecl declName thmKind prios (showInfo := false) (minIndexable := true)
        let thm₂ ← mkEMatchTheoremForDecl declName thmKind prios (showInfo := false) (minIndexable := false)
        if thm₁.patterns == thm₂.patterns then
          -- If both produce the same pattern, we save only `minIndexable := false` since it is more compact
          save ref thm₂ (minIndexable := false) (isParam := isParam)
        else
          save ref thm₁ (minIndexable := true) (isParam := isParam)
          save ref thm₂ (minIndexable := false) (isParam := isParam)
    catch _ =>
      return ()
  let searchCore (minIndexable : MinIndexableMode) : SelectM Unit := do
    tryModifier (.default false) minIndexable
    tryModifier (.bwd false) minIndexable
    tryModifier .fwd minIndexable
    tryModifier .rightLeft minIndexable
    tryModifier .leftRight minIndexable
  let search : SelectM Unit := do
    if minIndexable then
      searchCore .yes
    else if isParam then
      searchCore .both
      tryModifier (.eqLhs false) .no
      tryModifier (.eqRhs false) .no
    else
      tryModifier (.eqLhs false) .no
      tryModifier (.eqRhs false) .no
      searchCore .no
      searchCore .yes
  let (_, s) ← search.run {}
  if h₁ : 0 < s.thms.size then
    if !isParam || grind.param.codeAction.get (← getOptions) then
      if s.suggestions.size == 1 then
        Tactic.TryThis.addSuggestion ref s.suggestions[0]!
      else
        Tactic.TryThis.addSuggestions ref s.suggestions
    return s.thms[0]
  else
    throwError "invalid `grind` theorem, failed to find an usable pattern using different modifiers"

/--
Tries different modifiers, logs info messages with modifiers that worked, but stores just the first one that worked.

Remark: if `backward.grind.inferPattern` is `true`, then `.default false` is used.
The parameter `showInfo` is only taken into account when `backward.grind.inferPattern` is `true`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean#L1559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `654387b687c2b34418a7dd62aa266d893b498135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
