# norm_sum_mul_stdAddChar_neg_Ico_le_coefficientVariation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d0393bd-6ada-332d-86c0-9960d888155b",
  "kind": "theorem",
  "lexical_name": "norm_sum_mul_stdAddChar_neg_Ico_le_coefficientVariation",
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
  "slug": "norm-sum-mul-stdaddchar-neg-ico-le-coefficientvariation--56d2a6caff196076ffa919b9",
  "source": {
    "blob": "04d0569a302350bf6597cc870fcf957e0be61200",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 107,
    "path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56d2a6caff196076ffa919b9d9b4a15d3f24e97d509f9022d380ef108b7e8fd9",
  "verification": {
    "reference": "docs/verification/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d0393bd-6ada-332d-86c0-9960d888155b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sum_mul_stdAddChar_neg_Ico_le_coefficientVariation
    (a : ℕ → ℂ)
    (t : ZMod q)
    (A B : ℕ)
    (hA : 1 ≤ A)
    (ht : t ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        a n * ZMod.stdAddChar (-((n : ZMod q) * t))‖ ≤
      ((q : ℝ) /
          (2 * (finiteCyclicCircularDistance t : ℝ))) *
        finiteCyclicCoefficientVariation a A B := by
  by_cases hAB : A < B
  · let d := finiteCyclicCircularDistance t
    let M : ℝ := (q : ℝ) / (2 * (d : ℝ))
    have hpartial (K : ℕ) :
        ‖∑ n ∈ Finset.Ico A K,
            ZMod.stdAddChar (-((n : ZMod q) * t))‖ ≤ M := by
      simpa [M, d] using
        norm_sum_stdAddChar_neg_Ico_le_circularDistance
          (q := q) t A K hA ht
    rw [sum_mul_stdAddChar_neg_Ico_eq_terminal_add_variation
      a t A B hAB]
    have hend :
        ‖a (B - 1) *
            (∑ n ∈ Finset.Ico A B,
              ZMod.stdAddChar (-((n : ZMod q) * t)))‖ ≤
          ‖a (B - 1)‖ * M := by
      rw [norm_mul]
      exact mul_le_mul_of_nonneg_left (hpartial B) (norm_nonneg _)
    have hsteps :
        ‖∑ k ∈ Finset.Ico A (B - 1),
            (a k - a (k + 1)) *
              (∑ n ∈ Finset.Ico A (k + 1),
                ZMod.stdAddChar (-((n : ZMod q) * t)))‖ ≤
          ∑ k ∈ Finset.Ico A (B - 1),
            ‖a k - a (k + 1)‖ * M := by
      calc
        ‖∑ k ∈ Finset.Ico A (B - 1),
            (a k - a (k + 1)) *
              (∑ n ∈ Finset.Ico A (k + 1),
                ZMod.stdAddChar (-((n : ZMod q) * t)))‖ ≤
          ∑ k ∈ Finset.Ico A (B - 1),
            ‖(a k - a (k + 1)) *
              (∑ n ∈ Finset.Ico A (k + 1),
                ZMod.stdAddChar (-((n : ZMod q) * t)))‖ :=
          norm_sum_le _ _
        _ ≤ ∑ k ∈ Finset.Ico A (B - 1),
            ‖a k - a (k + 1)‖ * M := by
          apply Finset.sum_le_sum
          intro k _hk
          rw [norm_mul]
          exact mul_le_mul_of_nonneg_left
            (hpartial (k + 1)) (norm_nonneg _)
    calc
      ‖a (B - 1) *
            (∑ n ∈ Finset.Ico A B,
              ZMod.stdAddChar (-((n : ZMod q) * t))) +
          ∑ k ∈ Finset.Ico A (B - 1),
            (a k - a (k + 1)) *
              (∑ n ∈ Finset.Ico A (k + 1),
                ZMod.stdAddChar (-((n : ZMod q) * t)))‖ ≤
        ‖a (B - 1) *
            (∑ n ∈ Finset.Ico A B,
              ZMod.stdAddChar (-((n : ZMod q) * t)))‖ +
          ‖∑ k ∈ Finset.Ico A (B - 1),
            (a k - a (k + 1)) *
              (∑ n ∈ Finset.Ico A (k + 1),
                ZMod.stdAddChar (-((n : ZMod q) * t)))‖ :=
        norm_add_le _ _
      _ ≤ ‖a (B - 1)‖ * M +
          ∑ k ∈ Finset.Ico A (B - 1),
            ‖a k - a (k + 1)‖ * M :=
        add_le_add hend hsteps
      _ = M * finiteCyclicCoefficientVariation a A B := by
        rw [← Finset.sum_mul]
        simp only [finiteCyclicCoefficientVariation, hAB, if_pos]
        ring
      _ = ((q : ℝ) /
          (2 * (finiteCyclicCircularDistance t : ℝ))) *
          finiteCyclicCoefficientVariation a A B := by
        rfl
  · have hBA : B ≤ A := Nat.le_of_not_gt hAB
    have hempty : Finset.Ico A B = ∅ :=
      Finset.Ico_eq_empty_iff.mpr hBA
    simp [hempty, finiteCyclicCoefficientVariation, hAB]

/-- Variation of the reciprocal-weighted coefficient sequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CharacterSums/FiniteCyclicWeightedVariation.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04d0569a302350bf6597cc870fcf957e0be61200` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
