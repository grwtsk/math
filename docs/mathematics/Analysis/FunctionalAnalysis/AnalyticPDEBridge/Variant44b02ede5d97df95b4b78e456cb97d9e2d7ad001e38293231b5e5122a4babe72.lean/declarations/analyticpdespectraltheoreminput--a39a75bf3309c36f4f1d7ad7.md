# AnalyticPDESpectralTheoremInput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72b08459aab6ed5e76c5f4fc11f27d849925a953032cc09c056af4b3b00b54ba",
  "kind": "structure",
  "lexical_name": "AnalyticPDESpectralTheoremInput",
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
  "slug": "analyticpdespectraltheoreminput--a39a75bf3309c36f4f1d7ad7",
  "source": {
    "blob": "e9f12b9d82af71be74c7a6ddadcf3bdae996733f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 71,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a39a75bf3309c36f4f1d7ad7defd75afea63e3a2003fd968bf6643f21f43d5a6",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72b08459aab6ed5e76c5f4fc11f27d849925a953032cc09c056af4b3b00b54ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AnalyticPDESpectralTheoremInput
    {H : Hilbert.Space.{u, v}}
    (T : Hilbert.LinearOperator H H) where
  finiteConvergence :
    FiniteGraphLaplacianConvergenceCertificate T
  finiteConvergenceCertified :
    finiteConvergence.certifiedForHilbertEvidence

  theoremGates : AnalyticPDETheoremGates
  theoremGatesCertified :
    theoremGates.certifiedForMajorProof

  analyticHeat : Flow.AnalyticHeatFlowCertificate
  analyticHeatCertified :
    analyticHeat.certifiedForMajorProof

  ricci : Flow.RicciFlowTheoremCertificate
  ricciCertified :
    ricci.certifiedForMajorProof

  orientedFlatness :
    Homology.OrientedFlatnessCertificate
  orientedFlatnessCertified :
    orientedFlatness.certifiedForMajorProof

  heatOperatorMatchesHilbertLimit : Prop
  heatOperatorMatchesHilbertLimitCertified :
    heatOperatorMatchesHilbertLimit

  ricciGeometryCompatibleWithHilbertLimit : Prop
  ricciGeometryCompatibleWithHilbertLimitCertified :
    ricciGeometryCompatibleWithHilbertLimit

  noSpectralTheoremFromFinitePDEDataAlone : Prop
  noSpectralTheoremFromFinitePDEDataAloneCertified :
    noSpectralTheoremFromFinitePDEDataAlone

  boundary : List String

/-- Major-proof predicate for analytic PDE spectral bridge input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9f12b9d82af71be74c7a6ddadcf3bdae996733f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
