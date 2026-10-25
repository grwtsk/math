# StrictCompatibleFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73927727c071ed2e831d280e0f568447645d13b73f0b6a477eec08518fb6e9ff",
  "kind": "structure",
  "lexical_name": "StrictCompatibleFamily",
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
  "slug": "strictcompatiblefamily--1bebc860b5fc4b21200a9c0c",
  "source": {
    "blob": "39efd6d5a74dbd889220e00bb7091a30e7021704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant54ddf5d9cb4766d09b6cb5cfa8ddcfb20cf2cb2fd9a6a5aeba966b73d1064e7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bebc860b5fc4b21200a9c0ccccb098f4f4acd7fd5f69b4e0b5462f8e8884d09",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant54ddf5d9cb4766d09b6cb5cfa8ddcfb20cf2cb2fd9a6a5aeba966b73d1064e7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73927727c071ed2e831d280e0f568447645d13b73f0b6a477eec08518fb6e9ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StrictCompatibleFamily {α : Type}
    (s : CompressedString α) {slice : Slice (decode s)}
    (cover : Cover slice) where
  sectionAt :
    ∀ piece : Slice (decode s),
      piece ∈ cover.pieces → LookupSection s piece
  agreesOnOverlap :
    ∀ (left : Slice (decode s)) (hleft : left ∈ cover.pieces)
      (right : Slice (decode s)) (hright : right ∈ cover.pieces)
      (i : Fin (decode s).length)
      (hleftContains : Slice.containsFin left i)
      (hrightContains : Slice.containsFin right i),
      sectionAt left hleft i hleftContains =
        sectionAt right hright i hrightContains

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant54ddf5d9cb4766d09b6cb5cfa8ddcfb20cf2cb2fd9a6a5aeba966b73d1064e7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StrictSheafSurface/Variant54ddf5d9cb4766d09b6cb5cfa8ddcfb20cf2cb2fd9a6a5aeba966b73d1064e7c.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39efd6d5a74dbd889220e00bb7091a30e7021704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
