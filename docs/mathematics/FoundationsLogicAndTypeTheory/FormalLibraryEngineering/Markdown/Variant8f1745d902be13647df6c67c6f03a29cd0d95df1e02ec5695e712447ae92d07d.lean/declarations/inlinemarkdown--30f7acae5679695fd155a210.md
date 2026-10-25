# inlineMarkdown

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d181aa129c18b47661f36198c66e003232c25b71275fce29fc87ecabe1c15e3",
  "kind": "def",
  "lexical_name": "inlineMarkdown",
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
  "slug": "inlinemarkdown--30f7acae5679695fd155a210",
  "source": {
    "blob": "57f92f0e9159092ddf57c765816558eb59d974c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 339,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Markdown/Variant8f1745d902be13647df6c67c6f03a29cd0d95df1e02ec5695e712447ae92d07d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30f7acae5679695fd155a210c637f427a4e499513c3215e90faf34a9afef0493",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Markdown/Variant8f1745d902be13647df6c67c6f03a29cd0d95df1e02ec5695e712447ae92d07d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d181aa129c18b47661f36198c66e003232c25b71275fce29fc87ecabe1c15e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def inlineMarkdown [MarkdownInline i] :
    InlineCtx → Inline i → MarkdownM (Array String)
  | _, .text s => return #[escape s]
  | _, .linebreak _ => return #["", ""]
  | ctx, .emph xs => do
    let (pre, mid, post) := trim (.concat xs)
    let inner ← inlineMarkdown { ctx with inEmph := true } mid
    let mut pieces : Array (Array String) := #[]
    if !pre.isEmpty then pieces := pieces.push #[pre]
    if !ctx.inEmph then pieces := pieces.push #["*"]
    pieces := pieces.push inner
    if !ctx.inEmph then pieces := pieces.push #["*"]
    if !post.isEmpty then pieces := pieces.push #[post]
    return joinInlines pieces
  | ctx, .bold xs => do
    let (pre, mid, post) := trim (.concat xs)
    let inner ← inlineMarkdown { ctx with inBold := true } mid
    let mut pieces : Array (Array String) := #[]
    if !pre.isEmpty then pieces := pieces.push #[pre]
    if !ctx.inBold then pieces := pieces.push #["**"]
    pieces := pieces.push inner
    if !ctx.inBold then pieces := pieces.push #["**"]
    if !post.isEmpty then pieces := pieces.push #[post]
    return joinInlines pieces
  | ctx, .concat xs => do
    let parts ← xs.mapM (inlineMarkdown ctx)
    return joinInlines parts
  | ctx, .link content url => do
    if ctx.inLink then
      let parts ← content.mapM (inlineMarkdown ctx)
      return joinInlines parts
    else
      let inner ← inlineMarkdown { ctx with inLink := true } (.concat content)
      return joinInlines #[#["["], inner, #["](" ++ url ++ ")"]]
  | _, .image alt url => return #[s!"![{escape alt}]({url})"]
  | ctx, .footnote name content => do
    let parts ← content.mapM (inlineMarkdown ctx)
    let footnoteContent := "\n".intercalate (joinInlines parts).toList
    MarkdownM.addFootnote name footnoteContent
    return #[s!"[^{name}]"]
  | _, .code str => return #[quoteCode str]
  | _, .math .display m => return #[s!"$${m}$$"]
  | _, .math .inline m => return #[s!"${m}$"]
  | ctx, .other container content =>
    MarkdownInline.toMarkdown (inlineMarkdown ctx) container content

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Markdown/Variant8f1745d902be13647df6c67c6f03a29cd0d95df1e02ec5695e712447ae92d07d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Markdown/Variant8f1745d902be13647df6c67c6f03a29cd0d95df1e02ec5695e712447ae92d07d.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57f92f0e9159092ddf57c765816558eb59d974c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
