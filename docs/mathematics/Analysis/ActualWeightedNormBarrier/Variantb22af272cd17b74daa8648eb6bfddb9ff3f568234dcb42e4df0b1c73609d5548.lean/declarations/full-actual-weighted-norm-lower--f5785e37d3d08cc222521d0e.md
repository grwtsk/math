# full_actual_weighted_norm_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d9eaa44-517f-ee32-3088-8120d245cdbb",
  "kind": "theorem",
  "lexical_name": "full_actual_weighted_norm_lower",
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
  "slug": "full-actual-weighted-norm-lower--f5785e37d3d08cc222521d0e",
  "source": {
    "blob": "e0fa3f06e6d9ded5b84614605f59a0a510297e5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 26,
    "path": "GRWTSK/Analysis/ActualWeightedNormBarrier/Variantb22af272cd17b74daa8648eb6bfddb9ff3f568234dcb42e4df0b1c73609d5548.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5785e37d3d08cc222521d0efef26e655933f15c7ae05a043f6af557577466bd",
  "verification": {
    "reference": "docs/verification/Analysis/ActualWeightedNormBarrier/Variantb22af272cd17b74daa8648eb6bfddb9ff3f568234dcb42e4df0b1c73609d5548.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d9eaa44-517f-ee32-3088-8120d245cdbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_actual_weighted_norm_lower {A θ : ℝ} (hA : 8 ≤ A) (hθ : 0 ≤ θ) :
    Real.exp (θ * (2 * A - 2)) / (512 * A ^ 9) ≤ normPrice A θ := by
  have hA1 : 1 ≤ A := by linarith
  let f := fun u ↦ |C A u| * Real.exp (θ * u)
  have hcont : Continuous f := by
    exact (CorrelationRegularity.sourceCorrelation_contDiff A (by linarith)).continuous.abs.mul
      (Real.continuous_exp.comp (continuous_const.mul continuous_id))
  have hsub : (∫ u in (2 * A - 2)..(2 * A - 1), f u) ≤ normPrice A θ := by
    exact intervalIntegral.integral_mono_interval (by linarith) (by linarith) (by linarith)
      (Filter.Eventually.of_forall (fun u ↦ mul_nonneg (abs_nonneg _) (Real.exp_pos _).le))
      (full_weighted_norm_integrand_intervalIntegrable hA1 θ)
  have hmono : (∫ _ in (2 * A - 2)..(2 * A - 1),
      (1 / (512 * A ^ 9)) * Real.exp (θ * (2 * A - 2))) ≤
      ∫ u in (2 * A - 2)..(2 * A - 1), f u := by
    apply intervalIntegral.integral_mono_on (by linarith)
      (continuous_const.intervalIntegrable _ _) (hcont.intervalIntegrable _ _)
    intro u hu
    have hy1 : 1 ≤ 2 * A - u := by linarith [hu.2]
    have hy2 : 2 * A - u ≤ 2 := by linarith [hu.1]
    have hk := actual_correlation_edge_shell_lower hA hy1 hy2
    have huEq : 2 * A - (2 * A - u) = u := by ring
    rw [huEq] at hk
    have h_abs := hk.trans (le_abs_self (C A u))
    have h_exp : Real.exp (θ * (2 * A - 2)) ≤ Real.exp (θ * u) :=
      Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left hu.1 hθ)
    exact mul_le_mul h_abs h_exp (Real.exp_pos _).le (abs_nonneg _)
  have hval : (∫ _ in (2 * A - 2)..(2 * A - 1),
      (1 / (512 * A ^ 9)) * Real.exp (θ * (2 * A - 2))) =
      Real.exp (θ * (2 * A - 2)) / (512 * A ^ 9) := by
    rw [intervalIntegral.integral_const]
    simp only [smul_eq_mul]
    ring
  rw [hval] at hmono
  exact hmono.trans hsub

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualWeightedNormBarrier/Variantb22af272cd17b74daa8648eb6bfddb9ff3f568234dcb42e4df0b1c73609d5548.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualWeightedNormBarrier/Variantb22af272cd17b74daa8648eb6bfddb9ff3f568234dcb42e4df0b1c73609d5548.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0fa3f06e6d9ded5b84614605f59a0a510297e5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
