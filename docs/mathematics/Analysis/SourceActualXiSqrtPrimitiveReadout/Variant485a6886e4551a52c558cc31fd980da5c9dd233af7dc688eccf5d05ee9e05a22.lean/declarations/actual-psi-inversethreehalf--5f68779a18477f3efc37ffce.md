# actual_psi_inverseThreeHalf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abaa6952-820d-6841-995c-7aee12472383",
  "kind": "theorem",
  "lexical_name": "actual_psi_inverseThreeHalf",
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
  "slug": "actual-psi-inversethreehalf--5f68779a18477f3efc37ffce",
  "source": {
    "blob": "007e0c16bd7496b1d88e1d5c2c72ebf9ca527dbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 80,
    "path": "GRWTSK/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f68779a18477f3efc37ffce8f209676770c23ef31797ace7bf0b277f15192c5",
  "verification": {
    "reference": "docs/verification/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abaa6952-820d-6841-995c-7aee12472383`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_psi_inverseThreeHalf (Y : ℝ) (hY : 2 ≤ Y) :
    (∫ x in 2..Y, Chebyshev.psi x / x ^ (3 / 2 : ℝ)) =
      2 * ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊, vonMangoldt n * (n : ℝ) ^ (-1 / 2 : ℝ) -
        2 * Y ^ (-1 / 2 : ℝ) * Chebyshev.psi Y := by
  have hd : ∀ x ∈ Icc (2 : ℝ) Y, DifferentiableAt ℝ halfAtomPrimitive x := by
    intro x hx
    exact (halfAtomPrimitive_hasDerivAt x (by linarith [hx.1])).differentiableAt
  have hi : IntegrableOn (deriv halfAtomPrimitive) (Icc 2 Y) := by
    apply (inverseThreeHalf_continuousOn Y).integrableOn_Icc.congr_fun
    · intro x hx
      exact (halfAtomPrimitive_hasDerivAt x (by linarith [hx.1])).deriv.symm
    · exact measurableSet_Icc
  have ha := sum_mul_eq_sub_integral_mul₁ (vonMangoldt : ℕ → ℝ)
    (by simp) (by simp) Y hd hi
  have hj : (∫ x in Ioc (2 : ℝ) Y,
      deriv halfAtomPrimitive x * ∑ n ∈ Finset.Icc 0 ⌊x⌋₊, vonMangoldt n) =
      ∫ x in 2..Y, Chebyshev.psi x / x ^ (3 / 2 : ℝ) := by
    rw [intervalIntegral.integral_of_le hY]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    dsimp only
    rw [(halfAtomPrimitive_hasDerivAt x (by linarith [hx.1])).deriv,
      ← Chebyshev.psi_eq_sum_Icc]
    ring
  rw [hj, ← Chebyshev.psi_eq_sum_Icc] at ha
  have hsum : (∑ n ∈ Finset.Icc 0 ⌊Y⌋₊, halfAtomPrimitive n * vonMangoldt n) =
      -2 * ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊, vonMangoldt n * (n : ℝ) ^ (-1 / 2 : ℝ) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n _
    unfold halfAtomPrimitive
    ring
  rw [hsum] at ha
  unfold halfAtomPrimitive at ha
  linarith

end FormalResearch.RiemannHypothesis.SourceActualXiSqrtPrimitiveReadout
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `007e0c16bd7496b1d88e1d5c2c72ebf9ca527dbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
