# addInheritedDocString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b5aefd9ab2e4a503ee8b9dffd51dc3e666e7314a47c553e054e4618d113f99a",
  "kind": "def",
  "lexical_name": "addInheritedDocString",
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
  "slug": "addinheriteddocstring--e25698dfb156d4349bfee7eb",
  "source": {
    "blob": "43b85334c0be203722de3140e56bba3fe48902ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 189,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant6f6492c00fda04fb09a078e2bacbc4bb082dfcbfb0290bd782952c09cddd732b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e25698dfb156d4349bfee7eb6474d7caf21c6a28884e1004b3ec06b58b25678e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant6f6492c00fda04fb09a078e2bacbc4bb082dfcbfb0290bd782952c09cddd732b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b5aefd9ab2e4a503ee8b9dffd51dc3e666e7314a47c553e054e4618d113f99a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addInheritedDocString [Monad m] [MonadError m] [MonadEnv m] (declName target : Name) : m Unit := do
  unless (← getEnv).getModuleIdxFor? declName |>.isNone do
    throwError "invalid `[inherit_doc]` attribute, declaration `{.ofConstName declName}` is in an imported module"
  if inheritDocStringExt.find? (level := .server) (← getEnv) declName |>.isSome then
    throwError "invalid `[inherit_doc]` attribute, declaration `{.ofConstName declName}` already has an `[inherit_doc]` attribute"
  if inheritDocStringExt.find? (level := .server) (← getEnv) target == some declName then
    throwError "invalid `[inherit_doc]` attribute, cycle detected"
  modifyEnv fun env => inheritDocStringExt.insert env declName target

/--
Finds a docstring without performing any alias resolution or enrichment with extra metadata.
For Markdown docstrings, the result is a string; for Verso docstrings, it's a `VersoDocString`.

Docstrings to be shown to a user should be looked up with `Lean.findDocString?` instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant6f6492c00fda04fb09a078e2bacbc4bb082dfcbfb0290bd782952c09cddd732b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant6f6492c00fda04fb09a078e2bacbc4bb082dfcbfb0290bd782952c09cddd732b.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43b85334c0be203722de3140e56bba3fe48902ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
