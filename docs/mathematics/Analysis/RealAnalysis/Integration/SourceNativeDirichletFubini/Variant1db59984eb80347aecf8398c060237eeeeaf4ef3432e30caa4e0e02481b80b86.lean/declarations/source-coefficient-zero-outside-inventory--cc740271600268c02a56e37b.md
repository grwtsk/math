# source_coefficient_zero_outside_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59036d6b-0ed4-1d61-b8dc-d5325756d770",
  "kind": "theorem",
  "lexical_name": "source_coefficient_zero_outside_inventory",
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
  "slug": "source-coefficient-zero-outside-inventory--cc740271600268c02a56e37b",
  "source": {
    "blob": "67e7951da4ede4ecc10eaff51e2f53dd5c4e5f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 171,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc740271600268c02a56e37bfba6d727af115cbe9c5f04d972702131a5ee5d55",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59036d6b-0ed4-1d61-b8dc-d5325756d770`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_coefficient_zero_outside_inventory (A : ℝ) (hA : 1 ≤ A)
    (n : ℕ) (hn : n ∉ primePowerInventory (2 * A)) :
    vonMangoldt n * exponentialTest (sourceCorrelation explicitSecondDerivative A)
      (Real.log n) = 0 := by
  by_cases htwo : 2 ≤ n
  · have hN : ⌊Real.exp (2 * A)⌋₊ < n := by
      simp only [primePowerInventory, Finset.mem_Icc, not_and] at hn
      exact Nat.lt_of_not_ge (hn htwo)
    have hnpos : 0 < (n : ℝ) := by exact_mod_cast lt_of_lt_of_le (by norm_num : 0 < 2) htwo
    have hx : Real.exp (2 * A) < (n : ℝ) := (Nat.floor_lt (Real.exp_pos _).le).mp hN
    have ht : 2 * A < Real.log (n : ℝ) := (Real.lt_log_iff_exp_lt hnpos).mpr hx
    have hC := sourceCorrelation_eq_zero_of_two_mul_le_abs A (Real.log n)
      (by linarith : 0 < A) (le_trans ht.le (le_abs_self _))
    simp [exponentialTest, hC]
  · have hnsmall : n = 0 ∨ n = 1 := by omega
    rcases hnsmall with rfl | rfl <;> simp

/-- The actual initial right contour equals the exact current closed prime-power moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67e7951da4ede4ecc10eaff51e2f53dd5c4e5f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
