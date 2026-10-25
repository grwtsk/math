# hygieneInfoFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6774e575fc539a771946b6e428fe62c4a79bae12b972290aeb8ce1c40f9e3a70",
  "kind": "def",
  "lexical_name": "hygieneInfoFn",
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
  "slug": "hygieneinfofn--7ff7709e880ecc64198c4278",
  "source": {
    "blob": "0c62aceb1bdb5b06756ea41f268464313ddf7d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1353,
    "line": 1330,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ff7709e880ecc64198c4278d89781e39bae1a6c0ad4f10ef50edd5364d05872",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6774e575fc539a771946b6e428fe62c4a79bae12b972290aeb8ce1c40f9e3a70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1330–1353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hygieneInfoFn : ParserFn := fun c s => Id.run do
  let finish pos str trailing s :=
    -- Builds an actual hygieneInfo node from empty string `str` and trailing whitespace `trailing`.
    let info  := SourceInfo.original str pos trailing pos
    let ident := mkIdent info str .anonymous
    let stx   := mkNode hygieneInfoKind #[ident]
    s.pushSyntax stx
  -- If we are at the whitespace after a token, the last item on the stack
  -- will have trailing whitespace. We want to position this hygieneInfo
  -- item immediately after the last token, and reattribute the trailing whitespace
  -- to the hygieneInfo node itself. This allows combinators like `ws` to
  -- be unaffected by `hygieneInfo` parsers before or after, see `2262.lean`.
  if !s.stxStack.isEmpty then
    let prev := s.stxStack.back
    if let .original leading pos trailing endPos := prev.getTailInfo then
      let str := c.mkEmptySubstringAt endPos
      -- steal the trailing whitespace from the last node and use it for this node
      let s := s.popSyntax.pushSyntax <| prev.setTailInfo (.original leading pos str endPos)
      return finish endPos str trailing s
  -- The stack can be empty if this is either the first token, or if we are in a fresh cache.
  -- In that case we just put the hygieneInfo at the current location.
  let str := c.mkEmptySubstringAt s.pos
  finish s.pos str str s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean#L1330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c62aceb1bdb5b06756ea41f268464313ddf7d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
