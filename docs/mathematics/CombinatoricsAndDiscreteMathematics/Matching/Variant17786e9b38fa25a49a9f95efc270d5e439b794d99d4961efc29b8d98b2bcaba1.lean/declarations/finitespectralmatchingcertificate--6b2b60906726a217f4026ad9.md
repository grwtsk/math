# FiniteSpectralMatchingCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a044a43a7095bf57a555732a1f5cb7026115d996c9d91b85c1afea8ac0a82230",
  "kind": "structure",
  "lexical_name": "FiniteSpectralMatchingCertificate",
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
  "slug": "finitespectralmatchingcertificate--6b2b60906726a217f4026ad9",
  "source": {
    "blob": "4c834ffa0cc7d46acc1cc39090009f4c06a29661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 16,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Matching/Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b2b60906726a217f4026ad919bc74907c65955061045eb3f58da6564d4b8854",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Matching/Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a044a43a7095bf57a555732a1f5cb7026115d996c9d91b85c1afea8ac0a82230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteSpectralMatchingCertificate
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime) where
  AnalyticVertex : Type uAnalytic
  SpectralVertex : Type uSpectral
  analyticFintype : Fintype AnalyticVertex
  analyticDecEq : DecidableEq AnalyticVertex
  spectralFintype : Fintype SpectralVertex
  spectralDecEq : DecidableEq SpectralVertex
  analytic :
    AnalyticVertex →
      CertifiedZeroRegion authority
  spectral :
    SpectralVertex → SpectralCandidate
  toSpectral :
    AnalyticVertex → SpectralVertex
  toAnalytic :
    SpectralVertex → AnalyticVertex
  analyticRoundTrip :
    ∀ analyticVertex,
      toAnalytic (toSpectral analyticVertex) =
        analyticVertex
  spectralRoundTrip :
    ∀ spectralVertex,
      toSpectral (toAnalytic spectralVertex) =
        spectralVertex
  edgeCertified :
    ∀ analyticVertex,
      LocalCorrespondenceCertificate
        (analytic analyticVertex)
        (spectral (toSpectral analyticVertex))

attribute [instance]
  FiniteSpectralMatchingCertificate.analyticFintype
  FiniteSpectralMatchingCertificate.analyticDecEq
  FiniteSpectralMatchingCertificate.spectralFintype
  FiniteSpectralMatchingCertificate.spectralDecEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Matching/Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Matching/Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c834ffa0cc7d46acc1cc39090009f4c06a29661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
