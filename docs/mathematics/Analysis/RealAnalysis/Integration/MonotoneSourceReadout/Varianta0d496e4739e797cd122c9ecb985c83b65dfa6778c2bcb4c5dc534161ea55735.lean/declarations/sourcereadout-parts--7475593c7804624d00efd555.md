# sourceReadout_parts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a264ace3-4137-82a0-d98a-0f09e2a4b0a2",
  "kind": "theorem",
  "lexical_name": "sourceReadout_parts",
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
  "slug": "sourcereadout-parts--7475593c7804624d00efd555",
  "source": {
    "blob": "d412f8794494be78d7155563dc84ade26664108e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 239,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7475593c7804624d00efd5555aad737237bf56f247247c7d2aabf32eade27dd9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a264ace3-4137-82a0-d98a-0f09e2a4b0a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceReadout_parts (A : ℝ) (hA : 1 ≤ A) :
    sourceReadout A = -(∫ t in -(2 * A)..2 * A,
      discrepancy t * deriv (criticalPrimeTest A) t) := by
  have hp : 0 < A := by linarith
  have hE := discrepancy_absolutelyContinuous_window A (by linarith)
  have hg := (criticalPrimeTest_contDiff A hp).contDiffOn.absolutelyContinuousOnInterval
    (a := -(2 * A)) (b := 2 * A)
  have hibp := hE.integral_mul_deriv_eq_deriv_mul hg
  have hlo : criticalPrimeTest A (-(2 * A)) = 0 := by
    simp [criticalPrimeTest, sourceCorrelation_lower_endpoint A hp]
  rw [criticalPrimeTest_at_upper A hp, hlo] at hibp
  simp only [mul_zero, sub_self, zero_sub] at hibp
  have hi1 : IntervalIntegrable (criticalPrimeTest A) volume (-(2 * A)) (2 * A) :=
    (criticalPrimeTest_contDiff A hp).continuous.intervalIntegrable _ _
  have hi2 := hE.intervalIntegrable_deriv.mul_continuousOn hg.continuousOn
  have he : (∫ t in -(2 * A)..2 * A, density t * criticalPrimeTest A t) =
      (∫ t in -(2 * A)..2 * A, criticalPrimeTest A t) +
      ∫ t in -(2 * A)..2 * A, deriv discrepancy t * criticalPrimeTest A t := by
    rw [← intervalIntegral.integral_add hi1 hi2]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [density_eq_one_add_deriv_ae] with t ht _
    change density t * criticalPrimeTest A t = criticalPrimeTest A t + deriv discrepancy t * criticalPrimeTest A t
    rw [ht]
    ring
  rw [sourceReadout_window A hA, he, source_test_whole_zero A hA, zero_add]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d412f8794494be78d7155563dc84ade26664108e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
