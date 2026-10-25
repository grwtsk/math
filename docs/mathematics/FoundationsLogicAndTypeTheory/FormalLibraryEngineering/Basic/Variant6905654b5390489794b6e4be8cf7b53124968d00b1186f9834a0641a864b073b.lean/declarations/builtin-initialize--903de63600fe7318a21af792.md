# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d70cf41f2660f13402d10caef37449afcc6405fdd68dd983fabf57c30b817c45",
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
  "slug": "builtin-initialize--903de63600fe7318a21af792",
  "source": {
    "blob": "6d73b6b61d715396ea10d126192e94d158132227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6905654b5390489794b6e4be8cf7b53124968d00b1186f9834a0641a864b073b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:903de63600fe7318a21af7924367fcf401bfa9fcab000589c60bd545dd6d1066",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6905654b5390489794b6e4be8cf7b53124968d00b1186f9834a0641a864b073b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d70cf41f2660f13402d10caef37449afcc6405fdd68dd983fabf57c30b817c45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize
  let mkAttr (builtin : Bool) (name : Name) := registerBuiltinAttribute {
    name
    descr           := (if builtin then "(builtin) " else "") ++
      "Use to decorate methods for suggesting code actions. This is a low-level interface for making code actions."
    applicationTime := .afterCompilation
    add             := fun decl stx kind => do
      if !builtin then
        ensureAttrDeclIsMeta `name decl kind
      Attribute.Builtin.ensureNoArgs stx
      unless kind == AttributeKind.global do throwAttrMustBeGlobal name kind
      let declType := (← getConstInfo decl).type
      unless declType.isConstOf ``CodeActionProvider do
        throwAttrDeclNotOfExpectedType name decl declType (mkConst ``Lean.Server.CodeActionProvider)
      let env ← getEnv
      if builtin then
        let h := mkConst decl
        declareBuiltin decl <| mkApp2 (mkConst ``addBuiltinCodeActionProvider) (toExpr decl) h
      else
        setEnv <| codeActionProviderExt.addEntry env decl
  }
  mkAttr true `builtin_code_action_provider
  mkAttr false `code_action_provider

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6905654b5390489794b6e4be8cf7b53124968d00b1186f9834a0641a864b073b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6905654b5390489794b6e4be8cf7b53124968d00b1186f9834a0641a864b073b.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d73b6b61d715396ea10d126192e94d158132227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
