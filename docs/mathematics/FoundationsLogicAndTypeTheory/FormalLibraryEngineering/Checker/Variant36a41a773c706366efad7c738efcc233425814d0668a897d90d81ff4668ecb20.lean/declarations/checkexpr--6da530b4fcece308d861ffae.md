# checkExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a98b9193d7831dea89cb7e32eaac052ad79333ab2c257c295584d2b6a64b09ce",
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
  "slug": "checkexpr--6da530b4fcece308d861ffae",
  "source": {
    "blob": "0f050fe636acdf43756b07dd795e42a7e6d79577",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variant36a41a773c706366efad7c738efcc233425814d0668a897d90d81ff4668ecb20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6da530b4fcece308d861ffae88c1984cdfc6a09d2c5b0e27b9c35aab9efa6333",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variant36a41a773c706366efad7c738efcc233425814d0668a897d90d81ff4668ecb20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a98b9193d7831dea89cb7e32eaac052ad79333ab2c257c295584d2b6a64b09ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–197.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variant36a41a773c706366efad7c738efcc233425814d0668a897d90d81ff4668ecb20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Checker/Variant36a41a773c706366efad7c738efcc233425814d0668a897d90d81ff4668ecb20.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f050fe636acdf43756b07dd795e42a7e6d79577` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
