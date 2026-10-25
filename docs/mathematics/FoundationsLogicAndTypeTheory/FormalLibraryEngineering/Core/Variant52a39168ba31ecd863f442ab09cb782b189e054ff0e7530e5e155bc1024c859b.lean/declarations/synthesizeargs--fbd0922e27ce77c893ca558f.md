# synthesizeArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bab2c6e41e811483928dbc253537faf01bf537cf38b25327fe1c6bf84640ae10",
  "kind": "def",
  "lexical_name": "synthesizeArgs",
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
  "slug": "synthesizeargs--fbd0922e27ce77c893ca558f",
  "source": {
    "blob": "a50a61593417cfd20fd28234cbd4fdc07a8ef543",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbd0922e27ce77c893ca558fdbc494a38dde97e63001636e4a266a11f16bd6a2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bab2c6e41e811483928dbc253537faf01bf537cf38b25327fe1c6bf84640ae10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def synthesizeArgs (thmId : Origin) (xs : Array Expr)
    (funProp : Expr → FunPropM (Option Result)) :
    FunPropM Bool := do
  let mut postponed : Array Expr := #[]
  for x in xs do
    let type ← inferType x
    if (← instantiateMVars x).isMVar then

      -- try type class
      if (← isClass? type).isSome then
        if (← synthesizeInstance thmId x type) then
          continue
      else if (← isFunProp type.getForallBody) then
        -- try function property
        if let .some ⟨proof⟩ ← funProp type then
          if (← isDefEq x proof) then
            continue
          else do
            trace[Meta.Tactic.fun_prop]
              "{← ppOrigin thmId}, failed to assign proof{indentExpr type}"
            return false
      else
        -- try user provided discharger
        let ctx : Context ← read
        if (← isProp type) then
          if let .some proof ← ctx.disch type then
            if (← isDefEq x proof) then
              continue
            else do
              trace[Meta.Tactic.fun_prop]
                "{← ppOrigin thmId}, failed to assign proof{indentExpr type}"
              return false
          else
            logError s!"Failed to prove necessary assumption `{← ppExpr type}` \
                        when applying theorem `{← ppOrigin' thmId}`."

      if ¬(← isProp type) then
        postponed := postponed.push x
        continue
      else
        trace[Meta.Tactic.fun_prop]
          "{← ppOrigin thmId}, failed to discharge hypotheses{indentExpr type}"
        return false

  for x in postponed do
    if (← instantiateMVars x).isMVar then
      logError s!"Failed to infer `({← ppExpr x} : {← ppExpr (← inferType x)})` \
      when applying theorem `{← ppOrigin' thmId}`."

      trace[Meta.Tactic.fun_prop]
        "{← ppOrigin thmId}, failed to infer `({← ppExpr x} : {← ppExpr (← inferType x)})`"
      return false

  return true


/-- Try to apply theorem - core function -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant52a39168ba31ecd863f442ab09cb782b189e054ff0e7530e5e155bc1024c859b.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a50a61593417cfd20fd28234cbd4fdc07a8ef543` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
