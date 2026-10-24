# finite_observation_inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d58ea7d7-d963-bb91-1fe1-6a37a566e207",
  "kind": "theorem",
  "lexical_name": "finite_observation_inversion",
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
  "slug": "finite-observation-inversion--6b997f95c9a04e05a4c84757",
  "source": {
    "blob": "3d2cec1e309de74de028b495c9b5e185250e2040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperObservation/Variant089ef61b1574b9d2b776151343fa6e6c7acb87b8f81a10de7f2ea2c2f9e6d032.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b997f95c9a04e05a4c84757c15fff831c96cf7aa1f386ba484c22e51aa77c94",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperObservation/Variant089ef61b1574b9d2b776151343fa6e6c7acb87b8f81a10de7f2ea2c2f9e6d032.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d58ea7d7-d963-bb91-1fe1-6a37a566e207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_observation_inversion (A x : ℝ) (hA : 1 ≤ A) (hx : 0 ≤ x) :
    (∑ k ∈ Icc 1 ⌊Real.exp A⌋₊, (1 / Real.sqrt (k : ℝ)) *
      finiteObservation A (Icc 1 ⌊Real.exp A⌋₊) (x + Real.log k)) =
      normalizedTest explicitSecondDerivative A x := by
  let N := ⌊Real.exp A⌋₊
  let F : ℕ → ℝ := fun n ↦
    normalizedTest explicitSecondDerivative A (x + Real.log n) / Real.sqrt n
  have hN : 1 ≤ N := by
    apply (Nat.le_floor_iff (Real.exp_pos A).le).mpr
    simpa only [Nat.cast_one] using Real.one_le_exp_iff.mpr (by linarith : 0 ≤ A)
  have hF : ∀ n, N < n → F n = 0 := by
    intro n hn
    simp only [F, source_shift_zero_above_cutoff A x n hA hx hn, zero_div]
  calc
    _ = ∑ i ∈ Icc 1 N, (ArithmeticFunction.moebius i : ℝ) *
        ∑ k ∈ Icc 1 N, F (i * k) := by
      simp only [finiteObservation, mul_sum]
      rw [sum_comm]
      apply sum_congr rfl
      intro i hi
      apply sum_congr rfl
      intro k hk
      have hi0 : (i : ℝ) ≠ 0 := by exact_mod_cast (show i ≠ 0 by
        have := (mem_Icc.mp hi).1; omega)
      have hk0 : (k : ℝ) ≠ 0 := by exact_mod_cast (show k ≠ 0 by
        have := (mem_Icc.mp hk).1; omega)
      simp only [F, Nat.cast_mul, Real.log_mul hi0 hk0,
        Real.sqrt_mul (Nat.cast_nonneg i), mul_inv_rev, div_eq_mul_inv]
      rw [show x + Real.log (k : ℝ) + Real.log (i : ℝ) =
        x + (Real.log (i : ℝ) + Real.log (k : ℝ)) by ring]
      ring
    _ = F 1 := UpperRowInversion.finite_moebius_upper_inversion N N F hN le_rfl hF
    _ = _ := by simp [F]

/-- The complete upper observation ends strictly before log 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperObservation/Variant089ef61b1574b9d2b776151343fa6e6c7acb87b8f81a10de7f2ea2c2f9e6d032.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperObservation/Variant089ef61b1574b9d2b776151343fa6e6c7acb87b8f81a10de7f2ea2c2f9e6d032.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d2cec1e309de74de028b495c9b5e185250e2040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
