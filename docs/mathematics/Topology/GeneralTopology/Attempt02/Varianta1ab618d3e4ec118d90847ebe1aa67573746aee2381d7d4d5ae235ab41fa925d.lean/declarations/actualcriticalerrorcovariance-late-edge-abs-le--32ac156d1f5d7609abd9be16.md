# actualCriticalErrorCovariance_late_edge_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74334c1a-b731-4ed6-0a01-07beed0aba2e",
  "kind": "theorem",
  "lexical_name": "actualCriticalErrorCovariance_late_edge_abs_le",
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
  "slug": "actualcriticalerrorcovariance-late-edge-abs-le--32ac156d1f5d7609abd9be16",
  "source": {
    "blob": "cd80aa35287a4bd0f5f0978b2144cb99a4085f17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 122,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt02/Varianta1ab618d3e4ec118d90847ebe1aa67573746aee2381d7d4d5ae235ab41fa925d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32ac156d1f5d7609abd9be16ae9e9253813c525760bbed1e451ccd5df10e48c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt02/Varianta1ab618d3e4ec118d90847ebe1aa67573746aee2381d7d4d5ae235ab41fa925d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74334c1a-b731-4ed6-0a01-07beed0aba2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalErrorCovariance_late_edge_abs_le {A T eta : ℝ} (hA : 91 ≤ A)
    (hT : Real.log 7 ≤ T) (hTA : T ≤ 2 * A) (heta : 0 ≤ eta)
    (hG : ∀ t, T ≤ t → |actualCenteredMangoldtLogError t| ≤ eta) :
    |∫ t in T..2 * A, actualCriticalErrorDensity A t| ≤
      101921587200 * eta * Real.exp A / A ^ 9 := by
  have hT0 : 0 ≤ T := (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans hT
  let f := fun t : ℝ =>
    actualCriticalNinthEdgePolynomial (2 * A - t) * Real.exp (t / 2)
  let k : ℝ := eta / A ^ 9
  have hk : 0 ≤ k := by dsimp [k]; positivity
  have hf : Continuous f := by dsimp [f]; unfold actualCriticalNinthEdgePolynomial; fun_prop
  have hpos : ∀ᵐ t ∂volume.restrict (Ioc (0 : ℝ) (2 * A)), 0 ≤ f t := by
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    dsimp [f]
    unfold actualCriticalNinthEdgePolynomial
    have : 0 ≤ 2 * A - t := by linarith [ht.2]
    positivity
  have hp : ∀ t ∈ Ioc T (2 * A), ‖actualCriticalErrorDensity A t‖ ≤ k * f t := by
    intro t ht
    have hh := actualCriticalKernel_edge_abs_le hA (hT0.trans ht.1.le) ht.2
    unfold actualCriticalErrorDensity
    rw [Real.norm_eq_abs, abs_mul, abs_mul, Real.abs_exp]
    have hpoly : 0 ≤ actualCriticalNinthEdgePolynomial (2 * A - t) := by
      have : 0 ≤ 2 * A - t := by linarith [ht.2]
      unfold actualCriticalNinthEdgePolynomial
      positivity
    calc
      _ ≤ (eta * Real.exp (t / 2)) *
          (actualCriticalNinthEdgePolynomial (2 * A - t) / A ^ 9) :=
        mul_le_mul (mul_le_mul_of_nonneg_right (hG t ht.1.le) (by positivity))
          hh (abs_nonneg _) (by positivity)
      _ = _ := by dsimp [k, f]; ring
  have hb := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hTA (ae_of_all _ hp)
    ((hf.intervalIntegrable T (2 * A)).const_mul k)
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hb
  have hm := intervalIntegral.integral_mono_interval hT0 hTA le_rfl hpos
    (hf.intervalIntegrable 0 (2 * A))
  have hfull : (∫ t in 0..2 * A, f t) ≤ 101921587200 * Real.exp A := kernel_edge_mass_le hA
  calc
    _ ≤ k * ∫ t in T..2 * A, f t := hb
    _ ≤ k * (101921587200 * Real.exp A) := mul_le_mul_of_nonneg_left (hm.trans hfull) hk
    _ = _ := by dsimp [k]; ring

/-- The fixed actual signed early center remains in this normalized budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt02/Varianta1ab618d3e4ec118d90847ebe1aa67573746aee2381d7d4d5ae235ab41fa925d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt02/Varianta1ab618d3e4ec118d90847ebe1aa67573746aee2381d7d4d5ae235ab41fa925d.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd80aa35287a4bd0f5f0978b2144cb99a4085f17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
