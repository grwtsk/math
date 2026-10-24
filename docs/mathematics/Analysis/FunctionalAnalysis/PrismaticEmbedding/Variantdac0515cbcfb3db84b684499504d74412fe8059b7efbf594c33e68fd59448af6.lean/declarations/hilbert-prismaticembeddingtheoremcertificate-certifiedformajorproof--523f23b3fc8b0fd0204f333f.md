# Hilbert.PrismaticEmbeddingTheoremCertificate.certifiedForMajorProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24f669fd52781d3d19466a60aef4b71a4c45eeb63819fdd1b6ab0b7982f74396",
  "kind": "def",
  "lexical_name": "Hilbert.PrismaticEmbeddingTheoremCertificate.certifiedForMajorProof",
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
  "slug": "hilbert-prismaticembeddingtheoremcertificate-certifiedformajorproof--523f23b3fc8b0fd0204f333f",
  "source": {
    "blob": "05eadaa3adb6ba0ca166c63fed0fd01e8e30ee2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 122,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantdac0515cbcfb3db84b684499504d74412fe8059b7efbf594c33e68fd59448af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:523f23b3fc8b0fd0204f333f3d86eb576f43cff0a2fd8a6c994ff7d365c9ed39",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantdac0515cbcfb3db84b684499504d74412fe8059b7efbf594c33e68fd59448af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24f669fd52781d3d19466a60aef4b71a4c45eeb63819fdd1b6ab0b7982f74396`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Hilbert.PrismaticEmbeddingTheoremCertificate.certifiedForMajorProof
    {p : Nat}
    {P : Prismatic.BoundedPrism.{u} p}
    {X : Prismatic.PadicFormalScheme}
    {C : Prismatic.PrismaticCohomology P X}
    {E : Hilbert.PrismaticEmbedding.{u, v} C}
    (T : Hilbert.PrismaticEmbeddingTheoremCertificate E) :
    Prop :=
  E.embeddingLaw ∧
  T.selfAdjoint.selfAdjoint ∧
  T.traceClass.traceClass ∧
  T.spectralMeasure.projectionValued ∧
  T.spectralTheorem.theoremApplies ∧
  T.spectralTheorem.selfAdjoint = T.selfAdjoint ∧
  T.spectralTheorem.spectralMeasure = T.spectralMeasure ∧
  T.hodgeTateSeed.hodgeTate.boundedPrismHypothesis ∧
  T.hodgeTateSeed.hodgeTate.smoothHypothesis ∧
  T.hodgeTateSeed.hodgeTate.comparison.isIso ∧
  T.hodgeTateSeed.hodgeTate.certifiedForMajorProofWithCohomology ∧
  T.hodgeTateSeed.hodgeTate.certifiedForMajorProofWithPullbackCohomology ∧
  E.selfAdjoint? = some T.selfAdjoint ∧
  E.traceClass? = some T.traceClass ∧
  E.spectralMeasure? = some T.spectralMeasure ∧
  E.hodgeTateSeed? = some T.hodgeTateSeed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantdac0515cbcfb3db84b684499504d74412fe8059b7efbf594c33e68fd59448af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantdac0515cbcfb3db84b684499504d74412fe8059b7efbf594c33e68fd59448af6.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05eadaa3adb6ba0ca166c63fed0fd01e8e30ee2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
