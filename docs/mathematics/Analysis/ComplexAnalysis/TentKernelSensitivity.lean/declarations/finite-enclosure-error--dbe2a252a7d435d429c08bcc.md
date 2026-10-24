# finite_enclosure_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03806723-a39b-8eb9-7510-c6cf7e553f72",
  "kind": "theorem",
  "lexical_name": "finite_enclosure_error",
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
  "slug": "finite-enclosure-error--dbe2a252a7d435d429c08bcc",
  "source": {
    "blob": "edba02e1a6c72fe2264645d0cac886ea56a5bf00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 132,
    "path": "GRWTSK/Analysis/Complex/TentKernelSensitivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbe2a252a7d435d429c08bcc88264d0957e3313d8cf573d35f98c1e0a57099e9",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentKernelSensitivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03806723-a39b-8eb9-7510-c6cf7e553f72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_enclosure_error {ι : Type*} (S : Finset ι) (m : ι → ℕ)
    (ρ c : ι → ℂ) (r : ι → ℝ) (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ 1) (hc : ∀ j ∈ S, (c j).re ≤ 1)
    (hr : ∀ j ∈ S, ‖ρ j - c j‖ ≤ r j) :
    ‖(∑ j ∈ S, (m j : ℂ) * tentKernel x h (ρ j)) -
      ∑ j ∈ S, (m j : ℂ) * tentKernel x h (c j)‖ ≤
      (h * Real.log (x + h)) * ∑ j ∈ S, (m j : ℝ) * r j := by
  have hC : 0 ≤ h * Real.log (x + h) :=
    mul_nonneg hh.le (Real.log_nonneg (by linarith))
  calc
    _ = ‖∑ j ∈ S, (m j : ℂ) * (tentKernel x h (ρ j) - tentKernel x h (c j))‖ := by
      simp only [mul_sub, Finset.sum_sub_distrib]
    _ ≤ ∑ j ∈ S, ‖(m j : ℂ) * (tentKernel x h (ρ j) - tentKernel x h (c j))‖ := norm_sum_le _ _
    _ ≤ ∑ j ∈ S, (m j : ℝ) * ((h * Real.log (x + h)) * r j) := by
      apply Finset.sum_le_sum
      intro j hj
      have he := (norm_tent_sub_le x h hh ha (hρ j hj) (hc j hj)).trans
        (mul_le_mul_of_nonneg_left (hr j hj) hC)
      simpa only [norm_mul, Complex.norm_natCast] using
        mul_le_mul_of_nonneg_left he (Nat.cast_nonneg (m j) : (0 : ℝ) ≤ m j)
    _ = _ := by simp only [Finset.mul_sum]; apply Finset.sum_congr rfl; intro j _; ring

end
end GRWTSK.Analysis.Complex.TentKernelSensitivity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentKernelSensitivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentKernelSensitivity.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edba02e1a6c72fe2264645d0cac886ea56a5bf00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
