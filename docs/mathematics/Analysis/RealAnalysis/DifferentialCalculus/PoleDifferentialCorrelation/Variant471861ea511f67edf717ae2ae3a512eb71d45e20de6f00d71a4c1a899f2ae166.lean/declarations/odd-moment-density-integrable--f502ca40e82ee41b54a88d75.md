# odd_moment_density_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f78be0f7-0c1c-c740-2445-80d05cd54600",
  "kind": "theorem",
  "lexical_name": "odd_moment_density_integrable",
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
  "slug": "odd-moment-density-integrable--f502ca40e82ee41b54a88d75",
  "source": {
    "blob": "2575e1cc2b12c8fa14871fbd697a556dea3f1805",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant471861ea511f67edf717ae2ae3a512eb71d45e20de6f00d71a4c1a899f2ae166.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f502ca40e82ee41b54a88d75076a3417e942c93e1f56004f35283aa332ac8cb3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant471861ea511f67edf717ae2ae3a512eb71d45e20de6f00d71a4c1a899f2ae166.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f78be0f7-0c1c-c740-2445-80d05cd54600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem odd_moment_density_integrable (k : ℕ) (hk : k ≤ 1) :
    Integrable (oddMomentDensity k) := by
  have hD : Continuous (bumpMomentDensity k) := by
    unfold bumpMomentDensity bumpDensity
    exact (continuous_id.pow _).mul
      ((Complex.continuous_normSq.comp
        (BridgeFourier.sourceFourier_continuous source_bump_integrable)).div_const _)
  apply ((bump_moment_density_integrable k (by omega)).add
    (bump_moment_density_integrable (k + 1) (by omega))).mono'
      (continuous_id.mul hD).aestronglyMeasurable
  filter_upwards [] with u
  change ‖u * bumpMomentDensity k u‖ ≤ bumpMomentDensity k u + bumpMomentDensity (k + 1) u
  rw [Real.norm_eq_abs, abs_mul,
    abs_of_nonneg (bump_moment_density_nonneg k u)]
  have hu : |u| ≤ 1 + u ^ 2 := by
    nlinarith [sq_abs u, sq_nonneg (|u| - 1)]
  calc
    _ ≤ (1 + u ^ 2) * bumpMomentDensity k u :=
      mul_le_mul_of_nonneg_right hu (bump_moment_density_nonneg k u)
    _ = bumpMomentDensity k u + bumpMomentDensity (k + 1) u := by
      rw [← frequency_mul_odd_moment_density]
      unfold oddMomentDensity
      ring

/-- All required sine integrands are integrable, without an infinite Taylor expansion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant471861ea511f67edf717ae2ae3a512eb71d45e20de6f00d71a4c1a899f2ae166.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant471861ea511f67edf717ae2ae3a512eb71d45e20de6f00d71a4c1a899f2ae166.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2575e1cc2b12c8fa14871fbd697a556dea3f1805` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
