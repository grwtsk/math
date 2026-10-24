# actual_two_density_cutoff_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e1c3dd16333d4f197e16a5ca35b0b3d6deb1a85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a9dfca2-6d99-a813-f062-4d97ea308d1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f08518c-b46e-d194-3cea-75d804c727db",
  "kind": "theorem",
  "lexical_name": "actual_two_density_cutoff_error_le",
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
  "slug": "actual-two-density-cutoff-error-le--3976132baaf9bf06da55f438",
  "source": {
    "blob": "5e1c3dd16333d4f197e16a5ca35b0b3d6deb1a85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 171,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3976132baaf9bf06da55f438394e546afa5bf523ac292c84e52849d5c837d6a3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f08518c-b46e-d194-3cea-75d804c727db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_two_density_cutoff_error_le (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    let h := u*v
    let Z := Nat.sqrt (N / max u v)
    let YL := Nat.sqrt (N / max (2*u) v)
    let YR := Nat.sqrt (N / max u (2*v))
    |(ArithmeticFunction.moebius h : ℝ) * SquarefreeCount.finiteSquarefreeDensity h Z /
        Real.sqrt (h:ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * SquarefreeCount.finiteSquarefreeDensity (2*h) YL /
        Real.sqrt ((2*h:ℕ):ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * SquarefreeCount.finiteSquarefreeDensity (2*h) YR /
        Real.sqrt ((2*h:ℕ):ℝ) -
      FiniteDensityInsertion.twoDensityFactor * (ArithmeticFunction.moebius h : ℝ) *
        SquarefreeCount.finiteSquarefreeDensity h Z / Real.sqrt (h:ℝ)| ≤
      (7 * Real.sqrt 2 / (12 * Real.sqrt (h:ℝ))) * (1/(YL:ℝ) + 1/(YR:ℝ)) := by
  dsimp only
  have hh : 1 ≤ u*v := Nat.mul_pos hu hv
  rw [actual_two_density_coefficient_eq (u*v) _ _ _ hh hodd]
  have heq (a b c k : ℝ) :
      ((ArithmeticFunction.moebius (u*v):ℝ)/Real.sqrt ((u*v:ℕ):ℝ)) *
        (a-(Real.sqrt 2/2)*(b+c)) -
      k*(ArithmeticFunction.moebius (u*v):ℝ)*a/Real.sqrt ((u*v:ℕ):ℝ) =
      ((ArithmeticFunction.moebius (u*v):ℝ)/Real.sqrt ((u*v:ℕ):ℝ)) *
        (a-(Real.sqrt 2/2)*(b+c)-k*a) := by ring
  rw [heq, abs_mul]
  have hμ : |(ArithmeticFunction.moebius (u*v):ℝ)/Real.sqrt ((u*v:ℕ):ℝ)| ≤
      1/Real.sqrt ((u*v:ℕ):ℝ) := by
    rw [abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
    apply div_le_div_of_nonneg_right _ (Real.sqrt_nonneg _)
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := u*v))
  calc
    _ ≤ (1/Real.sqrt ((u*v:ℕ):ℝ)) *
        ((7*Real.sqrt 2/12) *
          (1/(Nat.sqrt (N/max (2*u) v):ℝ)+1/(Nat.sqrt (N/max u (2*v)):ℝ))) :=
      mul_le_mul hμ (signed_two_density_both_cutoffs_error_le N u v hu hv hodd hG)
        (abs_nonneg _) (by positivity)
    _ = _ := by ring


end
end RatioInsertionCutoffsScratch

#print RatioInsertionCutoffsScratch.max_two_left_bounds
#print axioms RatioInsertionCutoffsScratch.max_two_left_bounds
#print RatioInsertionCutoffsScratch.commonScale_two_left_bounds
#print axioms RatioInsertionCutoffsScratch.commonScale_two_left_bounds
#print RatioInsertionCutoffsScratch.commonScale_two_right_bounds
#print axioms RatioInsertionCutoffsScratch.commonScale_two_right_bounds
#print RatioInsertionCutoffsScratch.commonScale_two_left_eq_full
#print axioms RatioInsertionCutoffsScratch.commonScale_two_left_eq_full
#print RatioInsertionCutoffsScratch.commonScale_two_left_eq_half
#print axioms RatioInsertionCutoffsScratch.commonScale_two_left_eq_half
#print RatioInsertionCutoffsScratch.commonScale_two_left_intermediate
#print axioms RatioInsertionCutoffsScratch.commonScale_two_left_intermediate
#print RatioInsertionCutoffsScratch.commonScale_two_left_cases
#print axioms RatioInsertionCutoffsScratch.commonScale_two_left_cases
#print RatioInsertionCutoffsScratch.commonScale_two_left_empty
#print axioms RatioInsertionCutoffsScratch.commonScale_two_left_empty
#print RatioInsertionCutoffsScratch.sqrt_commonScale_two_left_bounds
#print axioms RatioInsertionCutoffsScratch.sqrt_commonScale_two_left_bounds
#print RatioInsertionCutoffsScratch.commonScale_eight_iff
#print axioms RatioInsertionCutoffsScratch.commonScale_eight_iff
#print RatioInsertionCutoffsScratch.sqrt_commonScale_two_left_admissible
#print axioms RatioInsertionCutoffsScratch.sqrt_commonScale_two_left_admissible
#print RatioInsertionCutoffsScratch.signed_two_density_left_cutoffs_error_le
#print axioms RatioInsertionCutoffsScratch.signed_two_density_left_cutoffs_error_le
#print RatioInsertionCutoffsScratch.sqrt_commonScale_two_right_admissible
#print axioms RatioInsertionCutoffsScratch.sqrt_commonScale_two_right_admissible
#print RatioInsertionCutoffsScratch.signed_two_density_right_cutoffs_error_le
#print axioms RatioInsertionCutoffsScratch.signed_two_density_right_cutoffs_error_le
#print RatioInsertionCutoffsScratch.signed_two_density_both_cutoffs_error_le
#print axioms RatioInsertionCutoffsScratch.signed_two_density_both_cutoffs_error_le
#print RatioInsertionCutoffsScratch.actual_two_density_coefficient_eq
#print axioms RatioInsertionCutoffsScratch.actual_two_density_coefficient_eq
#print RatioInsertionCutoffsScratch.actual_two_density_cutoff_error_le
#print axioms RatioInsertionCutoffsScratch.actual_two_density_cutoff_error_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e1c3dd16333d4f197e16a5ca35b0b3d6deb1a85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
