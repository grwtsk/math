# ApproximateEquivariantScheduleDynamics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef7516f4cc54078e8f9149e05f32b44687668b9b4881a694553d4ff5bac0b1b3",
  "kind": "structure",
  "lexical_name": "ApproximateEquivariantScheduleDynamics",
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
  "slug": "approximateequivariantscheduledynamics--1354476cfee955a928bbba5f",
  "source": {
    "blob": "34b4683f1e66f7efd2aab05c964ce0bf9c3f2ba9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 16,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variantfb0caacf3134839054338dfe7a4e36d3d5f642ddb9a10f22ee1b41aae8ea73d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1354476cfee955a928bbba5f5f9a6e0aa1d1c8c8b11b6d5d2d7fa6df87a3d751",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variantfb0caacf3134839054338dfe7a4e36d3d5f642ddb9a10f22ee1b41aae8ea73d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef7516f4cc54078e8f9149e05f32b44687668b9b4881a694553d4ff5bac0b1b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ApproximateEquivariantScheduleDynamics
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    (equivariance :
      EquivariantScheduleKernelCertificate
        model reference) where
  implementedKernel :
    Schedule → FiniteBitfieldKernel system
  implementedInvariant : carrier.Law
  implementedCommonInvariant :
    ∀ schedule,
      carrier.push
          (implementedKernel schedule)
          implementedInvariant =
        implementedInvariant
  implementedContractive :
    ∀ schedule left right,
      carrier.wasserstein
          (carrier.push
            (implementedKernel schedule) left)
          (carrier.push
            (implementedKernel schedule) right) ≤
        reference.contraction *
          carrier.wasserstein left right
  equivarianceDefect : ℝ≥0
  pointwiseDefectLe :
    ∀ automorphism schedule state,
      carrier.wasserstein
          (carrier.push
            (implementedKernel schedule)
            (carrier.dirac
              (model.action.act
                automorphism state)))
          (equivariance.lawAction automorphism
            (carrier.push
              (implementedKernel schedule)
              (carrier.dirac state))) ≤
        equivarianceDefect
  lawDefectLe :
    ∀ automorphism schedule law,
      carrier.wasserstein
          (equivariance.lawAction automorphism
            (carrier.push
              (implementedKernel schedule) law))
          (carrier.push
            (implementedKernel schedule)
            (equivariance.lawAction
              automorphism law)) ≤
        equivarianceDefect

namespace ApproximateEquivariantScheduleDynamics

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variantfb0caacf3134839054338dfe7a4e36d3d5f642ddb9a10f22ee1b41aae8ea73d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SymmetryDefect/Variantfb0caacf3134839054338dfe7a4e36d3d5f642ddb9a10f22ee1b41aae8ea73d7.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34b4683f1e66f7efd2aab05c964ce0bf9c3f2ba9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
