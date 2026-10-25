# checkDeprecated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:379e1a28bde7ad9bd68e399d2bdcb5ed91d1c51e4af48646e294d1bdf491eab6",
  "kind": "def",
  "lexical_name": "checkDeprecated",
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
  "slug": "checkdeprecated--b91b612d5886c5332be59f3f",
  "source": {
    "blob": "ea4a29871821245b18a9774db4b567dc4bdee1b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b91b612d5886c5332be59f3f04a6c9048a461f45698d15f252a67912697839d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:379e1a28bde7ad9bd68e399d2bdcb5ed91d1c51e4af48646e294d1bdf491eab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkDeprecated (declName : Name) : MetaM Unit := do
  if getLinterValue linter.deprecated (← getLinterOptions) then
    let some attr := deprecatedAttr.getParam? (← getEnv) declName | pure ()
    let extraMsg ← match attr.text?, attr.newName? with
      | some text, _ => pure m!": {text}"
      | none, none => pure m!""
      | none, some newName => do
        let mut msg := m!": Use `{.ofConstName newName true}` instead"
        let env ← getEnv
        let oldPfx := declName.getPrefix
        let newPfx := newName.getPrefix
        let some oldDecl := env.find? declName | pure msg
        let some newDecl := env.find? newName | pure msg
        if !(← withReducible <| isDefEqGuarded oldDecl.type newDecl.type) then
          msg := msg ++ .note m!"The updated constant has a different type:{indentExpr newDecl.type}\
            \ninstead of{indentExpr oldDecl.type}"
        unless oldPfx.isAnonymous do
          -- Check namespace, then visibility, exclusively and in this order, to avoid redundancy
          if oldPfx != newPfx then
            let changeEx := if let .str _ oldRoot := declName then
              m!" (e.g., from `x.{oldRoot}` to `{.ofConstName newName} x`)"
            else .nil
            msg := msg ++ .note m!"The updated constant is in a different namespace. \
              Dot notation may need to be changed{changeEx}."
          else if !(isProtected env declName) && isProtected env newName then
            let pfxComps := newPfx.componentsRev
            let pfxCompStr := if _ : pfxComps.length > 1 then m!"at least the last component `{pfxComps[0]}` of " else ""
            msg := msg ++ .note m!"`{.ofConstName newName true}` is protected. References to this \
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea4a29871821245b18a9774db4b567dc4bdee1b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
