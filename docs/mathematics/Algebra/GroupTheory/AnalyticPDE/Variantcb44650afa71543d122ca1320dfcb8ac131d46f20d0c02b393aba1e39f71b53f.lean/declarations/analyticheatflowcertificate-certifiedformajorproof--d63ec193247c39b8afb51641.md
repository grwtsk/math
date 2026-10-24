# AnalyticHeatFlowCertificate.certifiedForMajorProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f834729fe9ad4e5dd5cb02c0f361bd9ceae09b1fbec5a08cc96997f3519fbf2",
  "kind": "def",
  "lexical_name": "AnalyticHeatFlowCertificate.certifiedForMajorProof",
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
  "slug": "analyticheatflowcertificate-certifiedformajorproof--d63ec193247c39b8afb51641",
  "source": {
    "blob": "727ece9fa37a82e6764c7d9b19ededeb8e7061cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 79,
    "path": "GRWTSK/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d63ec193247c39b8afb516419529214f937fa3922067662b1aa15e0805667d7b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f834729fe9ad4e5dd5cb02c0f361bd9ceae09b1fbec5a08cc96997f3519fbf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AnalyticHeatFlowCertificate.certifiedForMajorProof
    (C : AnalyticHeatFlowCertificate) : Prop :=
  C.heat.kernel.normalized ∧
  C.heat.kernel.positivityPreserving ∧
  C.heat.kernelSound ∧
  C.semigroup.identityAtZero ∧
  C.semigroup.compositionLaw ∧
  C.transport.certificate.transportSound ∧
  C.transport.preservesDeclaredDomain ∧
  C.smoothing.certificateSound ∧
  C.smoothing.smoothingClaim ∧
  C.massPreservation ∧
  C.contractionOrEnergyEstimate ∧
  C.analyticHeatEquationApplies ∧
  C.noAnalyticHeatFromFiniteDescriptorAlone

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `727ece9fa37a82e6764c7d9b19ededeb8e7061cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
