# gcongrBackward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5149ffbbe598cd5878476547600b0dd6de2e4703d9d91c45f8a80ad20ddd2809",
  "kind": "def",
  "lexical_name": "gcongrBackward",
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
  "slug": "gcongrbackward--5847a8c787dd773702c4e1c1",
  "source": {
    "blob": "cce4506a662515d32779db5f6e07114be994c861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variant454a94a807c7e4196d21feadcc179a2b8ed2c54a87845e48723b9e0ac6110fa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5847a8c787dd773702c4e1c143a19ce33873af815ecd5adbbb8f46b5618cd0d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variant454a94a807c7e4196d21feadcc179a2b8ed2c54a87845e48723b9e0ac6110fa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5149ffbbe598cd5878476547600b0dd6de2e4703d9d91c45f8a80ad20ddd2809`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def gcongrBackward (relName : Name) (relation : Expr) (symm : Bool) :
    MetaM (Array GrwPos) := do
  let type ← inferType relation
  let α ← mkFreshTypeMVar
  unless ← isDefEq type (.forallE `_ α (.forallE `_ α (.sort 0) .default) .default) do
    throwError "invalid relation {relation}"
  let α ← instantiateMVars α
  let u ← getDecLevel α
  withLocalDeclD `a α fun a ↦ do
  withLocalDeclD `b α fun b ↦ do
  withNewMCtxDepth do
  let mut result : Array GrwPos := #[]
  -- Any relation `r` can be proved from `AntisymmRel r`, so we add this as a possible relation
  if (← getEnv).contains `AntisymmRel then
    let antiSymm := mkApp2 (.const `AntisymmRel [u]) α relation
    result := result.push { relName := `AntisymmRel, relation := antiSymm, symm? := none }
  -- If `relName` is symmetric, then include the reverse as a possible relation (`symm? := none`)
  let symm? ← try
    let dummyVar ← mkFreshExprMVar (mkApp2 relation a b)
    if let mkApp2 relation' b' a' ← inferType (← dummyVar.applySymm) then
      if relation' == relation && b == b' && a == a' then
        pure none
      else
        pure symm
    else
      pure symm
    catch _ => pure symm
  result := result.push { relName, relation, symm? }
  -- For `≤`, we add the relation `<`.
  if relName == ``LE.le then
    if (← getEnv).contains `le_of_lt then
      let (mvars, _, le) ←
        forallMetaTelescope (← inferType (← mkConstWithFreshMVarLevels `le_of_lt))
      if ← isDefEq le.appFn!.appFn! relation then
        let lt ← instantiateMVars (← inferType mvars.back!).appFn!.appFn!
        result := result.push { relName := ``LT.lt, relation := lt, symm? := symm }
  return result

/-- This function is passed to `MVarId.gcongr` as the main discharger.
It doesn't try to prove the goal, but instead observes what the goal is,
to help determine which lemmas could work with `grw`.

If the selected grewrite position is valid, then `ref` is set, and a dummy error is thrown.
Note that this function will be called at most once,
so we don't lose information by throwing an error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variant454a94a807c7e4196d21feadcc179a2b8ed2c54a87845e48723b9e0ac6110fa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variant454a94a807c7e4196d21feadcc179a2b8ed2c54a87845e48723b9e0ac6110fa2.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cce4506a662515d32779db5f6e07114be994c861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
