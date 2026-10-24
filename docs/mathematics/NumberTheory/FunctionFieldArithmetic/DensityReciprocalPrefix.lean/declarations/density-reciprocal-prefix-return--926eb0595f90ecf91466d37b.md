# density_reciprocal_prefix_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78bc7507-1d4e-2192-d75d-a3641a2e498b",
  "kind": "theorem",
  "lexical_name": "density_reciprocal_prefix_return",
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
  "slug": "density-reciprocal-prefix-return--926eb0595f90ecf91466d37b",
  "source": {
    "blob": "2783e7a07ede383ed4fa2fffa1c99c95201b584b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 57,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:926eb0595f90ecf91466d37be5720fd829088e571657da0eeb8ad2aad11641f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78bc7507-1d4e-2192-d75d-a3641a2e498b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_reciprocal_prefix_return (x : ℝ) :
    densityReciprocalPrefix x =
      ∑ d ∈ Finset.Icc 1 ⌊x⌋₊, densityCorrectionReciprocal d * densityMobiusReciprocalPrefix (x/(d : ℝ)) := by
  classical
  by_cases hx : 1 ≤ x
  · have hx0 : 0 < x := by linarith
    have H := density_closed_convolution_regroup
      (fun d k => densityCorrectionReciprocal d * (moebiusReal k / (k : ℝ))) (Real.log x)
    have hl : (∑ n ∈ densityClosedInventory (Real.log x),
        ∑ d ∈ n.divisors, densityCorrectionReciprocal d * (moebiusReal (n/d) / ((n/d : ℕ) : ℝ))) =
        densityReciprocalPrefix x := by
      simp_rw [← density_reciprocal_correction_divisors]
      simp [densityReciprocalPrefix, densityClosedInventory, Real.exp_log hx0]
    rw [hl] at H
    rw [H]
    simp only [densityClosedInventory, Real.exp_log hx0]
    apply Finset.sum_congr rfl
    intro d hd
    have hd0 : (0 : ℝ) < d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
    rw [← Finset.mul_sum]
    congr 1
    simp [densityMobiusReciprocalPrefix, Real.exp_sub,
      Real.exp_log hx0, Real.exp_log hd0]
  · have hx1 : x < 1 := lt_of_not_ge hx
    simp [density_reciprocal_prefix_zero hx1, Nat.floor_eq_zero.mpr hx1]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityReciprocalPrefix.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2783e7a07ede383ed4fa2fffa1c99c95201b584b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
