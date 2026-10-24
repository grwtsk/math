# Hilbert.PrismaticEmbeddingTheoremCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:278da49402605da2409aea5ac0e16b1d30c054df4132cf4327072fa54a95242f",
  "kind": "structure",
  "lexical_name": "Hilbert.PrismaticEmbeddingTheoremCertificate",
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
  "slug": "hilbert-prismaticembeddingtheoremcertificate--9aae6cbd58a45431987578fc",
  "source": {
    "blob": "51c8df5c1fee0c360a68ef4c108ef6013c96b6cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 91,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9aae6cbd58a45431987578fce7de8d987539b541e2d9bdc8255c4280a3bab883",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:278da49402605da2409aea5ac0e16b1d30c054df4132cf4327072fa54a95242f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Hilbert.PrismaticEmbeddingTheoremCertificate
    {p : Nat}
    {P : Prismatic.BoundedPrism.{u} p}
    {X : Prismatic.PadicFormalScheme}
    {C : Prismatic.PrismaticCohomology P X}
    (E : Hilbert.PrismaticEmbedding.{u, v} C) where
  selfAdjoint : Hilbert.SelfAdjointCertificate E.operator
  selfAdjoint_matches :
    E.selfAdjoint? = some selfAdjoint
  traceClass : Hilbert.TraceClassCertificate E.operator
  traceClass_matches :
    E.traceClass? = some traceClass
  spectralMeasure : Hilbert.SpectralMeasure E.operator
  spectralMeasure_matches :
    E.spectralMeasure? = some spectralMeasure
  spectralTheorem : Hilbert.SpectralTheoremCertificate E.operator
  spectralTheorem_uses_selfAdjoint :
    spectralTheorem.selfAdjoint = selfAdjoint
  spectralTheorem_uses_spectralMeasure :
    spectralTheorem.spectralMeasure = spectralMeasure
  hodgeTateSeed : Prismatic.HodgeTateTheoremSeed.{u}
  hodgeTateSeed_matches :
    E.hodgeTateSeed? = some hodgeTateSeed
  hodgeTateComparison_isIso :
    hodgeTateSeed.hodgeTate.comparison.isIso
  hodgeTateWithCohomology :
    hodgeTateSeed.hodgeTate.certifiedForMajorProofWithCohomology
  hodgeTateWithPullbackCohomology :
    hodgeTateSeed.hodgeTate.certifiedForMajorProofWithPullbackCohomology
  boundary : List String

/--
Major-proof quality predicate for prismatic Hilbert embeddings.

The predicate deliberately mentions the witness propositions themselves, not
only `Option.isSome` flags.  It therefore prevents finite symbolic embeddings
from entering a theorem cone as Hilbert-space proof data unless the analytic and
prismatic certificates are present.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantbd09a24f4e429ff595bc9195bb2eae0963ac296f8fa3b241bb24a9f86aefdd18.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51c8df5c1fee0c360a68ef4c108ef6013c96b6cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
