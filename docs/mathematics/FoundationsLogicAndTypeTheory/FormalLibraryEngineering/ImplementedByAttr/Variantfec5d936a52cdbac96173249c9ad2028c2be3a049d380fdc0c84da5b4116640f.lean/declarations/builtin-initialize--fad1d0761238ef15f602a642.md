# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:027e7b1f9af1e1b3e0668533f6a1da3a1d1c9fb56fa58c7836d9c3e40b3cd6ed",
  "kind": "builtin_initialize",
  "lexical_name": null,
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
  "slug": "builtin-initialize--fad1d0761238ef15f602a642",
  "source": {
    "blob": "11ca8e5d512008b3efe1bd43d7d809f8ad53f7c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImplementedByAttr/Variantfec5d936a52cdbac96173249c9ad2028c2be3a049d380fdc0c84da5b4116640f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fad1d0761238ef15f602a642280620694dac4042a11a4fb6895bae67bda27ec0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImplementedByAttr/Variantfec5d936a52cdbac96173249c9ad2028c2be3a049d380fdc0c84da5b4116640f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:027e7b1f9af1e1b3e0668533f6a1da3a1d1c9fb56fa58c7836d9c3e40b3cd6ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize implementedByAttr : ParametricAttribute Name ← registerParametricAttribute {
  name := `implemented_by
  descr := "name of the Lean (probably unsafe) function that implements opaque constant"
  getParam := fun declName stx => do
    let decl ← getConstInfo declName
    let fnNameStx ← Attribute.Builtin.getIdent stx
    -- IR is (currently) exported always, so access to private decls is fine here.
    withoutExporting do
      let fnName ← Elab.realizeGlobalConstNoOverloadWithInfo fnNameStx
      let fnDecl ← getConstVal fnName
      unless decl.levelParams.length == fnDecl.levelParams.length do
        throwError "Invalid `implemented_by` argument `{fnName}`: `{fnName}` has {fnDecl.levelParams.length} universe level parameter(s), but `{.ofConstName declName}` has {decl.levelParams.length}"
      let declType := decl.type
      let fnType ← Core.instantiateTypeLevelParams fnDecl (decl.levelParams.map mkLevelParam)
      unless declType == fnType do
        throwError "Invalid `implemented_by` argument `{fnName}`: `{fnName}` has type{indentExpr fnType}\nbut `{.ofConstName declName}` has type{indentExpr declType}"
      if decl.name == fnDecl.name then
        throwError "Invalid `implemented_by` argument `{fnName}`: Definition cannot be implemented by itself"
      return fnName
}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImplementedByAttr/Variantfec5d936a52cdbac96173249c9ad2028c2be3a049d380fdc0c84da5b4116640f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImplementedByAttr/Variantfec5d936a52cdbac96173249c9ad2028c2be3a049d380fdc0c84da5b4116640f.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11ca8e5d512008b3efe1bd43d7d809f8ad53f7c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
