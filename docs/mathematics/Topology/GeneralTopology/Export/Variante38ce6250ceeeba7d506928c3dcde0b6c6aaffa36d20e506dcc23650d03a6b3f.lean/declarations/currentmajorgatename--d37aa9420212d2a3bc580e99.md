# currentMajorGateName?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b6d0671e04bf25f63de1e6deb9ff0be34989bdb9425688272a58a350bbef6a5",
  "kind": "def",
  "lexical_name": "currentMajorGateName?",
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
  "slug": "currentmajorgatename--d37aa9420212d2a3bc580e99",
  "source": {
    "blob": "16c28f1b9066d275124ace0b42c3db135d4a0f92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/Export/Variante38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d37aa9420212d2a3bc580e99f04c2c36f8633f41ed70c790234ce435c4f4033a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Export/Variante38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b6d0671e04bf25f63de1e6deb9ff0be34989bdb9425688272a58a350bbef6a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def currentMajorGateName? (name : String) : Option String :=
  if name ∈ prismaticTheoremSeedGateNames then
    some name
  else if name = "Surface.Hilbert.PrismaticEmbedding" then
    some "Hilbert.PrismaticEmbedding"
  else if name.startsWith "Surface.Hilbert.PrismaticEmbeddingTheoremCertificate" then
    some "Hilbert.PrismaticEmbeddingTheoremCertificate"
  else if name.startsWith "Surface.Arithmetic.GaloisCohomology.FiniteH1" then
    some "Arithmetic.GaloisCohomology.FiniteH1"
  else if name.startsWith "Surface.Arithmetic.GaloisCohomology.resFiniteH1" then
    some "Arithmetic.GaloisCohomology.resFiniteH1"
  else if name.startsWith "Surface.Arithmetic.GaloisCohomology.FiniteSelmerProblem" then
    some "Arithmetic.GaloisCohomology.FiniteSelmerProblem"
  else if name.startsWith "Surface.Arithmetic.GaloisCohomology.FiniteKummerSelmerData" then
    some "Arithmetic.GaloisCohomology.FiniteKummerSelmerData"
  else if name.startsWith "Surface.Prismatic.PrismaticHilbertEmbeddingTheoremCertificate" then
    some "Prismatic.PrismaticHilbertEmbeddingTheoremCertificate"
  else if name.startsWith "Surface.Prismatic.EdgeRelaxation.LiftCertificate" then
    some "Prismatic.EdgeRelaxation.LiftCertificate"
  else if name = "Surface.Prismatic.unitBooleanLiftCertificate_certificateAccessor" then
    some "Prismatic.unitBooleanLiftCertificate_certificateAccessor"
  else if name.startsWith "Surface.Prismatic.PrismaticCohomology.admissibleForMajorProofInput" then
    some "Prismatic.PrismaticCohomology.admissibleForMajorProofInput"
  else if name.startsWith "Surface.Prismatic.CrystallineComparisonCertificate.certifiedForMajorProof" then
    some "Prismatic.CrystallineComparisonCertificate.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.HodgeTateComparisonCertificate.certifiedForMajorProof" then
    some "Prismatic.HodgeTateComparisonCertificate.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.DeRhamComparisonCertificate.certifiedForMajorProof" then
    some "Prismatic.DeRhamComparisonCertificate.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.EtaleComparisonCertificate.certifiedForMajorProof" then
    some "Prismatic.EtaleComparisonCertificate.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.BaseChangeComparisonCertificate.certifiedForMajorProof" then
    some "Prismatic.BaseChangeComparisonCertificate.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.FrobeniusImageCertificate.certifiedForMajorProof" then
    some "Prismatic.FrobeniusImageCertificate.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.NygaardConjugateComparisonCertificate.certifiedForMajorProof" then
    some "Prismatic.NygaardConjugateComparisonCertificate.certifiedForMajorProof"
  else if name = "Surface.Prismatic.unitNygaardConjugateComparison_certificateAccessor" then
    some "Prismatic.unitNygaardConjugateComparison_certificateAccessor"
  else if name.startsWith "Surface.Prismatic.PrismaticEnvelope.certifiedForMajorProof" then
    some "Prismatic.PrismaticEnvelope.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.EnvelopeBaseChangeCertificate.certifiedForMajorProof" then
    some "Prismatic.EnvelopeBaseChangeCertificate.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.EnvelopeFlatLocalizationCertificate.certifiedForMajorProof" then
    some "Prismatic.EnvelopeFlatLocalizationCertificate.certifiedForMajorProof"
  else if name.startsWith "Surface.Prismatic.PrismaticEnvelopeTheoremCertificate.certifiedForMajorProof" then
    some "Prismatic.PrismaticEnvelopeTheoremCertificate.certifiedForMajorProof"
  else if name = "Surface.Prismatic.unitPrismaticEnvelope_certificateAccessor" then
    some "Prismatic.unitPrismaticEnvelope_certificateAccessor"
  else if name.startsWith "Surface.Hilbert.TraceFormulaTheoremCertificate" then
    some "Hilbert.TraceFormulaTheoremCertificate"
  else if name.startsWith "Surface.Flow.ConditionalHilbertTraceFormulaTheoremCertificate" then
    some "Flow.ConditionalHilbertTraceFormulaTheoremCertificate"
  else if name.startsWith "Surface.Homology.KakeyaTubeCoverCertificate" then
    some "Homology.KakeyaTubeCoverCertificate"
  else if name = "Surface.Homology.standardKakeyaTubeCoverRefined_finiteStructuralInput" then
    some "Homology.standardKakeyaTubeCoverRefined_finiteStructuralInput"
  else if name = "Surface.Spectral.PackedPrismaticHilbertTheoremInput" then
    some "Spectral.PackedPrismaticHilbertTheoremInput"
  else if name.startsWith "Surface.Spectral.HilbertTraceBridgeTheoremCertificate" then
    some "Spectral.HilbertTraceBridgeTheoremCertificate"
  else if name = "Surface.Flow.ConditionalHilbertTraceFormulaScaffold.theoremReady" then
    some "Flow.ConditionalHilbertTraceFormulaScaffold.theoremReady"
  else if name = "Surface.Flow.TraceTriple.theoremReady" then
    some "Flow.TraceTriple.theoremReady"
  else if name = "Surface.Arithmetic.EllipticCurve.BSD.PackedSmoothBSDTheoremInput" then
    some "Arithmetic.EllipticCurve.BSD.PackedSmoothBSDTheoremInput"
  else if certificateGatePatterns.any (fun pattern =>
      manifestGatePatternMatches pattern name) then
    some "certificate gate"
  else
    none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Export/Variante38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Export/Variante38ce6250ceeeba7d506928c3dcde0b6c6aaffa36d20e506dcc23650d03a6b3f.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16c28f1b9066d275124ace0b42c3db135d4a0f92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
