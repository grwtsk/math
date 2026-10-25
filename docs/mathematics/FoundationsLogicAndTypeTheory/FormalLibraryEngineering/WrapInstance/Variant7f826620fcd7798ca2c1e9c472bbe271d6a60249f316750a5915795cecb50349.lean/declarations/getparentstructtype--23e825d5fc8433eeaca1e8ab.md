# getParentStructType?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:342ecd1c7a4fa93d72486a2f4634655686021f415eff71746f452a1ea2ffc47a",
  "kind": "def",
  "lexical_name": "getParentStructType?",
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
  "slug": "getparentstructtype--23e825d5fc8433eeaca1e8ab",
  "source": {
    "blob": "2b07c1daf54f506e74ae6cf247065bcc44975708",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 104,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WrapInstance/Variant7f826620fcd7798ca2c1e9c472bbe271d6a60249f316750a5915795cecb50349.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23e825d5fc8433eeaca1e8abe0dfc613c89f088ca4e579b6931977f0ac792913",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WrapInstance/Variant7f826620fcd7798ca2c1e9c472bbe271d6a60249f316750a5915795cecb50349.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:342ecd1c7a4fa93d72486a2f4634655686021f415eff71746f452a1ea2ffc47a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getParentStructType? (structName parentStructName : Name) (structType : Expr) : MetaM (Option Expr) := OptionT.run do
  let env ← getEnv
  let some path := getPathToBaseStructure? env parentStructName structName | failure
  withLocalDeclD `self structType fun self => do
    let proj ← path.foldlM (init := self) fun e projFn => do
      let ty ← whnf (← inferType e)
      let .const _ us := ty.getAppFn
        | trace[Meta.wrapInstance] "could not reduce type `{ty}`"
          failure
      let params := ty.getAppArgs
      pure <| mkApp (mkAppN (.const projFn us) params) e
    let projTy ← whnf <| ← inferType proj
    if projTy.containsFVar self.fvarId! then
      trace[Meta.wrapInstance] "parent type depends on instance fields{indentExpr projTy}"
      failure
    return projTy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WrapInstance/Variant7f826620fcd7798ca2c1e9c472bbe271d6a60249f316750a5915795cecb50349.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WrapInstance/Variant7f826620fcd7798ca2c1e9c472bbe271d6a60249f316750a5915795cecb50349.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b07c1daf54f506e74ae6cf247065bcc44975708` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
