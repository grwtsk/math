# TaggedText

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79c9706e13dc3445ce5f714074f09a4ce2469c69ccd0a4d3d6dffc7213bcb9fa",
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
  "slug": "taggedtext--c799086fdcad1c79cef1ee2f",
  "source": {
    "blob": "959f82bb12597895f262160f5e077c95c40623d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variant2e29a5d2d3b7a38a416fbfdf26d7efc10f1634106dde7757198776754d19079b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c799086fdcad1c79cef1ee2f5d9e0a4cf7fe7ccb2d2df27b4b9d78a2f3541f8f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variant2e29a5d2d3b7a38a416fbfdf26d7efc10f1634106dde7757198776754d19079b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79c9706e13dc3445ce5f714074f09a4ce2469c69ccd0a4d3d6dffc7213bcb9fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–41.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variant2e29a5d2d3b7a38a416fbfdf26d7efc10f1634106dde7757198776754d19079b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variant2e29a5d2d3b7a38a416fbfdf26d7efc10f1634106dde7757198776754d19079b.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `959f82bb12597895f262160f5e077c95c40623d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
