# mkFlatCtorExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3626d4b20b244065cf133d49887eff2b7d54ed9430548d027624ec2a6f75086",
  "kind": "def",
  "lexical_name": "mkFlatCtorExpr",
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
  "slug": "mkflatctorexpr--fc2f87fc4daffc309ad33b51",
  "source": {
    "blob": "d4e9e482af56c000ec44903583603375e1941536",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1236,
    "line": 1211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc2f87fc4daffc309ad33b518172b4efdc08ecc8d6aa387c4ba06f5820b7895d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3626d4b20b244065cf133d49887eff2b7d54ed9430548d027624ec2a6f75086`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1211–1236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkFlatCtorExpr (levelParams : List Name) (params : Array Expr) (ctor : ConstructorVal) (replaceIndFVars : Expr → MetaM Expr) :
    StructElabM Expr := do
  -- build the constructor application using the fields in the local context
  let mut val := mkAppN (mkConst ctor.name (levelParams.map mkLevelParam)) params
  let fieldInfos := (← get).fields
  for fieldInfo in fieldInfos do
    if fieldInfo.kind.isInCtor then
      val := mkApp val fieldInfo.fvar
  -- zeta delta reduce the parent ldecls
  let parentFVars := fieldInfos |>.filter (·.kind.isParent) |>.map (·.fvar.fvarId!)
  val ← zetaDeltaFVars (← instantiateMVars val) parentFVars
  -- abstract all non-parent fields to make a lambda expression
  let fields' := fieldInfos |>.filter (!·.kind.isParent)
  val ← fields'.foldrM (init := val) fun fieldInfo val => do
    let decl ← fieldInfo.fvar.fvarId!.getDecl
    let type ←
      match fieldInfo.resolvedDefault? with
      | some (.autoParam tactic) => mkAppM ``autoParam #[decl.type, tactic]
      | _ => pure decl.type
    let type ← zetaDeltaFVars (← instantiateMVars type) parentFVars
    let type ← replaceIndFVars type
    return .lam decl.userName.eraseMacroScopes type (val.abstract #[fieldInfo.fvar]) decl.binderInfo
  val ← mkLambdaFVars params val
  val ← replaceIndFVars val
  fieldNormalizeExpr val

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean#L1211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e9e482af56c000ec44903583603375e1941536` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
