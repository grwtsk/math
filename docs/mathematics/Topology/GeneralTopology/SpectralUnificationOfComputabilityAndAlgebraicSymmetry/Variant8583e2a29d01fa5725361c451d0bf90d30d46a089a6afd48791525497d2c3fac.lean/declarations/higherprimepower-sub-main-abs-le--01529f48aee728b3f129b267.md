# higherPrimePower_sub_main_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ffa86f1-79c7-f139-bd23-7cbf559c361b",
  "kind": "theorem",
  "lexical_name": "higherPrimePower_sub_main_abs_le",
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
  "slug": "higherprimepower-sub-main-abs-le--01529f48aee728b3f129b267",
  "source": {
    "blob": "154c420df2d90a90e717ab66d03c87948ac69e93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8583e2a29d01fa5725361c451d0bf90d30d46a089a6afd48791525497d2c3fac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01529f48aee728b3f129b267995a3a975c08583a45cc011e20f19c9a9260270b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8583e2a29d01fa5725361c451d0bf90d30d46a089a6afd48791525497d2c3fac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ffa86f1-79c7-f139-bd23-7cbf559c361b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPrimePower_sub_main_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |mertensResidual A - primeFirstMoment A -
      1024 * A / (99225 * sourceNormalization A)| ≤ 10 * (Real.log 4 + 4) + 12 := by
  have hev := evenPowerMoment_sub_half_integral_abs_le A hA
  rw [sourceCorrelation_half_integral A hA] at hev
  have he : mertensResidual A - primeFirstMoment A -
      1024 * A / (99225 * sourceNormalization A) =
      (evenPowerMoment A - 1024 * A / (99225 * sourceNormalization A)) + oddHigherMoment A := by
    rw [mertensResidual_eq_prime_power_sectors A hA]
    ring
  rw [he]
  exact (abs_add_le _ _).trans (add_le_add hev (oddHigherMoment_abs_le A hA))

/-- The uniformly bounded composite error becomes negligible after division by the real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8583e2a29d01fa5725361c451d0bf90d30d46a089a6afd48791525497d2c3fac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8583e2a29d01fa5725361c451d0bf90d30d46a089a6afd48791525497d2c3fac.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `154c420df2d90a90e717ab66d03c87948ac69e93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
