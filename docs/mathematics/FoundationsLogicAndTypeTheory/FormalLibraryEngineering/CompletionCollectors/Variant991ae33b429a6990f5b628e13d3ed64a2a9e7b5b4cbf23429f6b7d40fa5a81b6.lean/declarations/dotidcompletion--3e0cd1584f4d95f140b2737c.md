# dotIdCompletion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f2f3cb7faeaa06e6dc1a3204a4f39ffb0c927ea6b9324416290fa708cec9dcf",
  "kind": "def",
  "lexical_name": "dotIdCompletion",
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
  "slug": "dotidcompletion--3e0cd1584f4d95f140b2737c",
  "source": {
    "blob": "c8b14d07502b84f46376d191f0cd0845ca5a31cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 453,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant991ae33b429a6990f5b628e13d3ed64a2a9e7b5b4cbf23429f6b7d40fa5a81b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e0cd1584f4d95f140b2737ca2a09051b97d08a8813f2342b80df944449b0087",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant991ae33b429a6990f5b628e13d3ed64a2a9e7b5b4cbf23429f6b7d40fa5a81b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f2f3cb7faeaa06e6dc1a3204a4f39ffb0c927ea6b9324416290fa708cec9dcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dotIdCompletion
    (uri               : DocumentUri)
    (pos               : Lsp.Position)
    (completionInfoPos : Nat)
    (ctx               : ContextInfo)
    (lctx              : LocalContext)
    (id                : Name)
    (expectedType?     : Option Expr)
    : CancellableM (Array ResolvableCompletionItem) :=
  runM uri pos completionInfoPos ctx lctx do
    let some expectedType := expectedType?
      | return ()

    let typeNames ← getDotIdCompletionTypeNames expectedType
    if typeNames.isEmpty then
      return ()

    let nameSet := NameSetModPrivate.ofArray typeNames

    forEligibleDeclsWithCancellationM fun declName decl => do
      let unnormedTypeName := declName.getPrefix
      if ! nameSet.contains unnormedTypeName then
        return

      let some declName ← normPrivateName? declName
        | return

      let c := decl.info
      if ! (← isDotIdCompletionMethod nameSet c) then
        return

      let kind ← decl.kind
      let tags ← decl.tags
      if id.isAnonymous then
        -- We're completing a lone dot => offer all decls of the type
        addUnresolvedCompletionItem (.mkSimple c.name.getString!) (.const c.name) kind tags
        return

      let some label ← matchDecl? declName.getPrefix id (danglingDot := false) declName | pure ()
      addUnresolvedCompletionItem label (.const c.name) kind tags

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant991ae33b429a6990f5b628e13d3ed64a2a9e7b5b4cbf23429f6b7d40fa5a81b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant991ae33b429a6990f5b628e13d3ed64a2a9e7b5b4cbf23429f6b7d40fa5a81b6.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8b14d07502b84f46376d191f0cd0845ca5a31cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
