# certificateGatePatterns

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f42f96313a5d55a23ceb873ccb84868ed8b8295b042d5b8ff724dfb0964eaea",
  "kind": "def",
  "lexical_name": "certificateGatePatterns",
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
  "slug": "certificategatepatterns--ab653ef57133402302a44021",
  "source": {
    "blob": "445735cc7fe93e279ac0e830eaaba311dfff0e6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab653ef57133402302a44021128a435c4b584201c58562ca2cc01d45671f31ff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f42f96313a5d55a23ceb873ccb84868ed8b8295b042d5b8ff724dfb0964eaea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def certificateGatePatterns : List String := [
    "Surface.Prismatic.EdgeRelaxation.LiftCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.unitBooleanLiftCertificate_certificateAccessor",
    "Surface.Prismatic.CrystallineComparisonCertificate.certifiedForMajorProof",
    "Surface.Prismatic.CrystallineComparisonCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.HodgeTateComparisonCertificate.certifiedForMajorProof",
    "Surface.Prismatic.HodgeTateComparisonCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.DeRhamComparisonCertificate.certifiedForMajorProof",
    "Surface.Prismatic.DeRhamComparisonCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.EtaleComparisonCertificate.certifiedForMajorProof",
    "Surface.Prismatic.EtaleComparisonCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.BaseChangeComparisonCertificate.certifiedForMajorProof",
    "Surface.Prismatic.BaseChangeComparisonCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.FrobeniusImageCertificate.certifiedForMajorProof",
    "Surface.Prismatic.FrobeniusImageCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.NygaardFiltration.certificateAccessor_of_fields",
    "Surface.Prismatic.ConjugateFiltration.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.NygaardConjugateComparisonCertificate.certifiedForMajorProof",
    "Surface.Prismatic.NygaardConjugateComparisonCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.unitNygaardConjugateComparison_certificateAccessor",
    "Surface.Prismatic.PrismaticEnvelope.certifiedForMajorProof",
    "Surface.Prismatic.PrismaticEnvelope.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.EnvelopeBaseChangeCertificate.certifiedForMajorProof",
    "Surface.Prismatic.EnvelopeBaseChangeCertificate.certifiedForMajorProof_of_field",
    "Surface.Prismatic.EnvelopeFlatLocalizationCertificate.certifiedForMajorProof",
    "Surface.Prismatic.EnvelopeFlatLocalizationCertificate.certifiedForMajorProof_of_field",
    "Surface.Prismatic.PrismaticEnvelopeTheoremCertificate.certifiedForMajorProof",
    "Surface.Prismatic.PrismaticEnvelopeTheoremCertificate.certifiedForMajorProof_of_field",
    "Surface.Prismatic.unitPrismaticEnvelope_certificateAccessor",
    "Surface.Hilbert.PrismaticEmbeddingTheoremCertificate.certifiedForMajorProof",
    "Surface.Hilbert.PrismaticEmbeddingTheoremCertificate.certifiedForMajorProof_of_fields",
    "Surface.Prismatic.PrismaticHilbertEmbeddingTheoremCertificate.certifiedForMajorProof_of_fields"
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `445735cc7fe93e279ac0e830eaaba311dfff0e6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
