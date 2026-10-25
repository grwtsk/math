# MatcherInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42cd18cc59a1651675ee10b01ed47a941441777a0a20321f35d2de3ba577d7ee",
  "kind": "structure",
  "lexical_name": "MatcherInfo",
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
  "slug": "matcherinfo--0e8308c1b3087d62c811fdd2",
  "source": {
    "blob": "bbe5b155ea877c3ef5104f9712c8074b5bde6447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatcherInfo/Varianta86722f5b16e65b828ca6b5f7e6fb2584468dfc844aaa2f96e4ba89bc750b10a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e8308c1b3087d62c811fdd28689472ae858b81c291852f9d6ec8d4a787e4095",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatcherInfo/Varianta86722f5b16e65b828ca6b5f7e6fb2584468dfc844aaa2f96e4ba89bc750b10a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42cd18cc59a1651675ee10b01ed47a941441777a0a20321f35d2de3ba577d7ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MatcherInfo where
  /-- Number of parameters -/
  numParams    : Nat
  /-- Number of discriminants -/
  numDiscrs    : Nat
  /-- Parameter structure information for each alternative -/
  altInfos     : Array AltParamInfo
  /--
  `uElimPos?` is `some pos` when the matcher can eliminate in different universe levels, and
  `pos` is the position of the universe level parameter that specifies the elimination universe.
  It is `none` if the matcher only eliminates into `Prop`.
  -/
  uElimPos?    : Option Nat
  /--
  `discrInfos[i] = { hName? := some h }` if the i-th discriminant was annotated with `h :`.
  -/
  discrInfos   : Array DiscrInfo
  /--
  (Conservative approximation of) which alternatives may overlap another.
  -/
  overlaps     : Overlaps
deriving Inhabited, Repr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatcherInfo/Varianta86722f5b16e65b828ca6b5f7e6fb2584468dfc844aaa2f96e4ba89bc750b10a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatcherInfo/Varianta86722f5b16e65b828ca6b5f7e6fb2584468dfc844aaa2f96e4ba89bc750b10a.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe5b155ea877c3ef5104f9712c8074b5bde6447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
