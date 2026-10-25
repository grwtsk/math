# FiniteOSHomologyStabilityCriteria.certifiedForHomologyStability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80b6395cac4473ffdfa50030deb10aec150c26b9f8321fd901577243007e8418",
  "kind": "def",
  "lexical_name": "FiniteOSHomologyStabilityCriteria.certifiedForHomologyStability",
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
  "slug": "finiteoshomologystabilitycriteria-certifiedforhomologystability--13007a6825c9283a25a1f0f6",
  "source": {
    "blob": "8cf07d031b0eca53cf002d48276686cebe37aa8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13007a6825c9283a25a1f0f6dee3516228d533b8f48326ce5830beddd8a8a498",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80b6395cac4473ffdfa50030deb10aec150c26b9f8321fd901577243007e8418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FiniteOSHomologyStabilityCriteria.certifiedForHomologyStability
    (C : FiniteOSHomologyStabilityCriteria) : Prop :=
  C.chainMap.source = C.sourceComplex ∧
  C.chainMap.target = C.targetComplex ∧
  C.quasiIso.chainMap = C.chainMap ∧
  C.sourceHomology.complex = C.sourceComplex ∧
  C.targetHomology.complex = C.targetComplex ∧
  C.sourceBetti.homology = C.sourceHomology ∧
  C.targetBetti.homology = C.targetHomology ∧
  C.stability.chainMap = C.chainMap ∧
  C.stability.quasiIso = C.quasiIso ∧
  C.sourceComplex.boundarySquaredZero ∧
  C.targetComplex.boundarySquaredZero ∧
  C.chainMap.commutesWithBoundary ∧
  C.quasiIso.inducesHomologyIso ∧
  C.sourceHomology.computedByCertificate ∧
  C.targetHomology.computedByCertificate ∧
  C.sourceBetti.proofCertificate ∧
  C.targetBetti.proofCertificate ∧
  C.sourceBetti.bettiNumber = C.targetBetti.bettiNumber ∧
  C.stability.claimSound ∧
  HomologyStabilityCoverageAdmissible C.coverageContext C.stability ∧
  C.noAnalyticTopologyFromFiniteOSAlone ∧
  C.noSpectralAuthorityFromFiniteOSAlone ∧
  C.noLegacyIntegrableLatticeHierarchyAssumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Authority/Variant8465a545d259d82f65fa0aed313db2a9c54aea3ce3477083cb686afe1c5024b0.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cf07d031b0eca53cf002d48276686cebe37aa8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
