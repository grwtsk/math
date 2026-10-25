# isExprDefEqExpensive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc9b28221fe63d3358cfb0084dc15b06be682cfb775f46ec3afdb531899e6913",
  "kind": "def",
  "lexical_name": "isExprDefEqExpensive",
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
  "slug": "isexprdefeqexpensive--a19bd28190a1d59969d19421",
  "source": {
    "blob": "8bbd010584f31382615499820e7b562d16998fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2241,
    "line": 2213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a19bd28190a1d59969d19421bb97a6d7ea54d5b38b5c71de01e46f940e3dbc28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc9b28221fe63d3358cfb0084dc15b06be682cfb775f46ec3afdb531899e6913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2213–2241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def isExprDefEqExpensive (t : Expr) (s : Expr) : MetaM Bool := do
  whenUndefDo (isDefEqEta t s) do
  whenUndefDo (isDefEqEta s t) do
  if (← isDefEqProj t s) then return true
  let t' ← whnfCore t
  let s' ← whnfCore s
  if t != t' || s != s' then
    Meta.isExprDefEqAux t' s'
  else
    whenUndefDo (isDefEqNative t s) do
    whenUndefDo (isDefEqNat t s) do
    whenUndefDo (isDefEqOffset t s) do
    whenUndefDo (isDefEqDelta t s) do
    -- We try structure eta *after* lazy delta reduction;
    -- otherwise we would end up applying it at every step of a reduction chain
    -- as soon as one of the sides is a constructor application,
    -- which is very costly because it requires us to unify the fields.
    if (← (isDefEqEtaStruct t s <||> isDefEqEtaStruct s t)) then
      return true
    if t.isConst && s.isConst then
      if t.constName! == s.constName! then isListLevelDefEqAux t.constLevels! s.constLevels! else return false
    else if (← pure t.isApp <&&> pure s.isApp <&&> isDefEqApp t s) then
      return true
    else
      whenUndefDo (isDefEqProjInst t s) do
      whenUndefDo (isDefEqStringLit t s) do
      if (← isDefEqUnitLike t s) then return true else
      isDefEqOnFailure t s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean#L2213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbd010584f31382615499820e7b562d16998fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
