# actualSignedQuotientSamplingError_abs_le_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:196e982b-39c0-3a0b-0bf0-779e74bdf243",
  "kind": "theorem",
  "lexical_name": "actualSignedQuotientSamplingError_abs_le_explicit",
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
  "slug": "actualsignedquotientsamplingerror-abs-le-explicit--5bbf56318d46719d110d5307",
  "source": {
    "blob": "7fe4c2b7919e6a62dedce9aee756b6eacf10e05d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 140,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variantac2916f9a6eb02626a90512ee414d74c5a6f90254dd72efaff1a4e1fe0b30da2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bbf56318d46719d110d5307ae5a3841383a9a095844debaa97694b2aa68864e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variantac2916f9a6eb02626a90512ee414d74c5a6f90254dd72efaff1a4e1fe0b30da2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:196e982b-39c0-3a0b-0bf0-779e74bdf243`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSignedQuotientSamplingError_abs_le_explicit (A : ℝ) (hA : 1 ≤ A) :
    |actualSignedQuotientSamplingError A| ≤
      32 * (162826 / 7623 : ℝ) * Real.exp A *
        (2 * A + Real.log 4 + 4 + Real.log 2) / A := by
  let c : ℝ := 16 * (162826 / 7623 : ℝ) / A ^ 2
  let D := ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt (d : ℝ)
  let M := ∑ m ∈ longInventory A, vonMangoldt m / Real.sqrt (m : ℝ)
  have hc : 0 ≤ c := by dsimp only [c]; positivity
  have hm : 0 ≤ M := by
    apply Finset.sum_nonneg
    intro m _
    exact div_nonneg vonMangoldt_nonneg (Real.sqrt_nonneg _)
  have hi (d : ℕ) : (∑ m ∈ longInventory A, vonMangoldt m *
      (16 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ)))) =
      c * (1 / Real.sqrt (d : ℝ)) * M := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro m _
    rw [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg d)]
    simp only [c, div_eq_mul_inv, mul_inv_rev]
    ring
  have he : (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| *
      (∑ m ∈ longInventory A, vonMangoldt m *
        (16 * (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt ((d * m : ℕ) : ℝ))))) = c * D * M := by
    simp_rw [hi]
    calc
      _ = ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), c *
          (|realMoebius d| / Real.sqrt (d : ℝ)) * M := by
        apply Finset.sum_congr rfl
        intro d _
        ring
      _ = _ := by rw [← Finset.sum_mul, ← Finset.mul_sum]
  calc
    _ ≤ _ := actualSignedQuotientSamplingError_abs_le_weighted_budget A hA
    _ = c * D * M := he
    _ ≤ c * (2 * A) * M :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left (actualMoebiusSqrtMass_le A hA) hc) hm
    _ ≤ c * (2 * A) * (Real.exp A * (2 * A + Real.log 4 + 4 + Real.log 2)) :=
      mul_le_mul_of_nonneg_left (actualLongMangoldtSqrtMass_le A hA) (by positivity)
    _ = _ := by
      dsimp only [c]
      field_simp [show A ≠ 0 by linarith]
      ring

end
end FormalResearch.RiemannHypothesis.SourceSignedSamplingExplicitBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variantac2916f9a6eb02626a90512ee414d74c5a6f90254dd72efaff1a4e1fe0b30da2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variantac2916f9a6eb02626a90512ee414d74c5a6f90254dd72efaff1a4e1fe0b30da2.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fe4c2b7919e6a62dedce9aee756b6eacf10e05d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
