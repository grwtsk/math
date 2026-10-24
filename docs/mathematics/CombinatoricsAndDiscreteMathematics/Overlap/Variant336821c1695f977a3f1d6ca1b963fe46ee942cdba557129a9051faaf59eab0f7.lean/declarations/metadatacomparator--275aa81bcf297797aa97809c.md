# MetadataComparator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a6d3b55892810e48b3a7d677a150b0a5ed6e23469e75ecbcf53554cd28b3600",
  "kind": "structure",
  "lexical_name": "MetadataComparator",
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
  "slug": "metadatacomparator--275aa81bcf297797aa97809c",
  "source": {
    "blob": "c8f476b4751b0450ba0e63a73b2cf4e42aa09354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Overlap/Variant336821c1695f977a3f1d6ca1b963fe46ee942cdba557129a9051faaf59eab0f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:275aa81bcf297797aa97809c0c934da78198302027e8e446bd5086965a0df8b3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Overlap/Variant336821c1695f977a3f1d6ca1b963fe46ee942cdba557129a9051faaf59eab0f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a6d3b55892810e48b3a7d677a150b0a5ed6e23469e75ecbcf53554cd28b3600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MetadataComparator
    (cut : EvidenceCut)
    (left right : Finset (Span cut.text))
    (context : ContextId) where
  compare :
    ∀ metadataType,
      MetadataProfile cut left context →
      MetadataProfile cut right context →
      FieldOverlap metadataType
  compatibleTypesOnly :
    ∀ metadataType leftProfile rightProfile,
      (compare metadataType leftProfile rightProfile).field =
        metadataType

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Overlap/Variant336821c1695f977a3f1d6ca1b963fe46ee942cdba557129a9051faaf59eab0f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Overlap/Variant336821c1695f977a3f1d6ca1b963fe46ee942cdba557129a9051faaf59eab0f7.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8f476b4751b0450ba0e63a73b2cf4e42aa09354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
