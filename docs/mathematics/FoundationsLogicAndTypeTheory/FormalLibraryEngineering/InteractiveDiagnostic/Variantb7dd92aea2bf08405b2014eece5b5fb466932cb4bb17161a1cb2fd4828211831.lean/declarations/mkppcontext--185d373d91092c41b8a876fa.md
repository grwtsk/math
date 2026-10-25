# mkPPContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7433c3e199d420d6975b6b06460f05c587a8c21ec436f1d091784315a10ec643",
  "kind": "def",
  "lexical_name": "mkPPContext",
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
  "slug": "mkppcontext--185d373d91092c41b8a876fa",
  "source": {
    "blob": "6856437cf31cb3e2c1982ae83b8142b4cc4af33b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantb7dd92aea2bf08405b2014eece5b5fb466932cb4bb17161a1cb2fd4828211831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:185d373d91092c41b8a876fa929cee6782c9817b38fe31806048861bde6c4275",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantb7dd92aea2bf08405b2014eece5b5fb466932cb4bb17161a1cb2fd4828211831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7433c3e199d420d6975b6b06460f05c587a8c21ec436f1d091784315a10ec643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkPPContext (nCtx : NamingContext) (ctx : MessageDataContext) : PPContext := {
  env := ctx.env, mctx := ctx.mctx, lctx := ctx.lctx, opts := ctx.opts,
  currNamespace := nCtx.currNamespace, openDecls := nCtx.openDecls
}

/-! The `msgToInteractive` algorithm turns a `MessageData` into `InteractiveMessage` in two stages.

First, in `msgToInteractiveAux` we produce a `Format` object whose `.tag` nodes refer to `EmbedFmt`
objects stored in an auxiliary array. Only the most shallow `.tag` in every branch through the
`Format` corresponds to an `EmbedFmt`. The kind of this tag determines how the nested `Format`
object (possibly including further `.tag`s), is processed. For example, if the output is
`.tag (.expr ctx infos) fmt` then tags in the nested `fmt` object refer to elements of `infos`.

In the second stage, we recursively transform such a `Format` into `InteractiveMessage` according
to the rule above by first pretty-printing it and then grabbing data referenced by the tags from
all the nested arrays (such as the `infos` array in the example above).

We cannot easily do the translation in a single `MessageData → InteractiveMessage` step because
that would effectively require reimplementing the (stateful, to keep track of indentation)
`Format.prettyM` algorithm.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantb7dd92aea2bf08405b2014eece5b5fb466932cb4bb17161a1cb2fd4828211831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantb7dd92aea2bf08405b2014eece5b5fb466932cb4bb17161a1cb2fd4828211831.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6856437cf31cb3e2c1982ae83b8142b4cc4af33b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
