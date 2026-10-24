# nat_add_two_le_absorptionConstant_mul_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7259111-3b2b-e2db-18e8-3bb788f62c92",
  "kind": "theorem",
  "lexical_name": "nat_add_two_le_absorptionConstant_mul_exp",
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
  "slug": "nat-add-two-le-absorptionconstant-mul-exp--1cedc74421cb2e20a46955aa",
  "source": {
    "blob": "cdca1cc41a5beee97dcaa0bba635b597ab6f3f26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 40,
    "path": "GRWTSK/Analysis/Asymptotics/DyadicLogAbsorption.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cedc74421cb2e20a46955aaeb78462ad8785adf984fb589c4e06dc135c1dd84",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/DyadicLogAbsorption.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7259111-3b2b-e2db-18e8-3bb788f62c92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nat_add_two_le_absorptionConstant_mul_exp
    {δ : ℝ} (hδ : 0 < δ) (j : ℕ) :
    (j + 2 : ℝ) ≤
      dyadicLogAbsorptionConstant δ *
        Real.exp (dyadicSlackRate δ * (j : ℝ)) := by
  let c : ℝ := dyadicSlackRate δ
  let A : ℝ := dyadicLogAbsorptionConstant δ
  have hc : 0 < c := dyadicSlackRate_pos hδ
  have hA2 : (2 : ℝ) ≤ A := by
    dsimp [A, dyadicLogAbsorptionConstant]
    exact le_max_left _ _
  have hAinv : c⁻¹ ≤ A := by
    dsimp [A, dyadicLogAbsorptionConstant]
    exact le_max_right _ _
  have hAc : 1 ≤ A * c := by
    calc
      1 = c⁻¹ * c := by field_simp [ne_of_gt hc]
      _ ≤ A * c := by
        exact mul_le_mul_of_nonneg_right hAinv (le_of_lt hc)
  have hlinear :
      (j + 2 : ℝ) ≤ A * (1 + c * (j : ℝ)) := by
    have hj : 0 ≤ (j : ℝ) := by positivity
    calc
      (j + 2 : ℝ) = 2 + 1 * (j : ℝ) := by ring
      _ ≤ A + (A * c) * (j : ℝ) := by
        exact add_le_add hA2
          (mul_le_mul_of_nonneg_right hAc hj)
      _ = A * (1 + c * (j : ℝ)) := by ring
  have hexp :
      1 + c * (j : ℝ) ≤ Real.exp (c * (j : ℝ)) :=
    by simpa only [add_comm] using Real.add_one_le_exp (c * (j : ℝ))
  calc
    (j + 2 : ℝ) ≤ A * (1 + c * (j : ℝ)) := hlinear
    _ ≤ A * Real.exp (c * (j : ℝ)) := by
      exact mul_le_mul_of_nonneg_left hexp
        (le_trans (by norm_num : (0 : ℝ) ≤ 2) hA2)
    _ = dyadicLogAbsorptionConstant δ *
        Real.exp (dyadicSlackRate δ * (j : ℝ)) := by
      rfl

/-- The real dyadic power used throughout RH-E02 is exactly the corresponding
exponential. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/DyadicLogAbsorption.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/DyadicLogAbsorption.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdca1cc41a5beee97dcaa0bba635b597ab6f3f26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
