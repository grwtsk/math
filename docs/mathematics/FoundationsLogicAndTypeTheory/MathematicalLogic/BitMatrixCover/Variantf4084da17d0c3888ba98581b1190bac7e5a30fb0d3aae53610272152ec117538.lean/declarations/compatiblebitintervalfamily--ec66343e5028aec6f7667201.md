# CompatibleBitIntervalFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b1e999aae21d6159c16ed2e0ffa64813d8bf666111dba53c46430887aa525ba",
  "kind": "structure",
  "lexical_name": "CompatibleBitIntervalFamily",
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
  "slug": "compatiblebitintervalfamily--ec66343e5028aec6f7667201",
  "source": {
    "blob": "65e018c4a7f05003cd671a74cbe28602ad8a92e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 206,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variantf4084da17d0c3888ba98581b1190bac7e5a30fb0d3aae53610272152ec117538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec66343e5028aec6f7667201df90f992c787b15f75b7274556ca2b20ce022719",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variantf4084da17d0c3888ba98581b1190bac7e5a30fb0d3aae53610272152ec117538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b1e999aae21d6159c16ed2e0ffa64813d8bf666111dba53c46430887aa525ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CompatibleBitIntervalFamily
    (M : BitMatrix) (target : BitInterval M)
    (cover : BitIntervalCover M target) where
  sectionAt :
    ∀ piece : BitInterval M,
      piece ∈ cover.pieces → BitLookupSection M piece
  compatibleOnOverlaps :
    ∀ (left : BitInterval M) (hleft : left ∈ cover.pieces)
      (right : BitInterval M) (hright : right ∈ cover.pieces)
      (i : Fin (M.rows * M.cols))
      (hleftContains : left.Contains i)
      (hrightContains : right.Contains i),
      sectionAt left hleft i hleftContains =
        sectionAt right hright i hrightContains

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variantf4084da17d0c3888ba98581b1190bac7e5a30fb0d3aae53610272152ec117538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variantf4084da17d0c3888ba98581b1190bac7e5a30fb0d3aae53610272152ec117538.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65e018c4a7f05003cd671a74cbe28602ad8a92e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
