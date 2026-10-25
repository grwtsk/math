# evalMetaEval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74004deba77bdd4908b99d90e4f1dcb67127f39e2d23c79944f4dd4f6105482d",
  "kind": "def",
  "lexical_name": "evalMetaEval",
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
  "slug": "evalmetaeval--ca3eaa2cd9545008d8237f28",
  "source": {
    "blob": "54ee15bc8be1151680816ccbbe0c3b925094863c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variantb2491b9a30bc72fcda1080e8ce40436be701c9a7b6cc42d06a2b95eddc1f5c06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca3eaa2cd9545008d8237f28d5524e92d27d4a0125410f16907505cd995cba83",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variantb2491b9a30bc72fcda1080e8ce40436be701c9a7b6cc42d06a2b95eddc1f5c06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74004deba77bdd4908b99d90e4f1dcb67127f39e2d23c79944f4dd4f6105482d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] unsafe def evalMetaEval (α : Type) (typeName : Name) (moduleName? : Option Name) (e : Expr) : MetaM α := do
  unless (← getEnv).contains typeName do
    let fromMsg := if let some moduleName := moduleName? then m!" (from `{moduleName}`)" else m!""
    throwError m!"Error evaluating configuration: the type `{typeName}`{fromMsg} is not in scope here"
  recordExtraModUseFromDecl (isMeta := true) typeName
  let eType ← inferType e
  unless ← isDefEqGuarded (mkConst typeName) eType do
    throwError "Type mismatch. Option value{inlineExpr e}{← mkHasTypeButIsExpectedMsg eType (mkConst typeName)}"
  try
    withoutModifyingEnv <| Meta.evalExpr' α typeName e (safety := .partial)
  catch ex =>
    throwError m!"Error evaluating{indentExpr e}\n\nException: {ex.toMessageData}"

/-- Creates an `EvalExpr` instance that uses `Meta.evalExpr` to compile and evaluate the expression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variantb2491b9a30bc72fcda1080e8ce40436be701c9a7b6cc42d06a2b95eddc1f5c06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalExpr/Variantb2491b9a30bc72fcda1080e8ce40436be701c9a7b6cc42d06a2b95eddc1f5c06.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54ee15bc8be1151680816ccbbe0c3b925094863c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
