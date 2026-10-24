# IsConstructible.image_of_isOpenEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8746dc81-965c-85d6-b533-ffa5de18693f",
  "kind": "lemma",
  "lexical_name": "IsConstructible.image_of_isOpenEmbedding",
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
  "slug": "isconstructible-image-of-isopenembedding--5f2c26750483acfa26199dd9",
  "source": {
    "blob": "15fe5be2b116dde295895c5f95065f3612588f49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 268,
    "path": "GRWTSK/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f2c26750483acfa26199dd9435bc9b53aadc8181619a65ecd020ee007728485",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8746dc81-965c-85d6-b533-ffa5de18693f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsConstructible.image_of_isOpenEmbedding (hfopen : IsOpenEmbedding f)
    (hfcomp : IsRetrocompact (range f)) (hs : IsConstructible s) : IsConstructible (f '' s) := by
  induction hs using IsConstructible.empty_union_induction with
  | open_retrocompact U hUopen hUcomp =>
    exact (hUcomp.image_of_isEmbedding hfopen.isEmbedding hfcomp).isConstructible <|
      hfopen.isOpenMap _ hUopen
  | union s hs t ht hs' ht' => rw [image_union]; exact hs'.union ht'
  | compl s hs hs' =>
    rw [← range_diff_image hfopen.injective]
    exact (hfcomp.isConstructible hfopen.isOpen_range).sdiff hs'

@[stacks 09YG]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15fe5be2b116dde295895c5f95065f3612588f49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
