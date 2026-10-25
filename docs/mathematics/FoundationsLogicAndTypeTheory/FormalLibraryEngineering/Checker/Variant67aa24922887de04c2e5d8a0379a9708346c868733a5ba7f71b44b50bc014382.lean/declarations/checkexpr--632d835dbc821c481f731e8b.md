# checkExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e25433c428cc45bb22cdac6c5ba2452e91df4b69f4f777c204f14391355609f",
  "kind": "def",
  "lexical_name": "checkExpr",
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
  "slug": "checkexpr--632d835dbc821c481f731e8b",
  "source": {
    "blob": "6bfe759f4c1a3e2fbcf9f8da621101d6da6b3173",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variant67aa24922887de04c2e5d8a0379a9708346c868733a5ba7f71b44b50bc014382.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:632d835dbc821c481f731e8b0b1328d0cdf015c832c6869b3fb8899452f0da88",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variant67aa24922887de04c2e5d8a0379a9708346c868733a5ba7f71b44b50bc014382.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e25433c428cc45bb22cdac6c5ba2452e91df4b69f4f777c204f14391355609f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkExpr (ty : IRType) (e : Expr) : M Unit := do
  match e with
  | .pap f ys =>
    checkPartialApp f ys
    -- Partial applications should always produce a closure object.
    checkObjType ty
  | .ap x ys =>
    checkObjVar x
    checkArgs ys
    -- Applications of closures should always produce a boxed value.
    checkObjType ty
  | .fap f ys =>
    checkFullApp f ys
  | .ctor c ys =>
    if c.cidx > maxCtorTag && c.isRef then
      throwCheckerError s!"tag for constructor '{c.name}' is too big, this is a limitation of the current runtime"
    if c.size > maxCtorFields then
      throwCheckerError s!"constructor '{c.name}' has too many fields"
    if c.ssize + c.usize * usizeSize > maxCtorScalarsSize then
      throwCheckerError s!"constructor '{c.name}' has too many scalar fields"
    if c.isRef then
      checkObjType ty
      checkArgs ys
  | .reset _ x =>
    checkObjVar x
    checkObjType ty
  | .reuse x _ _ ys =>
    checkObjVar x
    checkArgs ys
    checkObjType ty
  | .box xty x =>
    checkObjType ty
    checkScalarVar x
    checkVarType x (· == xty)
  | .unbox x =>
    checkScalarType ty
    checkObjVar x
  | .proj i x =>
    let xType ← getType x;
    /-
    Projections are a valid operation on `tobject`. Thus they should also
    be a valid operation for both `object`, `tagged` and unboxed values
    as they are subtypes.
    -/
    match xType with
    | .object | .tobject =>
      checkObjType ty
    | .struct _ tys | .union _ tys =>
      if h : i < tys.size then
        checkEqTypes (tys[i]) ty
      else
        throwCheckerError "invalid proj index"
    | .tagged => pure ()
    | _ => throwCheckerError s!"unexpected IR type '{xType}'"
  | .uproj _ x =>
    checkObjVar x
    checkType ty (· == .usize)
  | .sproj _ _ x =>
    checkObjVar x
    checkScalarType ty
  | .isShared x =>
    checkObjVar x
    checkType ty (· == .uint8)
  | .lit (LitVal.str _) =>
    checkObjType ty
  | .lit _ => pure ()

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variant67aa24922887de04c2e5d8a0379a9708346c868733a5ba7f71b44b50bc014382.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variant67aa24922887de04c2e5d8a0379a9708346c868733a5ba7f71b44b50bc014382.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bfe759f4c1a3e2fbcf9f8da621101d6da6b3173` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
