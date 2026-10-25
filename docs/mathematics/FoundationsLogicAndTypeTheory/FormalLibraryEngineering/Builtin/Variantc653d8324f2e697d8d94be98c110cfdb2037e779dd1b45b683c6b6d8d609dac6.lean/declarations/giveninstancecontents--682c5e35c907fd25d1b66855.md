# givenInstanceContents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7eff3f29412ec4490ff7b51cecdc8d7aca129b26cec562e1eac655bca246ffd",
  "kind": "def",
  "lexical_name": "givenInstanceContents",
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
  "slug": "giveninstancecontents--682c5e35c907fd25d1b66855",
  "source": {
    "blob": "128001ebaa848e230bfbb1d7ad55d36ebf90f010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 653,
    "line": 631,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:682c5e35c907fd25d1b66855f512baf8664318091fb120e18de40bfbbc768acb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7eff3f29412ec4490ff7b51cecdc8d7aca129b26cec562e1eac655bca246ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 631–653.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def givenInstanceContents : ParserFn :=
  whitespace >>
  sepBy1Fn false
    (nodeFn nullKind
     (optionalFn (atomicFn (identFn >> symbolFn ":")) >>
       termParser.fn))
    (symbolFn ",")

/--
An instance metavariable to be discussed in the remainder of the docstring.

This is similar to {given}, but the resulting variable is marked for instance synthesis
(with `BinderInfo.instImplicit`), and the name is optional.

There are two syntaxes that can be used:
 * `` {givenInstance}`T` `` establishes an unnamed instance of type `T`.
 * `` {givenInstance}`x : T` `` establishes a named instance `x` of type `T`.

Additionally, the contents of the code literal can be repeated, with comma separators.

If the `show` flag is `false` (default `true`), then the instance is not shown in the docstring.
-/
@[builtin_doc_role]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean#L631).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `128001ebaa848e230bfbb1d7ad55d36ebf90f010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
