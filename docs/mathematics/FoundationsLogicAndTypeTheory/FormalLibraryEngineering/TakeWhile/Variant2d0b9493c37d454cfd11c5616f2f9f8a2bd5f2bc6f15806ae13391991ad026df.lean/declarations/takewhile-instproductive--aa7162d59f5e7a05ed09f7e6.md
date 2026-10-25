# TakeWhile.instProductive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0a712275857833be2137141c39a8f5fde0684b1af74ada86d461a0988053b4c",
  "kind": "instance",
  "lexical_name": "TakeWhile.instProductive",
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
  "slug": "takewhile-instproductive--aa7162d59f5e7a05ed09f7e6",
  "source": {
    "blob": "0818588a064442741df256690c0c9ec07321adb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 227,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variant2d0b9493c37d454cfd11c5616f2f9f8a2bd5f2bc6f15806ae13391991ad026df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa7162d59f5e7a05ed09f7e66ae3073cd3df7fc3c0bf86b2172cd8262ed2af70",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variant2d0b9493c37d454cfd11c5616f2f9f8a2bd5f2bc6f15806ae13391991ad026df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0a712275857833be2137141c39a8f5fde0684b1af74ada86d461a0988053b4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance TakeWhile.instProductive [Monad m] [Iterator α m β] [Productive α m] {P} :
    Productive (TakeWhile α m β P) m :=
  by exact Productive.of_productivenessRelation instProductivenessRelation

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variant2d0b9493c37d454cfd11c5616f2f9f8a2bd5f2bc6f15806ae13391991ad026df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variant2d0b9493c37d454cfd11c5616f2f9f8a2bd5f2bc6f15806ae13391991ad026df.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0818588a064442741df256690c0c9ec07321adb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
