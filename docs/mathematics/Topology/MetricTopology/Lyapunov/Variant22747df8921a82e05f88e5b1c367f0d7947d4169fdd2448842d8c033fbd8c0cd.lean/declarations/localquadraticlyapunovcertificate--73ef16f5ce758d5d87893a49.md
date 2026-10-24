# LocalQuadraticLyapunovCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f0f8bcaac0e2c5aaeb6b2298b8f04ec3a343bd37f1384f60592e8b235bbdf71",
  "kind": "structure",
  "lexical_name": "LocalQuadraticLyapunovCertificate",
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
  "slug": "localquadraticlyapunovcertificate--73ef16f5ce758d5d87893a49",
  "source": {
    "blob": "3fb7650474b39fee0768ad121118d2ca76985c99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 19,
    "path": "GRWTSK/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73ef16f5ce758d5d87893a49e72ab83662a685712bc3a733a363749e806315ce",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f0f8bcaac0e2c5aaeb6b2298b8f04ec3a343bd37f1384f60592e8b235bbdf71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LocalQuadraticLyapunovCertificate
    {operator : VersionedOperator State}
    (fixedPoint : CertifiedFixedPoint operator) where
  region : Set operator.domain
  fixed_mem : fixedPoint.point ∈ region
  invariant : Set.MapsTo operator.step region region
  energy : operator.domain → ℝ
  lowerConstant : ℝ
  upperConstant : ℝ
  lowerConstant_positive : 0 < lowerConstant
  upperConstant_positive : 0 < upperConstant
  lower_bound :
    ∀ state ∈ region,
      lowerConstant *
          dist state fixedPoint.point ^ 2 ≤
        energy state
  upper_bound :
    ∀ state ∈ region,
      energy state ≤
        upperConstant *
          dist state fixedPoint.point ^ 2
  decreases :
    ∀ state ∈ region,
      energy (operator.step state) ≤ energy state
  local_sublevel :
    ∀ ε > 0,
      ∃ δ > 0,
        ∀ state : operator.domain,
          dist state fixedPoint.point < δ →
          state ∈ region ∧
          upperConstant *
              dist state fixedPoint.point ^ 2 <
            lowerConstant * ε ^ 2

namespace LocalQuadraticLyapunovCertificate

variable
    {operator : VersionedOperator State}
    {fixedPoint : CertifiedFixedPoint operator}
    (certificate :
      LocalQuadraticLyapunovCertificate fixedPoint)

/-- Every finite iterate remains in the certified Lyapunov region. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fb7650474b39fee0768ad121118d2ca76985c99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
