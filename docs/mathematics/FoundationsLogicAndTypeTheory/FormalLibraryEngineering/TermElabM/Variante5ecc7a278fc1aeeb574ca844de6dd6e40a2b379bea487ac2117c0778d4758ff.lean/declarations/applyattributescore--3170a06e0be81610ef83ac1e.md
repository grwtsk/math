# applyAttributesCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c5622fed5e0b617ab0f25539999210a1728d397c0b28c25801971429c59c03f",
  "kind": "def",
  "lexical_name": "applyAttributesCore",
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
  "slug": "applyattributescore--3170a06e0be81610ef83ac1e",
  "source": {
    "blob": "4d848e0860a24a0a4bee2440466e612380b33ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1121,
    "line": 1083,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3170a06e0be81610ef83ac1e19c6dd44968a3fa4d84c70c427fe337515f84363",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c5622fed5e0b617ab0f25539999210a1728d397c0b28c25801971429c59c03f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1083–1121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def applyAttributesCore
    (declName : Name) (attrs : Array Attribute)
    (applicationTime? : Option AttributeApplicationTime) : TermElabM Unit := do profileitM Exception "attribute application" (← getOptions) do
  /-
  Remark: if the declaration has syntax errors, `declName` may be `.anonymous` see issue #4309
  In this case, we skip attribute application.
  -/
  if declName == .anonymous then
    return
  withDeclName declName do
    for attr in attrs do
      -- Use same visibility as for other signature elements, independent of call site
      withExporting (isExporting := attr.kind != .local && !isPrivateName declName) do
      withTraceNode `Elab.attribute (fun _ => pure m!"applying [{attr.stx}]") do
      withRef attr.stx do withLogging do
      let env ← getEnv
      match getAttributeImpl env attr.name with
      | .error errMsg => throwError errMsg
      | .ok attrImpl  =>
        let runAttr := attrImpl.add declName attr.stx attr.kind
        let runAttr := do
          -- not truly an elaborator, but a sensible target for go-to-definition
          let elaborator := attrImpl.ref
          if (← getInfoState).enabled then
            withInfoContext (mkInfo := return .ofCommandInfo { elaborator, stx := attr.stx }) do
              try runAttr
              finally if attr.stx[0].isIdent || attr.stx[0].isAtom then
                -- Add an additional node over the leading identifier if there is one to make it look more function-like.
                -- Do this last because we want user-created infos to take precedence
                pushInfoLeaf <| .ofCommandInfo { elaborator, stx := attr.stx[0] }
          else
            runAttr
        match applicationTime? with
        | none => runAttr
        | some applicationTime =>
          if applicationTime == attrImpl.applicationTime then
            runAttr

/-- Apply given attributes **at** a given application time -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean#L1083).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d848e0860a24a0a4bee2440466e612380b33ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
