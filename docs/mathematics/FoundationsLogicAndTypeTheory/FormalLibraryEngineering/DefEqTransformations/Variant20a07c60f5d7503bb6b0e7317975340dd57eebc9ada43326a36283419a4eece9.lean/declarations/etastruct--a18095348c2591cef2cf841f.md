# etaStruct?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52479195a8ddbc4ee67b35d07269c84d71e526897420fd2fd7fa52c3282a48cc",
  "kind": "def",
  "lexical_name": "etaStruct?",
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
  "slug": "etastruct--a18095348c2591cef2cf841f",
  "source": {
    "blob": "4e5b29ae508f224719a35532a1dc99a4953ddf53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 237,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant20a07c60f5d7503bb6b0e7317975340dd57eebc9ada43326a36283419a4eece9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a18095348c2591cef2cf841f9ca2a9059d7ae386f580409b84bd98a945e889e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant20a07c60f5d7503bb6b0e7317975340dd57eebc9ada43326a36283419a4eece9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52479195a8ddbc4ee67b35d07269c84d71e526897420fd2fd7fa52c3282a48cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def etaStruct? (e : Expr) (tryWhnfR : Bool := true) : MetaM (Option Expr) := do
  let .const f _ := e.getAppFn | return none
  let some (ConstantInfo.ctorInfo fVal) := (← getEnv).find? f | return none
  unless 0 < fVal.numFields && e.getAppNumArgs == fVal.numParams + fVal.numFields do return none
  unless isStructureLike (← getEnv) fVal.induct do return none
  let args := e.getAppArgs
  let mut x? ← findProj fVal args pure
  if tryWhnfR then
    if let .undef := x? then
      x? ← findProj fVal args whnfR
  if let .some x := x? then
    -- Rely on eta for structures to make the check:
    if ← isDefEq x e then
      return x
  return none
where
  /-- Check to see if there's an argument at some index `i`
  such that it's the `i`th projection of a some expression.
  Returns the expression. -/
  findProj (fVal : ConstructorVal) (args : Array Expr) (m : Expr → MetaM Expr) :
      MetaM (LOption Expr) := do
    for i in [0 : fVal.numFields] do
      let arg ← m args[fVal.numParams + i]!
      let some (S, j, x) ← getProjectedExpr arg | continue
      if S == fVal.induct && i == j then
        return .some x
      else
        -- Then the eta rule can't apply since there's an obviously wrong projection
        return .none
    return .undef

/-- Finds all occurrences of expressions of the form `S.mk x.1 ... x.n` where `S.mk`
is a structure constructor and replaces them by `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant20a07c60f5d7503bb6b0e7317975340dd57eebc9ada43326a36283419a4eece9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant20a07c60f5d7503bb6b0e7317975340dd57eebc9ada43326a36283419a4eece9.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e5b29ae508f224719a35532a1dc99a4953ddf53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
