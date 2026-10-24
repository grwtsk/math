# ramp_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12817cdf-169c-c67e-a2ef-97fe6d0abe26",
  "kind": "theorem",
  "lexical_name": "ramp_integral",
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
  "slug": "ramp-integral--b5cd5455d2a688be1e60a2ed",
  "source": {
    "blob": "cd5022722d1af19e4450cbf79750261c951d780b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 125,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5cd5455d2a688be1e60a2ed1e284277cc12b72d37b1007172e565c713d2ed28",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12817cdf-169c-c67e-a2ef-97fe6d0abe26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem ramp_integral (A a : ℝ) (hA : 1 ≤ A) (ha : 0 ≤ a) (haB : a ≤ 2 * A) :
    (∫ t in 0..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * max (t - a) 0) =
      sourceCorrelation explicitSecondDerivative A a := by
  have hp : 0 < A := by linarith
  have hcont := correlation_second_continuous A hp
  have hfunction : Continuous (fun t : ℝ =>
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * max (t - a) 0) :=
    hcont.mul ((continuous_id.sub continuous_const).max continuous_const)
  have hlow : (∫ t in 0..a,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * max (t - a) 0) = 0 := by
    calc
      _ = ∫ t in 0..a, (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        rw [uIcc_of_le ha] at ht
        dsimp only
        simp [max_eq_right (sub_nonpos.mpr ht.2)]
      _ = 0 := by simp
  have hupper : (∫ t in a..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * max (t - a) 0) =
      ∫ t in a..2 * A,
        (t - a) * deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t := by
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le haB] at ht
    dsimp only
    rw [max_eq_left (sub_nonneg.mpr ht.1)]
    ring
  have hd (t : ℝ) : HasDerivAt
      (fun u => (u - a) * deriv (sourceCorrelation explicitSecondDerivative A) u -
        sourceCorrelation explicitSecondDerivative A u)
      ((t - a) * deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t) t := by
    exact ((((hasDerivAt_id t).sub_const a).mul
      (correlation_deriv_hasDerivAt A t hp)).sub (correlation_hasDerivAt A t hp)).congr_deriv
      (by dsimp only [id_eq]; ring)
  have hv := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    (((continuous_id.sub continuous_const).mul hcont).intervalIntegrable a (2 * A))
  rw [sourceCorrelation_upper_endpoint A hp, correlation_deriv_at_upper A hp] at hv
  simp only [mul_zero, zero_sub, sub_self, zero_mul, neg_neg] at hv
  have hs := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    (hfunction.intervalIntegrable 0 a) (hfunction.intervalIntegrable a (2 * A))
  rw [hlow, hupper, zero_add] at hs
  exact hs.symm.trans hv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73SourceMangoldtRi/Variantdc0daacea7dc86977427288ca9e6a38cf4e2f6170ef0620e2701e71cfaa2c044.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5022722d1af19e4450cbf79750261c951d780b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
