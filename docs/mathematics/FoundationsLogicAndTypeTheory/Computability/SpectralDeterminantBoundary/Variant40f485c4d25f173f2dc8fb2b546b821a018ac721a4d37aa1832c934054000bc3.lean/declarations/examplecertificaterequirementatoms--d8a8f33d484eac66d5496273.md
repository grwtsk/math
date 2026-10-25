# exampleCertificateRequirementAtoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d740558ae88516b2e1f05abaa2078a238fdd6e4e0dff2b0e971f80c6f2c7e0d6",
  "kind": "def",
  "lexical_name": "exampleCertificateRequirementAtoms",
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
  "slug": "examplecertificaterequirementatoms--d8a8f33d484eac66d5496273",
  "source": {
    "blob": "1371b55261c3cfac087f917bf0fec207320963f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1009,
    "line": 1000,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/SpectralDeterminantBoundary/Variant40f485c4d25f173f2dc8fb2b546b821a018ac721a4d37aa1832c934054000bc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8a8f33d484eac66d549627337e4ae78ca112581bfe73fca86e0294c399ae3c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/SpectralDeterminantBoundary/Variant40f485c4d25f173f2dc8fb2b546b821a018ac721a4d37aa1832c934054000bc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d740558ae88516b2e1f05abaa2078a238fdd6e4e0dff2b0e971f80c6f2c7e0d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1000–1009.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleCertificateRequirementAtoms : List (SpectralAtom 3) :=
  [ .squareFreeSupport exampleSquareFreeSupport
  , .valuation exampleRepeatedPrimePowerValuation
  , .spectralBoundary "example spectral determinant"
  , .prismaticBoundary (.boundaryRequest "example prismatic realization")
  , .mobiusBoundary
      { BoundaryReport.identity with
        needsTorsionWitness := true }
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/SpectralDeterminantBoundary/Variant40f485c4d25f173f2dc8fb2b546b821a018ac721a4d37aa1832c934054000bc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/SpectralDeterminantBoundary/Variant40f485c4d25f173f2dc8fb2b546b821a018ac721a4d37aa1832c934054000bc3.lean#L1000).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1371b55261c3cfac087f917bf0fec207320963f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
