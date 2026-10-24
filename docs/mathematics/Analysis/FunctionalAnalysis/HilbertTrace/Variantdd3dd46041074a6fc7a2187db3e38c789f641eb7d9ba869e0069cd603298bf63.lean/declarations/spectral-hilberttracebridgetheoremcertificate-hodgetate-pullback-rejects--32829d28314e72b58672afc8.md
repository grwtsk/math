# Spectral.HilbertTraceBridgeTheoremCertificate.hodgeTate_pullback_rejects_externalAssumption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e269e141-b8f5-3b77-be83-fd57fb88bca4",
  "kind": "theorem",
  "lexical_name": "Spectral.HilbertTraceBridgeTheoremCertificate.hodgeTate_pullback_rejects_externalAssumption",
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
  "slug": "spectral-hilberttracebridgetheoremcertificate-hodgetate-pullback-rejects--32829d28314e72b58672afc8",
  "source": {
    "blob": "eada860dda5c51201dfc67ad60239b24f5538870",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 124,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32829d28314e72b58672afc82962ab616992870abbb7e6bfffc37fc06cf2f0d2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e269e141-b8f5-3b77-be83-fd57fb88bca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Spectral.HilbertTraceBridgeTheoremCertificate.hodgeTate_pullback_rejects_externalAssumption
    {B : Spectral.HilbertTraceBridge.{u, v}}
    (C : Spectral.HilbertTraceBridgeTheoremCertificate B) :
    (∀ S : Prismatic.CertifiedPullbackStructureSheafOfRings
        C.spectralPrismaticInput.input.certificate.hilbertCertificate.hodgeTateSeed.P
        C.spectralPrismaticInput.input.certificate.hilbertCertificate.hodgeTateSeed.X,
      C.spectralPrismaticInput.input.certificate.hilbertCertificate.hodgeTateSeed.C.ODelta_pullbackSheaf? =
          some S →
        S.constructionStatus ≠
          Prismatic.ConstructionStatus.externalAssumption) ∧
    (∀ S : Prismatic.CertifiedPullbackStructureSheafOfRings
        C.spectralPrismaticInput.input.certificate.hilbertCertificate.hodgeTateSeed.P
        C.spectralPrismaticInput.input.certificate.hilbertCertificate.hodgeTateSeed.X,
      C.spectralPrismaticInput.input.certificate.hilbertCertificate.hodgeTateSeed.C.ODeltaBar_pullbackSheaf? =
          some S →
        S.constructionStatus ≠
          Prismatic.ConstructionStatus.externalAssumption) :=
  C.spectralPrismaticInput.input.hodgeTate_pullback_rejects_externalAssumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eada860dda5c51201dfc67ad60239b24f5538870` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
