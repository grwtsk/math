# HyperrelationRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33c3e6d48817a94184f173ccca47dc3bb4a38c790b8de179c089b9a023a78b74",
  "kind": "structure",
  "lexical_name": "HyperrelationRecord",
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
  "slug": "hyperrelationrecord--9527e3d2a132a0d14662d8fc",
  "source": {
    "blob": "238b9472a4c440be5c05d0381574ef07c8cf726c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 15,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A01ebce45d42f53b2/Variant0ab0af4406693706110b391521f5d5d96bd150066b8c3510ec1f11f77fae3a94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9527e3d2a132a0d14662d8fc2147fc0d1ee3c831f62f9154f3d5b16e05ce263e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A01ebce45d42f53b2/Variant0ab0af4406693706110b391521f5d5d96bd150066b8c3510ec1f11f77fae3a94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33c3e6d48817a94184f173ccca47dc3bb4a38c790b8de179c089b9a023a78b74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HyperrelationRecord where
  id : HyperrelationId
  kind : RelationKindId
  participants : List HyperParticipant
  ownerConceptId : Option ConceptId
  authorityName : String
  provenance : Finset StableId
  payloadDigest : Digest
  deriving DecidableEq

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A01ebce45d42f53b2/Variant0ab0af4406693706110b391521f5d5d96bd150066b8c3510ec1f11f77fae3a94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A01ebce45d42f53b2/Variant0ab0af4406693706110b391521f5d5d96bd150066b8c3510ec1f11f77fae3a94.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `238b9472a4c440be5c05d0381574ef07c8cf726c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
