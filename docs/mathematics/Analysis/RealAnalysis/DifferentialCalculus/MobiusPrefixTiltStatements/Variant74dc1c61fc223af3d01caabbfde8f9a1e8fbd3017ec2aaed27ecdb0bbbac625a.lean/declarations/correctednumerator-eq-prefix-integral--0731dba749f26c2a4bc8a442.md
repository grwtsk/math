# correctedNumerator_eq_prefix_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59d8919c-dbdb-16b8-e913-028b4f75eeac",
  "kind": "theorem",
  "lexical_name": "correctedNumerator_eq_prefix_integral",
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
  "slug": "correctednumerator-eq-prefix-integral--0731dba749f26c2a4bc8a442",
  "source": {
    "blob": "4c87af3ff5fdeeb0abb9e52d3f8b2be4e1eae889",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant74dc1c61fc223af3d01caabbfde8f9a1e8fbd3017ec2aaed27ecdb0bbbac625a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0731dba749f26c2a4bc8a4428bcd93cb934086e04178951c35be195576effc75",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant74dc1c61fc223af3d01caabbfde8f9a1e8fbd3017ec2aaed27ecdb0bbbac625a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59d8919c-dbdb-16b8-e913-028b4f75eeac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedNumerator_eq_prefix_integral (X : ℕ) (z : ℂ) :
    correctedNumerator X z = (z - 1 / 2) *
      ∫ x : ℝ in Set.Ioc 1 (X : ℝ), (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
        Complex.exp ((1 / 2 - z) * (Real.log x : ℂ)) / (x : ℂ) := by
  have h := sum_mul_eq_sub_integral_mul₀'
    (f := powerWeight z) reciprocalCoefficient reciprocalCoefficient_zero X
    (fun x hx => (powerWeight_hasDerivAt z x
      (lt_of_lt_of_le zero_lt_one hx.1)).differentiableAt) (weight_deriv_integrable X z)
  have hs : (∑ n ∈ Finset.Icc 0 X, powerWeight z (n : ℝ) * reciprocalCoefficient n) =
      dirichletNumerator X z := by
    have he : (∑ n ∈ Finset.Icc 1 X, powerWeight z (n : ℝ) * reciprocalCoefficient n) =
        ∑ n ∈ Finset.Icc 0 X, powerWeight z (n : ℝ) * reciprocalCoefficient n := by
      apply sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hn).2⟩
      · intro n hn hnot
        have hn0 : n = 0 := by
          have hnle := (Finset.mem_Icc.mp hn).2
          by_contra hn0
          exact hnot (Finset.mem_Icc.mpr ⟨by omega, hnle⟩)
        simp [hn0, reciprocalCoefficient_zero]
    rw [← he]
    apply sum_congr rfl
    intro n hn
    exact weighted_coefficient_eq z n (Finset.mem_Icc.mp hn).1
  rw [hs, reciprocal_prefix_eq] at h
  unfold correctedNumerator
  rw [h]
  have ht : (∫ x : ℝ in Set.Ioc 1 (X : ℝ),
      deriv (powerWeight z) x * ∑ n ∈ Finset.Icc 0 ⌊x⌋₊, reciprocalCoefficient n) =
      (1 / 2 - z) * ∫ x : ℝ in Set.Ioc 1 (X : ℝ),
        (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
          Complex.exp ((1 / 2 - z) * (Real.log x : ℂ)) / (x : ℂ) := by
    rw [← integral_const_mul]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    dsimp only
    rw [powerWeight_deriv z x (lt_trans zero_lt_one hx.1), reciprocal_prefix_eq]
    simp only [powerWeight]
    ring
  rw [ht]
  simp only [powerWeight]
  ring

end
end MobiusPrefixTiltScratch

open MobiusPrefixTiltScratch MobiusPoleNumeratorScratch
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant74dc1c61fc223af3d01caabbfde8f9a1e8fbd3017ec2aaed27ecdb0bbbac625a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltStatements/Variant74dc1c61fc223af3d01caabbfde8f9a1e8fbd3017ec2aaed27ecdb0bbbac625a.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c87af3ff5fdeeb0abb9e52d3f8b2be4e1eae889` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
