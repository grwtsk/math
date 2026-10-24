# RepresentationRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7adc5a22b55506c1ddad72f9204d0ebb0e181895aa6ead9613d1ca92d29bdb3",
  "kind": "structure",
  "lexical_name": "RepresentationRecord",
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
  "slug": "representationrecord--ebf91662c635f6daf015c95e",
  "source": {
    "blob": "f3e6969adbf7bc8924c8ff0a6680977433e28a9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RepresentationMedium/Variantf096dc6d43886b2861d67a5ff76f9b1f6c1fd350a1160cbd57d9ae635be208d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebf91662c635f6daf015c95e595fd107fb42fbd44af154064a10a24b8e332c02",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RepresentationMedium/Variantf096dc6d43886b2861d67a5ff76f9b1f6c1fd350a1160cbd57d9ae635be208d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7adc5a22b55506c1ddad72f9204d0ebb0e181895aa6ead9613d1ca92d29bdb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RepresentationRecord where
  id : RepresentationId
  conceptId : ConceptId
  medium : RepresentationMedium
  sourceDomain : StableId
  targetDomain : StableId
  exactness : RepresentationExactness
  preserves : Finset RepresentationInvariant
  forgets : Finset RepresentationInvariant
  normalization : Option StableId
  roundTripCertificate : Option CertificateId
  authority : RepresentationAuthority
  renderer : Option StableId
  provenance : Finset StableId
  deriving DecidableEq

end Mathematics.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RepresentationMedium/Variantf096dc6d43886b2861d67a5ff76f9b1f6c1fd350a1160cbd57d9ae635be208d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RepresentationMedium/Variantf096dc6d43886b2861d67a5ff76f9b1f6c1fd350a1160cbd57d9ae635be208d2.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3e6969adbf7bc8924c8ff0a6680977433e28a9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
