# response_square_le_reciprocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38f2c42d-7b66-2865-dec2-8a673536e8bd",
  "kind": "theorem",
  "lexical_name": "response_square_le_reciprocal",
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
  "slug": "response-square-le-reciprocal--e1fccd866ed536aacf17282b",
  "source": {
    "blob": "2a2dcb692aca52f506e6375dcd47d714990ed8e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Moebius/DiagonalEnergyBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1fccd866ed536aacf17282b78eb71a47cc3e5401087eed81ec2e3bc3b117b29",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DiagonalEnergyBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38f2c42d-7b66-2865-dec2-8a673536e8bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem response_square_le_reciprocal {n : ℕ} (hn : 1 ≤ n) (u : ℝ) :
    response n u ^ 2 ≤ 4 * (n : ℝ)⁻¹ := by
  have hnpos : (0 : ℝ) < n := Nat.cast_pos.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
  have ha : 0 ≤ (n : ℝ) ^ (-(1 / 2 : ℝ)) := Real.rpow_nonneg hnpos.le _
  by_cases harrived : Real.log (n : ℝ) ≤ u
  · rw [response_of_arrived harrived]
    have hexp : Real.exp (-(Real.log (n : ℝ)) / 2) =
        (n : ℝ) ^ (-(1 / 2 : ℝ)) := by
      have h := exp_inverse_half (Real.log (n : ℝ))
      rw [Real.exp_log hnpos] at h
      exact h.symm
    have hupper : Real.exp (-u / 2) ≤ (n : ℝ) ^ (-(1 / 2 : ℝ)) := by
      rw [← hexp]
      apply Real.exp_le_exp.mpr
      linarith
    have hb : 0 ≤ Real.exp (-u / 2) := (Real.exp_pos _).le
    have hresponse0 : 0 ≤ responseKernel n u := by
      unfold responseKernel
      exact mul_nonneg zero_le_two (sub_nonneg.mpr hupper)
    have hresponseUpper : responseKernel n u ≤
        2 * (n : ℝ) ^ (-(1 / 2 : ℝ)) := by
      unfold responseKernel
      linarith
    have hsquare := (sq_le_sq₀ hresponse0 (mul_nonneg zero_le_two ha)).mpr hresponseUpper
    rw [mul_pow, inverse_half_square] at hsquare
    norm_num at hsquare
    exact hsquare
  · rw [response_of_not_arrived harrived]
    simp only [zero_pow (by decide : 2 ≠ 0)]
    exact mul_nonneg (by norm_num) (inv_nonneg.mpr hnpos.le)

/-- Completed diagonal density on the original fixed inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DiagonalEnergyBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DiagonalEnergyBounds.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a2dcb692aca52f506e6375dcd47d714990ed8e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
