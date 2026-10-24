# dampedMertensSource_half_sq_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fa241cc-6e65-5a17-131c-34607f710e51",
  "kind": "theorem",
  "lexical_name": "dampedMertensSource_half_sq_intervalIntegrable",
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
  "slug": "dampedmertenssource-half-sq-intervalintegrable--6505f4ca82d7e4612a2fc3e7",
  "source": {
    "blob": "4b4a5f2f8bb5f822f55f3d75083c8da8ac214c22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 100,
    "path": "GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6505f4ca82d7e4612a2fc3e73fde96402f00ff4b977169a9fce925520d1496e9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fa241cc-6e65-5a17-131c-34607f710e51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedMertensSource_half_sq_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable (fun u : ℝ => dampedMertensSource (1 / 2) u ^ 2)
      volume a b := by
  have hmeas : Measurable (fun u : ℝ => dampedMertensSource (1 / 2) u ^ 2) := by
    exact (((Real.continuous_exp.comp
      (continuous_const.mul continuous_id)).measurable.mul
        pickupVelocity_measurable).pow_const 2)
  have hmajor : IntervalIntegrable
      (fun u : ℝ => Real.exp (2 * |u|)) volume a b := by
    apply Continuous.intervalIntegrable
    fun_prop
  apply hmajor.mono_fun' hmeas.aestronglyMeasurable
  filter_upwards with u
  rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
  have hm := mertensPrefix_abs_le (Real.exp_pos u).le
  have habs : |dampedMertensSource (1 / 2) u| ≤ Real.exp |u| := by
    rw [dampedMertensSource_half, abs_mul, abs_of_pos (Real.exp_pos _)]
    calc
      Real.exp (-u) * |mertensPrefix (Real.exp u)| ≤
          Real.exp (-u) * Real.exp u :=
        mul_le_mul_of_nonneg_left hm (Real.exp_pos _).le
      _ = 1 := by
        rw [← Real.exp_add]
        convert Real.exp_zero using 1
        ring
      _ ≤ Real.exp |u| := by
        rw [← Real.exp_zero]
        exact Real.exp_le_exp.mpr (abs_nonneg u)
  have hsq := (sq_le_sq₀ (abs_nonneg _) (Real.exp_pos _).le).2 habs
  rw [sq_abs] at hsq
  calc
    dampedMertensSource (1 / 2) u ^ 2 ≤ (Real.exp |u|) ^ 2 := hsq
    _ = Real.exp (2 * |u|) := by
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring

/-- Finite-window return for the literal pickup and completed vertical-line
mass.  No half-line integrability is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b4a5f2f8bb5f822f55f3d75083c8da8ac214c22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
