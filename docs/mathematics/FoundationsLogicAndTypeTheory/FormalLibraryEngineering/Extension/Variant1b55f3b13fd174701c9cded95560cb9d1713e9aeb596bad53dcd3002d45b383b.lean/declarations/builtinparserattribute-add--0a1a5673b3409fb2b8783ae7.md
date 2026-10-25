# BuiltinParserAttribute.add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4953c3405c7160d9bad7eb4c2c43d151e691cbcd4101e3c5c26048ed2ef4fe56",
  "kind": "def",
  "lexical_name": "BuiltinParserAttribute.add",
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
  "slug": "builtinparserattribute-add--0a1a5673b3409fb2b8783ae7",
  "source": {
    "blob": "82c790dd1d8158741e060af8300dea78c9c028ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 512,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant1b55f3b13fd174701c9cded95560cb9d1713e9aeb596bad53dcd3002d45b383b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a1a5673b3409fb2b8783ae761f6b236c514c048ee94199f2b7fa866179bd4e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant1b55f3b13fd174701c9cded95560cb9d1713e9aeb596bad53dcd3002d45b383b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4953c3405c7160d9bad7eb4c2c43d151e691cbcd4101e3c5c26048ed2ef4fe56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def BuiltinParserAttribute.add (attrName : Name) (catName : Name)
    (declName : Name) (stx : Syntax) (kind : AttributeKind) : AttrM Unit := do
  let prio ← Attribute.Builtin.getPrio stx
  unless kind == AttributeKind.global do throwAttrMustBeGlobal attrName kind
  let decl ← getConstInfo declName
  match decl.type with
  | Expr.const `Lean.Parser.TrailingParser _ =>
    declareTrailingBuiltinParser catName declName prio
  | Expr.const `Lean.Parser.Parser _ =>
    declareLeadingBuiltinParser catName declName prio
  | _ => throwError "Unexpected type for parser declaration: Parsers must have type `Parser` or \
    `TrailingParser`, but `{.ofConstName declName}` has type{indentExpr decl.type}"
  declareBuiltinDocStringAndRanges declName
  runParserAttributeHooks catName declName (builtin := true)

/--
The parsing tables for builtin parsers are "stored" in the extracted source code.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant1b55f3b13fd174701c9cded95560cb9d1713e9aeb596bad53dcd3002d45b383b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant1b55f3b13fd174701c9cded95560cb9d1713e9aeb596bad53dcd3002d45b383b.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82c790dd1d8158741e060af8300dea78c9c028ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
