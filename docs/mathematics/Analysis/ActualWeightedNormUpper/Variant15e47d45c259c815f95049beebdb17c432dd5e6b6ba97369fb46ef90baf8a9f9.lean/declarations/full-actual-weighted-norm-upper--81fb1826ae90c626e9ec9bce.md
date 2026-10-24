# full_actual_weighted_norm_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06ce86c4-3476-2bb4-51b2-356f9de0815b",
  "kind": "theorem",
  "lexical_name": "full_actual_weighted_norm_upper",
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
  "slug": "full-actual-weighted-norm-upper--81fb1826ae90c626e9ec9bce",
  "source": {
    "blob": "08851934490227b79c9b4f11523797e58b9db58a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 71,
    "path": "GRWTSK/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81fb1826ae90c626e9ec9bcea5d291222c2330c6848e0fefc6e642bd50c59d1e",
  "verification": {
    "reference": "docs/verification/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06ce86c4-3476-2bb4-51b2-356f9de0815b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_actual_weighted_norm_upper {A θ : ℝ} (hA : 1 ≤ A) (hθ : 0 < θ) :
    normPrice A θ ≤ (Real.exp (2 * θ * A) / A ^ 9) * upperConstant θ := by
  have hpos : 0 < A := by linarith
  let F := fun u : ℝ ↦ (tailPolynomial (2 * A - u) / A ^ 9) * Real.exp (θ * u)
  have hF : Continuous F := by unfold F tailPolynomial; fun_prop
  have hmono : normPrice A θ ≤ ∫ u in (-2 * A)..(2 * A), F u := by
    apply intervalIntegral.integral_mono_on (by linarith)
      (full_weighted_norm_integrand_intervalIntegrable hA θ) (hF.intervalIntegrable _ _)
    intro u hu
    have h := actual_complete_correlation_absolute_upper hA
      (by linarith [hu.2] : 0 ≤ 2 * A - u)
    have heq : 2 * A - (2 * A - u) = u := by ring
    rw [heq] at h
    exact mul_le_mul_of_nonneg_right h (Real.exp_pos _).le
  have hpoint (u : ℝ) : F u =
      (Real.exp (2 * θ * A) / A ^ 9) * tailPrice θ (2 * A - u) := by
    have he : Real.exp (θ * u) = Real.exp (2 * θ * A) *
        Real.exp (-θ * (2 * A - u)) := by
      rw [← Real.exp_add]
      congr 1
      ring
    unfold F tailPrice
    rw [he]
    ring
  have hvalue : (∫ u in (-2 * A)..(2 * A), F u) =
      (Real.exp (2 * θ * A) / A ^ 9) * (∫ y in (0 : ℝ)..(4 * A), tailPrice θ y) := by
    simp_rw [hpoint]
    rw [intervalIntegral.integral_const_mul, intervalIntegral.integral_comp_sub_left]
    congr 2 <;> ring
  rw [hvalue] at hmono
  exact hmono.trans (mul_le_mul_of_nonneg_left
    (positive_weight_tail_bounds_every_finite_interval hθ (by positivity)) (by positivity))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08851934490227b79c9b4f11523797e58b9db58a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
