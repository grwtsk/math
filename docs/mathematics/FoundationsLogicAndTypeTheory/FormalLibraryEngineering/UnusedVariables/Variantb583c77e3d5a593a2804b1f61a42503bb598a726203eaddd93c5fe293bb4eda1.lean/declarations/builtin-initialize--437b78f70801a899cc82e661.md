# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22e624f1cfcb7c5c22e78cf18162c155bc4d8256388f5acb42935f471b78ec33",
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
  "slug": "builtin-initialize--437b78f70801a899cc82e661",
  "source": {
    "blob": "5fffdbe0d2d380a83e0aa43656b54af7c56c7b8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 171,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variantb583c77e3d5a593a2804b1f61a42503bb598a726203eaddd93c5fe293bb4eda1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:437b78f70801a899cc82e661203a6841fcf9431fe532bc29126864005b354ece",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variantb583c77e3d5a593a2804b1f61a42503bb598a726203eaddd93c5fe293bb4eda1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22e624f1cfcb7c5c22e78cf18162c155bc4d8256388f5acb42935f471b78ec33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize
  let mkAttr (builtin : Bool) (name : Name) := registerBuiltinAttribute {
    name
    descr           := (if builtin then "(builtin) " else "") ++
      "Marks a function of type `Lean.Linter.IgnoreFunction` for suppressing unused variable warnings"
    applicationTime := .afterCompilation
    add             := fun decl stx kind => do
      Attribute.Builtin.ensureNoArgs stx
      if !builtin then
        ensureAttrDeclIsMeta name decl kind
      unless kind == AttributeKind.global do throwAttrMustBeGlobal name kind
      let declType := (← getConstInfo decl).type
      unless declType.isConstOf ``IgnoreFunction do
        throwAttrDeclNotOfExpectedType name decl declType (mkConst ``Lean.Linter.IgnoreFunction)
      let env ← getEnv
      if builtin then
        let h := mkConst decl
        declareBuiltin decl <| mkApp (mkConst ``addBuiltinUnusedVariablesIgnoreFn) h
      else
        setEnv <| unusedVariablesIgnoreFnsExt.addEntry env (decl, ← mkIgnoreFn decl)
  }
  mkAttr true `builtin_unused_variables_ignore_fn
  mkAttr false `unused_variables_ignore_fn

/-- `variable (unused : Nat)` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variantb583c77e3d5a593a2804b1f61a42503bb598a726203eaddd93c5fe293bb4eda1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variantb583c77e3d5a593a2804b1f61a42503bb598a726203eaddd93c5fe293bb4eda1.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fffdbe0d2d380a83e0aa43656b54af7c56c7b8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
