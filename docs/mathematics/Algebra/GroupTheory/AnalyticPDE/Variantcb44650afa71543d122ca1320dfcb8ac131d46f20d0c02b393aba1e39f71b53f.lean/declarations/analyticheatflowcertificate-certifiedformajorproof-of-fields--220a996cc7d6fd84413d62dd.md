# AnalyticHeatFlowCertificate.certifiedForMajorProof_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc4fe412-b185-ae29-1270-cc72dabdffa1",
  "kind": "theorem",
  "lexical_name": "AnalyticHeatFlowCertificate.certifiedForMajorProof_of_fields",
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
  "slug": "analyticheatflowcertificate-certifiedformajorproof-of-fields--220a996cc7d6fd84413d62dd",
  "source": {
    "blob": "727ece9fa37a82e6764c7d9b19ededeb8e7061cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 95,
    "path": "GRWTSK/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:220a996cc7d6fd84413d62dd10b6a135888cad4f12b819cf932560ada56007b1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc4fe412-b185-ae29-1270-cc72dabdffa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticHeatFlowCertificate.certifiedForMajorProof_of_fields
    (C : AnalyticHeatFlowCertificate) :
    C.certifiedForMajorProof := by
  exact
    ⟨C.kernelNormalized,
     C.kernelPositivityPreserving,
     C.kernelSound,
     C.semigroupIdentity,
     C.semigroupComposition,
     C.transportSound,
     C.preservesDeclaredDomain,
     C.smoothingSound,
     C.smoothingClaimCertified,
     C.massPreservationCertified,
     C.contractionOrEnergyEstimateCertified,
     C.analyticHeatEquationAppliesCertified,
     C.noAnalyticHeatFromFiniteDescriptorAloneCertified⟩

/--
Ricci-flow theorem infrastructure.

The mode label is metadata.  The analytic Ricci-flow, Ricci--DeTurck, surgery,
curvature-control, and heat-compatibility claims are all supplied propositions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `727ece9fa37a82e6764c7d9b19ededeb8e7061cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
