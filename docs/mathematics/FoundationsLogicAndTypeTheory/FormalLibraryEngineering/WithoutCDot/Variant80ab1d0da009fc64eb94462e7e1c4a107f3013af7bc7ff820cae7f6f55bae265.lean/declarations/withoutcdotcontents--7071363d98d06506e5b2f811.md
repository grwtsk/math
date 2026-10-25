# withoutCDotContents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93f2ea0b5411881b24dc323fb0a1885dcf031b12865083ece58a77fac9d48e08",
  "kind": "def",
  "lexical_name": "withoutCDotContents",
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
  "slug": "withoutcdotcontents--7071363d98d06506e5b2f811",
  "source": {
    "blob": "3f45b751f5cc44a9572bdff629164b92bee2ac94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7071363d98d06506e5b2f811288ed4b6edb5bf02e332ce62e15ef2da2fdb56f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93f2ea0b5411881b24dc323fb0a1885dcf031b12865083ece58a77fac9d48e08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def withoutCDotContents : Parser :=
  withoutPosition <|
    withoutForbidden (termParser >> optional (" :" >> optional (ppSpace >> termParser)))

/-- A set of parentheses, supporting type ascriptions, which does not process `·`.

Primarily, this is useful when quoting user-provided syntax inside parentheses, as it prevents `·`s
from the caller being interpreted in the context of `()`s from the macro. -/
@[term_parser]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f45b751f5cc44a9572bdff629164b92bee2ac94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
