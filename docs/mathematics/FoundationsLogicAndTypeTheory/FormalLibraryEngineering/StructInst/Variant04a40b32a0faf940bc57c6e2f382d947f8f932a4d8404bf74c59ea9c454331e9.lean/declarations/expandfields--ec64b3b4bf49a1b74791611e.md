# expandFields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a9f9483736749f54ee3ecfd8f832c0deda09ac28d594a57976acc86a07bc4fa",
  "kind": "def",
  "lexical_name": "expandFields",
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
  "slug": "expandfields--ec64b3b4bf49a1b74791611e",
  "source": {
    "blob": "a8d89a25282acd94a5769cecd00572cb209ef82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 568,
    "line": 522,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec64b3b4bf49a1b74791611e7bea99fd98e5108dfe1d9a7ffd34438cf913a387",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a9f9483736749f54ee3ecfd8f832c0deda09ac28d594a57976acc86a07bc4fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–568.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def expandFields (structName : Name) (fieldViews : Array FieldView) (recover : Bool) : MetaM (Bool × ExpandedFields) := do
  let mut fields : ExpandedFields := {}
  let mut errors : Bool := false
  for fieldView in fieldViews do
    try
      let fieldView ← normalizeField structName fieldView
      match fieldView.lhs with
      | .fieldName ident :: rest =>
        let name := ident.getId
        if let some field := fields.find? name then
          if rest.isEmpty || !field.isNested then
            throwErrorAt ident m!"field `{name}` has already been specified"
          else
            -- There is a pre-existing nested field, and we are looking at a nested field. So, insert.
            let .nested views' sources extraRefs := field.val | unreachable!
            let views' := views'.push { fieldView with lhs := rest }
            fields := fields.insert name { field with val := .nested views' sources (extraRefs.push ident) }
        else if rest.isEmpty then
          -- A simple field
          fields := fields.insert name { ref := ident, name, val := .term fieldView.val }
        else
          -- A new nested field
          let fieldView' := { fieldView with lhs := rest }
          fields := fields.insert name { ref := ident, name, val := .nested #[fieldView'] #[] #[] }
      | [.parentFieldName ref parentStructName name] =>
        -- Parent field
        let fvarId ← mkFreshFVarId
        for parentField in getStructureFieldsFlattened (← getEnv) parentStructName false do
          if fields.contains parentField then
            throwErrorAt ref m!"field `{name}` from structure `{.ofConstName parentStructName}` has already been specified"
          else
            let val := ExpandedFieldVal.proj fvarId fieldView.val parentStructName name
            fields := fields.insert parentField { ref := ref, name := parentField, val }
      | _ => unreachable!
    catch ex =>
      if recover then
        logException ex
        errors := true
      else
        throw ex
  return (errors, fields)

/--
Adds fields from the sources, updating any nested fields.

Rule: a missing field always comes from the first source that can provide it.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d89a25282acd94a5769cecd00572cb209ef82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
