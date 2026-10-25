# nonsquareResidueLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa60f67cd57a398897e9b63c15c6d235f93cd11080f5bea9f4316936590d0c1f",
  "kind": "def",
  "lexical_name": "nonsquareResidueLocus",
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
  "slug": "nonsquareresiduelocus--63806351e65dc8e39b1205e7",
  "source": {
    "blob": "500210eee5d74be532306923a3be4f0dedac0594",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 155,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticBitMatrixResidueLoci/Variant7733d45cbf7c04eacb865aa90869ef3d0af604f7a8c6e8646b756b27f8006596.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63806351e65dc8e39b1205e7307a5e294ad5e37ca3c2aa297ca3d2526fdd570d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticBitMatrixResidueLoci/Variant7733d45cbf7c04eacb865aa90869ef3d0af604f7a8c6e8646b756b27f8006596.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa60f67cd57a398897e9b63c15c6d235f93cd11080f5bea9f4316936590d0c1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nonsquareResidueLocus :
    EllipticBitMatrixResidueLocus sampleCompressedString :=
  { slice := sampleSlice
    carrier := exampleCarrier
    x := 1
    fiberKind := quadraticResidueFiberKind exampleCoefficients 1
    truthToken := reduceFiberOneByOne exampleCoefficients 1
    projectionMode := BitResidueProjectionMode.boundaryAdmitted
    residueBit :=
      bitResidueProjection
        BitResidueProjectionMode.boundaryAdmitted
        (reduceFiberOneByOne exampleCoefficients 1)
    finiteLocalOnly := exampleCarrier_finiteLocalAuthority }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticBitMatrixResidueLoci/Variant7733d45cbf7c04eacb865aa90869ef3d0af604f7a8c6e8646b756b27f8006596.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticBitMatrixResidueLoci/Variant7733d45cbf7c04eacb865aa90869ef3d0af604f7a8c6e8646b756b27f8006596.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `500210eee5d74be532306923a3be4f0dedac0594` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
