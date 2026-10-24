# has_deriv_at_sine_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9db3d16-0809-adba-23b8-3f6709927087",
  "kind": "theorem",
  "lexical_name": "has_deriv_at_sine_moment",
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
  "slug": "has-deriv-at-sine-moment--3228e3bb6ac8c03d08111c07",
  "source": {
    "blob": "2575e1cc2b12c8fa14871fbd697a556dea3f1805",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 127,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant471861ea511f67edf717ae2ae3a512eb71d45e20de6f00d71a4c1a899f2ae166.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3228e3bb6ac8c03d08111c077107ad934375cbaa434a03148342e509a7507b88",
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

Occurrence: `result:e9db3d16-0809-adba-23b8-3f6709927087`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_deriv_at_sine_moment (k : ℕ) (hk : k ≤ 1) (s : ℝ) :
    HasDerivAt (sineMoment k) (fixedKernel (k + 1) s) s := by
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (F := fun s u : ℝ ↦ Real.sin (u * s) * oddMomentDensity k u)
    (F' := fun s u : ℝ ↦ Real.cos (u * s) * bumpMomentDensity (k + 1) u)
    (bound := bumpMomentDensity (k + 1)) (s := univ) (by simp)
    (Eventually.of_forall (fun r ↦ (sine_moment_integrable k hk r).aestronglyMeasurable))
    (sine_moment_integrable k hk s)
    ((fixed_kernel_integrable (k + 1) (by omega) s).aestronglyMeasurable)
    (by
      filter_upwards [] with u
      intro r _
      rw [Real.norm_eq_abs, abs_mul,
        abs_of_nonneg (bump_moment_density_nonneg (k + 1) u)]
      exact mul_le_of_le_one_left (bump_moment_density_nonneg (k + 1) u)
        (Real.abs_cos_le_one _))
    (bump_moment_density_integrable (k + 1) (by omega))
    (by
      filter_upwards [] with u
      intro r _
      convert (((hasDerivAt_id r).const_mul u).sin).mul_const
        (oddMomentDensity k u) using 1 <;> try rfl
      rw [← frequency_mul_odd_moment_density]
      simp only [mul_one, id_eq]
      ring)
  exact h.2

/-- The first fixed-kernel derivative as an equality of actual functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant471861ea511f67edf717ae2ae3a512eb71d45e20de6f00d71a4c1a899f2ae166.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant471861ea511f67edf717ae2ae3a512eb71d45e20de6f00d71a4c1a899f2ae166.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2575e1cc2b12c8fa14871fbd697a556dea3f1805` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
