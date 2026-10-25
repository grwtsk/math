# adaptUncacheableContextFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78c66b8b873ece4140228d2878eb00b232aa3988ff2beba9502e4f344cc7da02",
  "kind": "def",
  "lexical_name": "adaptUncacheableContextFn",
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
  "slug": "adaptuncacheablecontextfn--d4d0675ee22de2c11a2fac40",
  "source": {
    "blob": "3ce780bf73e15bd6f81a2437aee3e46bf14269c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 548,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant2df7febe6a43578b08c81ac119072f8605623e4339a4951128d1fe80a4ac32ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4d0675ee22de2c11a2fac405db603340d8d31508933373922b276e433ec9520",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant2df7febe6a43578b08c81ac119072f8605623e4339a4951128d1fe80a4ac32ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78c66b8b873ece4140228d2878eb00b232aa3988ff2beba9502e4f344cc7da02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adaptUncacheableContextFn (f : ParserContextCore → ParserContextCore) (p : ParserFn) : ParserFn :=
  withResetCacheFn (fun c s => p ⟨f c.toParserContextCore⟩ s)

/--
Run `p` and record result in parser cache for any further invocation with this `parserName`, parser context, and parser state.
`p` cannot access syntax stack elements pushed before the invocation in order to make caching independent of parser history.
As this excludes trailing parsers from being cached, we also reset `lhsPrec`, which is not read but set by leading parsers, to 0
in order to increase cache hits. Finally, `errorMsg` is also reset to `none` as a leading parser should not be called in the first
place if there was an error.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant2df7febe6a43578b08c81ac119072f8605623e4339a4951128d1fe80a4ac32ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant2df7febe6a43578b08c81ac119072f8605623e4339a4951128d1fe80a4ac32ee.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ce780bf73e15bd6f81a2437aee3e46bf14269c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
