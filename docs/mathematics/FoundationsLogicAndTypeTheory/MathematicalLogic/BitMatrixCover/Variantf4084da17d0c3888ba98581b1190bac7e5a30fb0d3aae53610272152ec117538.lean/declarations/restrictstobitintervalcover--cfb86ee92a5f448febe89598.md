# RestrictsToBitIntervalCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afed9e892e9d3f991ea7e658c479a87408a8049a396b5b8cb872463287b09a9c",
  "kind": "def",
  "lexical_name": "RestrictsToBitIntervalCover",
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
  "slug": "restrictstobitintervalcover--cfb86ee92a5f448febe89598",
  "source": {
    "blob": "65e018c4a7f05003cd671a74cbe28602ad8a92e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 221,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variantf4084da17d0c3888ba98581b1190bac7e5a30fb0d3aae53610272152ec117538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfb86ee92a5f448febe89598a6c793e20eeb145e5fe581a6e3b90141a49372ec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variantf4084da17d0c3888ba98581b1190bac7e5a30fb0d3aae53610272152ec117538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afed9e892e9d3f991ea7e658c479a87408a8049a396b5b8cb872463287b09a9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RestrictsToBitIntervalCover
    {M : BitMatrix} {target : BitInterval M}
    {cover : BitIntervalCover M target}
    (global : BitLookupSection M target)
    (family : CompatibleBitIntervalFamily M target cover) : Prop :=
  ∀ (piece : BitInterval M) (hpiece : piece ∈ cover.pieces)
    (i : Fin (M.rows * M.cols))
    (hpieceContains : piece.Contains i)
    (htargetContains : target.Contains i),
    global i htargetContains =
      family.sectionAt piece hpiece i hpieceContains

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variantf4084da17d0c3888ba98581b1190bac7e5a30fb0d3aae53610272152ec117538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variantf4084da17d0c3888ba98581b1190bac7e5a30fb0d3aae53610272152ec117538.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65e018c4a7f05003cd671a74cbe28602ad8a92e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
