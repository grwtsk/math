# Code.toExprM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a15e0a79c3ab5c0d8eb1319fdfe6ca9cc6d7778345be2c21b4ff6dcbbe7ea2d",
  "kind": "def",
  "lexical_name": "Code.toExprM",
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
  "slug": "code-toexprm--daff341dc62ceec3006f94a9",
  "source": {
    "blob": "4870abf003cec5bd7ac10aa293ea858d6955bda7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc51b44c77e49143c0a2017d425d4ba9ef8d32fa6781324c6856a34f2910f3ebd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:daff341dc62ceec3006f94a93cfbb4862fedecdd034dd857aa27333bd32d146a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc51b44c77e49143c0a2017d425d4ba9ef8d32fa6781324c6856a34f2910f3ebd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a15e0a79c3ab5c0d8eb1319fdfe6ca9cc6d7778345be2c21b4ff6dcbbe7ea2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Code.toExprM (code : Code pu) : ToExprM Expr := do
  match code with
  | .let decl k =>
    let type ← abstractM decl.type
    let value ← abstractM decl.value.toExpr
    let body ← withFVar decl.fvarId k.toExprM
    return .letE decl.binderName type value body true
  | .fun decl k _ | .jp decl k =>
    let type ← abstractM decl.type
    let value ← decl.toExprM
    let body ← withFVar decl.fvarId k.toExprM
    return .letE decl.binderName type value body true
  | .return fvarId => fvarId.toExprM
  | .jmp fvarId args => return mkAppN (← fvarId.toExprM) (← args.mapM Arg.toExprM)
  | .unreach type => return mkApp (mkConst ``lcUnreachable) (← abstractM type)
  | .cases c =>
    let alts ← c.alts.mapM fun
      | .alt ctorName params k _ => do
        let body ← withParams params do mkLambdaM params (← k.toExprM)
        return mkApp (mkConst ctorName) body
      | .default k => k.toExprM
      | .ctorAlt i k _ => do
        let body ← k.toExprM
        return mkApp (mkConst i.name) body
    return mkAppN (mkConst `cases) (#[← c.discr.toExprM] ++ alts)
  | .sset fvarId i offset y ty k _ =>
    let value := mkApp5 (mkConst `sset) (.fvar fvarId) (toExpr i) (toExpr offset) (.fvar y) ty
    let body ← withFVar fvarId k.toExprM
    return .letE `dummy (mkConst ``Unit) value body true
  | .oset fvarId offset y k _ =>
    let value := mkApp3 (mkConst `oset) (.fvar fvarId) (toExpr offset) (← y.toExprM)
    let body ← withFVar fvarId k.toExprM
    return .letE `dummy (mkConst ``Unit) value body true
  | .uset fvarId offset y k _ =>
    let value := mkApp3 (mkConst `uset) (.fvar fvarId) (toExpr offset) (.fvar y)
    let body ← withFVar fvarId k.toExprM
    return .letE `dummy (mkConst ``Unit) value body true
  | .setTag fvarId cidx k _ =>
    let body ← withFVar fvarId k.toExprM
    let value := mkApp2 (mkConst `setTag) (.fvar fvarId) (toExpr cidx)
    return .letE `dummy (mkConst ``Unit) value body true
  | .inc fvarId n check persistent k _ =>
    let value := mkApp4 (mkConst `inc) (.fvar fvarId) (toExpr n) (toExpr check) (toExpr persistent)
    let body ← withFVar fvarId k.toExprM
    return .letE `dummy (mkConst ``Unit) value body true
  | .dec fvarId n check persistent o k _ =>
    let body ← withFVar fvarId k.toExprM
    let value :=
      mkApp5 (mkConst `dec) (.fvar fvarId) (toExpr n) (toExpr check) (toExpr persistent) (toExpr o)
    return .letE `dummy (mkConst ``Unit) value body true
  | .del fvarId k _ =>
    let body ← withFVar fvarId k.toExprM
    let value := mkApp (mkConst `del) (.fvar fvarId)
    return .letE `dummy (mkConst ``Unit) value body true
end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc51b44c77e49143c0a2017d425d4ba9ef8d32fa6781324c6856a34f2910f3ebd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc51b44c77e49143c0a2017d425d4ba9ef8d32fa6781324c6856a34f2910f3ebd.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4870abf003cec5bd7ac10aa293ea858d6955bda7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
