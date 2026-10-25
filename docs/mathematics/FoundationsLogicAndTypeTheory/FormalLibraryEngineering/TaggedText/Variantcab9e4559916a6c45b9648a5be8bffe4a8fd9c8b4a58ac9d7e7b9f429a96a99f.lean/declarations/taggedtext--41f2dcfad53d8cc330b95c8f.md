# TaggedText

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d4a25b03e143684b3951197b3235f6c6e82fa4af2cf491b09b361b3ea38e20f",
  "kind": "inductive",
  "lexical_name": "TaggedText",
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
  "slug": "taggedtext--41f2dcfad53d8cc330b95c8f",
  "source": {
    "blob": "8b558bf91aaf06b7c2e52275d00a9510cd85608e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41f2dcfad53d8cc330b95c8fa78dc428780e465d3850513609e813b9f8f352ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d4a25b03e143684b3951197b3235f6c6e82fa4af2cf491b09b361b3ea38e20f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive TaggedText (α : Type u) where
  | text   : String → TaggedText α
  /-- Invariants:
  - non-empty
  - no adjacent `text` elements (they should be collapsed)
  - no directly nested `append`s (but `append #[tag _ (append ..)]` is okay) -/
  | append : Array (TaggedText α) → TaggedText α
  | tag    : α → TaggedText α → TaggedText α
  deriving Inhabited, BEq, Repr, FromJson, ToJson

namespace TaggedText

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b558bf91aaf06b7c2e52275d00a9510cd85608e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
