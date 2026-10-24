# convexBodyLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa15d662c5058813371e9b5a58cad759bad72c21e8e2b8ba7d5b8d3c9b336c32",
  "kind": "abbrev",
  "lexical_name": "convexBodyLT",
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
  "slug": "convexbodylt--a8aaa2b34acbccf780c42826",
  "source": {
    "blob": "40cba1711a546ee181af75306b50c3f2d773ceda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantf284863f0100eb30f16d7b933c1a3d008744115b86214b89acb9129950d0e77e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8aaa2b34acbccf780c4282608805a9331f551d6da0ed392592e92439e0e1cce",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantf284863f0100eb30f16d7b933c1a3d008744115b86214b89acb9129950d0e77e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa15d662c5058813371e9b5a58cad759bad72c21e8e2b8ba7d5b8d3c9b336c32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev convexBodyLT : Set (mixedSpace K) :=
  (Set.univ.pi (fun w : { w : InfinitePlace K // IsReal w } => ball 0 (f w))) ×ˢ
  (Set.univ.pi (fun w : { w : InfinitePlace K // IsComplex w } => ball 0 (f w)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantf284863f0100eb30f16d7b933c1a3d008744115b86214b89acb9129950d0e77e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantf284863f0100eb30f16d7b933c1a3d008744115b86214b89acb9129950d0e77e.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40cba1711a546ee181af75306b50c3f2d773ceda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
