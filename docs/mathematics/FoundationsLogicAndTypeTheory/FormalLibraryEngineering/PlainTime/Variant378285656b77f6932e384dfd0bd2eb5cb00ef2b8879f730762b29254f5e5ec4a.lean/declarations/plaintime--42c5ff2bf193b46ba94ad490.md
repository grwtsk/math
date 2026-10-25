# PlainTime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9a069adf15ed66236143a629b44d7b246e688b546d408f18089007e9bd17e6a",
  "kind": "structure",
  "lexical_name": "PlainTime",
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
  "slug": "plaintime--42c5ff2bf193b46ba94ad490",
  "source": {
    "blob": "36c6655b406ee223ad9e247c74a9f51ccacd387c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainTime/Variant378285656b77f6932e384dfd0bd2eb5cb00ef2b8879f730762b29254f5e5ec4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42c5ff2bf193b46ba94ad49006ca4e52ef57e05b83bca38449069e7488ea2091",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainTime/Variant378285656b77f6932e384dfd0bd2eb5cb00ef2b8879f730762b29254f5e5ec4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9a069adf15ed66236143a629b44d7b246e688b546d408f18089007e9bd17e6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PlainTime where

  /--
  `Hour` component of the `PlainTime`
  -/
  hour : Hour.Ordinal

  /--
  `Minute` component of the `PlainTime`
  -/
  minute : Minute.Ordinal

  /--
  `Second` component of the `PlainTime`
  -/
  second : Second.Ordinal true

  /--
  `Nanoseconds` component of the `PlainTime`
  -/
  nanosecond : Nanosecond.Ordinal
deriving Repr, DecidableEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainTime/Variant378285656b77f6932e384dfd0bd2eb5cb00ef2b8879f730762b29254f5e5ec4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainTime/Variant378285656b77f6932e384dfd0bd2eb5cb00ef2b8879f730762b29254f5e5ec4a.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36c6655b406ee223ad9e247c74a9f51ccacd387c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
