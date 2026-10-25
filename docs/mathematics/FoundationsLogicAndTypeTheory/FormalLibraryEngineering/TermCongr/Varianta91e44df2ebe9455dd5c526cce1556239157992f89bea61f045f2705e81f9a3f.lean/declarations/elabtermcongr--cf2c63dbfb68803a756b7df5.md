# elabTermCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7543a17cf6a57f4d492661d5c6be4d0d9008b143fa38ef633db3599ca6f65a75",
  "kind": "def",
  "lexical_name": "elabTermCongr",
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
  "slug": "elabtermcongr--cf2c63dbfb68803a756b7df5",
  "source": {
    "blob": "0623f8b1fc5d36eb06aa5771519f24d226b99e21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 749,
    "line": 712,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Varianta91e44df2ebe9455dd5c526cce1556239157992f89bea61f045f2705e81f9a3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf2c63dbfb68803a756b7df5e9c1c18dc4176dec3ddcda6e046852c4b061cec6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Varianta91e44df2ebe9455dd5c526cce1556239157992f89bea61f045f2705e81f9a3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7543a17cf6a57f4d492661d5c6be4d0d9008b143fa38ef633db3599ca6f65a75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 712–749.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabTermCongr : Term.TermElab := fun stx expectedType? => do
  match stx with
  | `(congr($t)) =>
    -- Save the current mvarCounter so that we know which cHoles are for this congr quotation.
    let mvarCounterSaved := (← getMCtx).mvarCounter
    -- Case 1: There is an expected type and it's obviously an Iff/Eq/HEq.
    if let some expectedType := expectedType? then
      if let some (expLhsTy, expLhs, expRhsTy, expRhs) := (← whnf expectedType).sides? then
        let lhs ← elaboratePattern t expLhsTy true
        let rhs ← elaboratePattern t expRhsTy false
        -- Note: these defeq checks can leak congruence holes.
        unless ← isDefEq expLhs lhs do
          throwError "Left-hand side of elaborated pattern{indentD lhs}\n\
            is not definitionally equal to left-hand side of expected type{indentD expectedType}"
        unless ← isDefEq expRhs rhs do
          throwError "Right-hand side of elaborated pattern{indentD rhs}\n\
            is not definitionally equal to right-hand side of expected type{indentD expectedType}"
        Term.synthesizeSyntheticMVars (postpone := .yes)
        let res ← mkCongrOf 0 mvarCounterSaved lhs rhs
        let expectedType' ← whnf expectedType
        let pf ← if expectedType'.iff?.isSome then res.iff
                  else if expectedType'.isEq then res.eq
                  else if expectedType'.isHEq then res.heq
                  else panic! "unreachable case, sides? guarantees Iff, Eq, and HEq"
        return ← mkExpectedTypeHint pf expectedType
    -- Case 2: No expected type or it's not obviously Iff/Eq/HEq. We generate an Eq.
    let lhs ← elaboratePattern t none true
    let rhs ← elaboratePattern t none false
    Term.synthesizeSyntheticMVars (postpone := .yes)
    let res ← mkCongrOf 0 mvarCounterSaved lhs rhs
    let pf ← res.eq
    let ty ← mkEq res.lhs res.rhs
    mkExpectedTypeHint pf ty
  | _ => throwUnsupportedSyntax

end TermCongr

end Mathlib.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Varianta91e44df2ebe9455dd5c526cce1556239157992f89bea61f045f2705e81f9a3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Varianta91e44df2ebe9455dd5c526cce1556239157992f89bea61f045f2705e81f9a3f.lean#L712).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0623f8b1fc5d36eb06aa5771519f24d226b99e21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
