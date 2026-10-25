# mkJpAlt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9204918c2c58da358d7deb57530b0d902ab29c1b897a4ff0cf56390cb28565f8",
  "kind": "def",
  "lexical_name": "mkJpAlt",
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
  "slug": "mkjpalt--dc4b55434b131d3eb3bd9fd8",
  "source": {
    "blob": "80eb3b4f7b3c69da0c50c58d8860b5e65c709d2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc4b55434b131d3eb3bd9fd8cdfc24f72b9dc7fb8b94e2fc8a81f16bea609eb2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9204918c2c58da358d7deb57530b0d902ab29c1b897a4ff0cf56390cb28565f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkJpAlt (decls : Array (CodeDecl .pure)) (params : Array (Param .pure))
    (targetParamIdx : Nat) (fields : Array (Param .pure)) (k : Code .pure) (default : Bool) :
    CompilerM JpCasesAlt := do
  go |>.run' {}
where
  go : InternalizeM .pure JpCasesAlt := do
    let mut paramsNew := #[]
    let singleton : FVarIdSet := { params[targetParamIdx]!.fvarId }
    let dependsOnDiscr := k.dependsOn singleton || decls.any (·.dependsOn singleton)
    for h : i in *...params.size do
      let param := params[i]
      if targetParamIdx == i then
        if dependsOnDiscr then
          paramsNew := paramsNew.push (← internalizeParam param)
        paramsNew := paramsNew ++ (← fields.mapM internalizeParam)
      else
        paramsNew := paramsNew.push (← internalizeParam param)
    let decls ← decls.mapM internalizeCodeDecl
    let k ← internalizeCode k
    let value := LCNF.attachCodeDecls decls k
    return { decl := (← mkAuxJpDecl paramsNew value), default, dependsOnDiscr }

/-- Create the arguments for a jump to an auxiliary join point created using `mkJpAlt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80eb3b4f7b3c69da0c50c58d8860b5e65c709d2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
