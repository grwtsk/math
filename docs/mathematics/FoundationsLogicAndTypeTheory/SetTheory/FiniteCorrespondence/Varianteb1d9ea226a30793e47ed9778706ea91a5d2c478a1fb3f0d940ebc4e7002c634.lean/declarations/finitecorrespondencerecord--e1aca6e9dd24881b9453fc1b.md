# FiniteCorrespondenceRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b0b2099bb78b137034bb4666eb6604fefcd06742aafc381359cd68b3b618c76",
  "kind": "structure",
  "lexical_name": "FiniteCorrespondenceRecord",
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
  "slug": "finitecorrespondencerecord--e1aca6e9dd24881b9453fc1b",
  "source": {
    "blob": "c64388e3bcdb792e6c82c63c2b454cfad46ba4d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FiniteCorrespondence/Varianteb1d9ea226a30793e47ed9778706ea91a5d2c478a1fb3f0d940ebc4e7002c634.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1aca6e9dd24881b9453fc1b712891aeaedc3c355cb8cc0cc342bb177357517b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/FiniteCorrespondence/Varianteb1d9ea226a30793e47ed9778706ea91a5d2c478a1fb3f0d940ebc4e7002c634.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b0b2099bb78b137034bb4666eb6604fefcd06742aafc381359cd68b3b618c76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteCorrespondenceRecord
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) where
  arithmeticSourceId : String
  bitfieldEncodingId : String
  checkerId : String
  checkerVersion : String
  ordinalStratumDigest : String
  ordinalDigestMatchesCut : Prop
  ordinalDigestMatchesCutProof :
    ordinalDigestMatchesCut
  traceCertificateBoundToImmutableCut : Prop
  traceCertificateBoundProof :
    traceCertificateBoundToImmutableCut
  ordinalCodeCreatesNoArithmeticMeaning : Prop
  noninterferenceProof :
    ordinalCodeCreatesNoArithmeticMeaning

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/FiniteCorrespondence/Varianteb1d9ea226a30793e47ed9778706ea91a5d2c478a1fb3f0d940ebc4e7002c634.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FiniteCorrespondence/Varianteb1d9ea226a30793e47ed9778706ea91a5d2c478a1fb3f0d940ebc4e7002c634.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c64388e3bcdb792e6c82c63c2b454cfad46ba4d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
