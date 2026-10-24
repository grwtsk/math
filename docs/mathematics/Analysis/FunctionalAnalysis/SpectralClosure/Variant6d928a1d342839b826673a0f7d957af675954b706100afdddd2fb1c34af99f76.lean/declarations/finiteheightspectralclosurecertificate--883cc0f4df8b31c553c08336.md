# FiniteHeightSpectralClosureCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54aaf360cd6ec906f7fdc69730a2795c411d8a85e5a4105e6a185f3154c18527",
  "kind": "structure",
  "lexical_name": "FiniteHeightSpectralClosureCertificate",
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
  "slug": "finiteheightspectralclosurecertificate--883cc0f4df8b31c553c08336",
  "source": {
    "blob": "e66af66c2fdda972a92c0e4728fe3ffe3f08c33b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 25,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralClosure/Variant6d928a1d342839b826673a0f7d957af675954b706100afdddd2fb1c34af99f76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:883cc0f4df8b31c553c08336da93f4f4aa9c9382e673738be7301540868e71cb",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpectralClosure/Variant6d928a1d342839b826673a0f7d957af675954b706100afdddd2fb1c34af99f76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54aaf360cd6ec906f7fdc69730a2795c411d8a85e5a4105e6a185f3154c18527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteHeightSpectralClosureCertificate
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime)
    (cut : CriticalStripCut)
    (Measure : Type uMeasure)
    (Test : Type uTest) where
  finiteHeightRH :
    FiniteHeightRHCertificate authority cut
  spectralModel :
    SelfAdjointSpectralCut
  matching :
    FiniteSpectralMatchingCertificate.{uAnalytic, uSpectral}
      authority
  modelMatchesMatching : Prop
  modelMatchesMatchingProof :
    modelMatchesMatching
  analyticCount : Nat
  spectralCount : Nat
  countEqual :
    analyticCount = spectralCount
  traceIdentity :
    CertifiedArithmeticTraceIdentity Test
  testClass :
    MeasureDeterminingTestClass Measure Test
  analyticZeroMeasure : Measure
  spectralMeasure : Measure
  testEquality :
    ∀ test,
      testClass.evaluate test analyticZeroMeasure =
        testClass.evaluate test spectralMeasure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpectralClosure/Variant6d928a1d342839b826673a0f7d957af675954b706100afdddd2fb1c34af99f76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpectralClosure/Variant6d928a1d342839b826673a0f7d957af675954b706100afdddd2fb1c34af99f76.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e66af66c2fdda972a92c0e4728fe3ffe3f08c33b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
