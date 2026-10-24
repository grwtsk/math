# decodeWitness_length_representable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5925a3a1-3491-bec8-f730-033a8a5524a9",
  "kind": "theorem",
  "lexical_name": "decodeWitness_length_representable",
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
  "slug": "decodewitness-length-representable--340c0e2f0ce1863a031c3420",
  "source": {
    "blob": "1393cef73a3d2d766b7fe755fbf73b119bee8989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CodingTheory/CanonicalBitDocumentRelations/Variante2bb401b38826c5f/BoundedDecodeWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:340c0e2f0ce1863a031c3420ee143d799fe4397010bc703114022168bcea00cf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CodingTheory/CanonicalBitDocumentRelations/Variante2bb401b38826c5f/BoundedDecodeWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5925a3a1-3491-bec8-f730-033a8a5524a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decodeWitness_length_representable
    {prefixWidth explicitMaximum : Nat}
    {document : BitDocument}
    (witness : DecodeWitness prefixWidth explicitMaximum document) :
    RepresentableLength prefixWidth witness.payload.bytes.size :=
  witness.exactEncoding.2

end GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.CanonicalBitDocumentRelations.Variante2bb401b38826c5f
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/CombinatoricsAndDiscreteMathematics/CodingTheory/CanonicalBitDocumentRelations/Variante2bb401b38826c5f/BoundedDecodeWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CodingTheory/CanonicalBitDocumentRelations/Variante2bb401b38826c5f/BoundedDecodeWitness.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1393cef73a3d2d766b7fe755fbf73b119bee8989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
