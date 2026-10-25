# mkCtorHeader

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8caebf8ce335db4fca5c397ccd45030c726940229d1772b89283a9bc152c4ca",
  "kind": "def",
  "lexical_name": "mkCtorHeader",
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
  "slug": "mkctorheader--130d5990d51ea9c605a6a201",
  "source": {
    "blob": "a8d89a25282acd94a5769cecd00572cb209ef82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 407,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:130d5990d51ea9c605a6a20126d0761bfefb5279fce709a95e74f31e9340a98f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8caebf8ce335db4fca5c397ccd45030c726940229d1772b89283a9bc152c4ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkCtorHeader (ctorVal : ConstructorVal) (structureType? : Option Expr) : TermElabM CtorHeaderResult := do
  let flatCtorName := mkFlatCtorOfStructCtorName ctorVal.name
  let cinfo ← getConstInfo flatCtorName
  let us ← mkFreshLevelMVars ctorVal.levelParams.length
  let mut type ← instantiateTypeLevelParams cinfo.toConstantVal us
  let mut params : Array Expr := #[]
  let mut instMVars : Array MVarId := #[]
  for _ in *...ctorVal.numParams do
    let .forallE _ d b bi := type
      | throwError "unexpected constructor type"
    let d := d.instantiateBetaRevRange 0 params.size params
    let param ←
      if bi.isInstImplicit then
        let mvar ← mkFreshExprMVar d .synthetic
        instMVars := instMVars.push mvar.mvarId!
        pure mvar
      else
        mkFreshExprMVar d
    params := params.push param
    type := b
  type := type.instantiateBetaRevRange 0 params.size params
  let structType := mkAppN (.const ctorVal.induct us) params
  if let some structureType := structureType? then
    discard <| isDefEq structureType structType
  let val ← instantiateValueLevelParams cinfo us
  let val := val.beta params
  synthesizeAppInstMVars instMVars val
  return { ctorFn := val, ctorFnType := type, structType, levels := us, params }

/--
Normalizes the head of the LHS of the `FieldView` in the following ways:
- Replaces numeric index field LHS's with the corresponding named field.
  If this is a subobject field, continues normalizing it.
- Consumes nonterminal parent projections, e.g. `toA.x` becomes `x`. Throws an error if `A` does not have an `x` field.

Assumes field names are already atomic, having been split by `toFieldLHS`.

Normalization is not done for the entire LHS; only the head of each field LHS is normalized.

Validates that fields are indeed fields, and adds completion info.
On validation errors, errors are logged and the corresponding fields are omitted.

Assumed invariant: parent projections and field names are disjoint sets. This is validated in the `structure` elaborator.

Resulting invariant: the field has a LHS that has one of these forms:
- `.fieldName .. :: _`
- `[.parentFieldName ..]`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d89a25282acd94a5769cecd00572cb209ef82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
