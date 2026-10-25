# updateDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:442572309ce6d6ab89c425373cad0904fefc291bb1eebbb33ce42af1599c8640",
  "kind": "def",
  "lexical_name": "updateDecl",
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
  "slug": "updatedecl--95222c578383bad8aac645b9",
  "source": {
    "blob": "85e7fb128cfe562b177613129615fa16e03e7b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 666,
    "line": 633,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95222c578383bad8aac645b9f11a58a44473ded1c8d71329c8b8984e49e8cc93",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:442572309ce6d6ab89c425373cad0904fefc291bb1eebbb33ce42af1599c8640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 633–666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def updateDecl (t : TranslateData) (tgt : Name) (srcDecl : ConstantInfo)
    (reorder : ArgReorder) (dont : List Nat)
    (unfoldBoundaries? : Option UnfoldBoundary.UnfoldBoundaries) (rename : NameMap Name) :
    MetaM (ConstantInfo × Option RelevantArg) := do
  unless srcDecl.all == [srcDecl.name] do
    throwError "`{t.attrName}` does not support mutually recursive declarations."
  let decl := srcDecl.updateName tgt
  let decl := decl.updateAll [tgt]
  let mut value := decl.value! (allowOpaque := true)
  if let some b := unfoldBoundaries? then
    value ← b.cast (← b.insertBoundaries value t.attrName) decl.type t.attrName
  trace[translate_detail] "Value before translation:{indentExpr value}"
  let (value', relevantArg₁) ← applyReplacementLambda t dont value
  value ← reorderLambda reorder value'
  if let some b := unfoldBoundaries? then
    value ← b.unfoldInsertions value
  let decl := decl.updateValue value
  let mut type := decl.type
  if let some b := unfoldBoundaries? then
    type ← b.insertBoundaries decl.type t.attrName
  let (type', relevantArg₂) ← applyReplacementForall t dont <|
    renameBinderNames (t.guessNameExt.getState (← getEnv)) rename type
  type ← reorderForall reorder type'
  if let some b := unfoldBoundaries? then
    type ← b.unfoldInsertions type
  return (decl.updateType type, .merge .min relevantArg₁ relevantArg₂)

/-- Translate the source declaration and then run `addDecl`. If the kernel throws an error,
try to emit a better error message.

For efficiency in `to_dual`, we first run `updateDecl` without any `UnfoldBoundaries`,
and only if that fails do we try to include them.
The reason is that in the most common case, `to_dual` succeeds without needing to insert
unfold boundaries, and figuring out whether to insert them can be quite expensive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean#L633).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e7fb128cfe562b177613129615fa16e03e7b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
