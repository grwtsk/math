# InlineCandidateInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00e151ae73a91d5d1fd119fa277c2e6d0a129723e3b3fadfc709888f0a4028b5",
  "kind": "structure",
  "lexical_name": "InlineCandidateInfo",
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
  "slug": "inlinecandidateinfo--62289009f2b0da249457bfce",
  "source": {
    "blob": "202d1a11e2b2b6cdf6f3246756c341c83462fc36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineCandidate/Variant78dde468535d6b540c8ce8549548bd5a06addf7ac47ad05b69c468bfcccfd347.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62289009f2b0da249457bfce95576b9a515e4980d569d217fea8f1f69dd087ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineCandidate/Variant78dde468535d6b540c8ce8549548bd5a06addf7ac47ad05b69c468bfcccfd347.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00e151ae73a91d5d1fd119fa277c2e6d0a129723e3b3fadfc709888f0a4028b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InlineCandidateInfo where
  isLocal  : Bool
  params   : Array (Param .pure)
  /-- Value (lambda expression) of the function to be inlined. -/
  value    : Code .pure
  fType    : Expr
  args     : Array (Arg .pure)
  /-- `ifReduce = true` if the declaration being inlined was tagged with `inline_if_reduce`. -/
  ifReduce : Bool
  /-- `recursive = true` if the declaration being inline is in a mutually recursive block. -/
  recursive : Bool := false

/-- The arity (aka number of parameters) of the function to be inlined. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineCandidate/Variant78dde468535d6b540c8ce8549548bd5a06addf7ac47ad05b69c468bfcccfd347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InlineCandidate/Variant78dde468535d6b540c8ce8549548bd5a06addf7ac47ad05b69c468bfcccfd347.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `202d1a11e2b2b6cdf6f3246756c341c83462fc36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
