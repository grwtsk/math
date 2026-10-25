# unfoldMessageDataTracesContaining

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:969c78dd903eebdd817b928d5d73d29a358248b007a2c8569e3653ccd9398b9e",
  "kind": "def",
  "lexical_name": "unfoldMessageDataTracesContaining",
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
  "slug": "unfoldmessagedatatracescontaining--547a166a4d865bc889765dde",
  "source": {
    "blob": "f9ac1ced8d8a6d0f12e9c5a59f63baa2171e1bbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 381,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variant5e6af2da9e3f2f956a91e5262ecc7b6843e524c979382bd12d25c91656ca41ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:547a166a4d865bc889765dde0c99774f239e7d0c045367c7156bea93d6ff05dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variant5e6af2da9e3f2f956a91e5262ecc7b6843e524c979382bd12d25c91656ca41ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:969c78dd903eebdd817b928d5d73d29a358248b007a2c8569e3653ccd9398b9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def unfoldMessageDataTracesContaining (msg : MessageData) (nctx : NamingContext) (ctx? : Option MessageDataContext) : BaseIO (MessageData × Bool) := do
  -- We currently only support `.trace` trees.
  match msg with
  | .trace data traceMsg children =>
    let unfolded ← children.mapM (unfoldMessageDataTracesContaining · nctx ctx?)
    let children := unfolded.map (·.1)
    let anyUnfolded := unfolded.any (·.2)
    if anyUnfolded then
      return (.trace { data with collapsed := false } traceMsg children, true)
    let fmt ← traceMsg.formatAux nctx ctx?
    let s := fmt.pretty (indent := indent)
    if contains query s then
      return (.trace { data with collapsed := false } traceMsg children, true)
    return (.trace data traceMsg children, false)
  | .withContext ctx msg =>
    let (msg, unfolded) ← unfoldMessageDataTracesContaining msg nctx ctx
    return (.withContext ctx msg, unfolded)
  | .withNamingContext nctx msg =>
    let (msg, unfolded) ← unfoldMessageDataTracesContaining msg nctx ctx?
    return (.withNamingContext nctx msg, unfolded)
  | .tagged tag msg =>
    let (msg, unfolded) ← unfoldMessageDataTracesContaining msg nctx ctx?
    return (.tagged tag msg, unfolded)
  | _ =>
    return (msg, false)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variant5e6af2da9e3f2f956a91e5262ecc7b6843e524c979382bd12d25c91656ca41ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variant5e6af2da9e3f2f956a91e5262ecc7b6843e524c979382bd12d25c91656ca41ae.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9ac1ced8d8a6d0f12e9c5a59f63baa2171e1bbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
