# AnalyticHeatFlowCertificate.certifiedForMajorProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2dd6fb61bd0d9cffdf72f55e12eb937e720412ebc26d7e52e1bef610878a8e4",
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
  "slug": "analyticheatflowcertificate-certifiedformajorproof--2fce395750206471ac8ee57d",
  "source": {
    "blob": "544b2e06cbfea51980476e61127977bc285dd504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 71,
    "path": "GRWTSK/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2fce395750206471ac8ee57ddeba6bd4d1ded6442430046a27860830b5723004",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2dd6fb61bd0d9cffdf72f55e12eb937e720412ebc26d7e52e1bef610878a8e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–86.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `544b2e06cbfea51980476e61127977bc285dd504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
