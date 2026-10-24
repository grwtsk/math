# ExactResidueDeflectionCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b50c9bddc9fcdbab5f7fce2eb40a1d42804b550156d713917217bf18f4a290a9",
  "kind": "structure",
  "lexical_name": "ExactResidueDeflectionCertificate",
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
  "slug": "exactresiduedeflectioncertificate--9355e56f79b4ec1f9580f0bd",
  "source": {
    "blob": "7179c45431334a8b2f3924e2eee69dbd5d5d616b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 77,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Certificate/Variant0d1cb5d3dd28d71b6f0430c42bfa1ec3a39da681c624a038eeea6f346ed9121d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9355e56f79b4ec1f9580f0bdeabb2e81e578e3a81df0c4cefadcb0ceaf6486a0",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Certificate/Variant0d1cb5d3dd28d71b6f0430c42bfa1ec3a39da681c624a038eeea6f346ed9121d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b50c9bddc9fcdbab5f7fce2eb40a1d42804b550156d713917217bf18f4a290a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactResidueDeflectionCertificate
    (graph : GraphCut)
    (model : OperatorModel)
    (Test : Type uTest)
    (Chart : Type uChart)
    (Wall : Type uWall) where
  cut : ResidueDeflectionCut graph
  cocycle : DeflectionCocycle Chart Wall
  arcLeftChart : Arc graph → Chart
  arcRightChart : Arc graph → Chart
  arcOverlap :
    ∀ arc,
      cocycle.overlaps
        (arcLeftChart arc)
        (arcRightChart arc)
  tupleLength : Nat
  protectedTotal : ZMod 3
  tupleStabilizer :
    TupleConstraintStabilizer
      tupleLength protectedTotal
  traceSystem :
    PolarTraceSystem cut model Test
  cocycle_phase :
    ∀ arc,
      cocycle.transition
          (arcLeftChart arc)
          (arcRightChart arc) =
        traceSystem.polarized.phase.phase arc
  bypassWall : cut.Bypass → Wall
  bypassWall_is_defect :
    ∀ bypass,
      cocycle.isModuloThreeWall
        (bypassWall bypass)
  exactCompensation :
    ExactTraceCompensation traceSystem
  digest : CertificateDigest

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Certificate/Variant0d1cb5d3dd28d71b6f0430c42bfa1ec3a39da681c624a038eeea6f346ed9121d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Certificate/Variant0d1cb5d3dd28d71b6f0430c42bfa1ec3a39da681c624a038eeea6f346ed9121d.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7179c45431334a8b2f3924e2eee69dbd5d5d616b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
