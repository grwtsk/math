# centeredRow_abs_le_coarse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b466ff0c-ce3e-a400-6672-73ff2abfe60a",
  "kind": "theorem",
  "lexical_name": "centeredRow_abs_le_coarse",
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
  "slug": "centeredrow-abs-le-coarse--00cae2deae068117ddaf5562",
  "source": {
    "blob": "6c2c0a770235d3adc6e76252ad841135c5f2b206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00cae2deae068117ddaf5562fe9507afbb283ac941b28dcaf4e05071704d911c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b466ff0c-ce3e-a400-6672-73ff2abfe60a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredRow_abs_le_coarse (A K : ℝ) (m j : ℕ) (hA : 1 ≤ A) (hm : 1 ≤ m)
    (hK : 1 ≤ K) (hSlope : ∀ t : ℝ, 0 ≤ t → |correlationSlope A t| ≤ K) :
    |∑ n ∈ innerInventory A m j, centeredBeta (vaughanCutoff A) n *
      EstimatePlainKernel.sourcePlainWeight A ((m*n : ℕ) : ℝ)| ≤
    2 * Real.sqrt 2 * betaPrefixBudget (vaughanCutoff A) * (1+2*K) /
      (Real.sqrt (m : ℝ)*Real.exp ((j : ℝ)/2)) := by
  have hU := vaughanCutoff_pos A hA
  have hUL : vaughanCutoff A ≤ blockLower A j := le_max_left _ _
  have hLH : blockLower A j ≤ blockUpper A m j := le_max_left _ _
  have hl : blockLower A j ≤ leftUpper (blockLower A j) (blockUpper A m j) m :=
    le_max_left _ _
  have hr : rightLower (blockLower A j) (blockUpper A m j) m ≤ blockUpper A m j := by
    unfold rightLower; omega
  have hUr : vaughanCutoff A ≤ rightLower (blockLower A j) (blockUpper A m j) m :=
    hUL.trans (le_max_left _ _)
  have hlb := weightedInterval_abs_le_coarse A K m _ _ _ hA hm hU hUL hl hK hSlope
  have hrb := weightedInterval_abs_le_coarse A K m _ _ _ hA hm hU hUr hr hK hSlope
  have hL0 : 0 < (blockLower A j : ℝ) := by exact_mod_cast (by omega : 0 < blockLower A j)
  have hs : 1/Real.sqrt (rightLower (blockLower A j) (blockUpper A m j) m : ℝ) ≤
      1/Real.sqrt (blockLower A j : ℝ) := by
    apply one_div_le_one_div_of_le (Real.sqrt_pos.2 hL0)
    apply Real.sqrt_le_sqrt
    exact_mod_cast (le_max_left (blockLower A j) (min (blockUpper A m j) m))
  have hB : 0 ≤ betaPrefixBudget (vaughanCutoff A) :=
    Finset.sum_nonneg (fun _ _ ↦ abs_nonneg _)
  rw [centeredRow_eq_abel_split A m j hA hm,
    ← weightedCenteredInterval_eq_abel A m _ _ _ hA hm hU hUL hl,
    ← weightedCenteredInterval_eq_abel A m _ _ _ hA hm hU hUr hr]
  refine (abs_add_le _ _).trans ?_
  have he := mul_le_mul_of_nonneg_left (inv_sqrt_blockLower_le A j hA)
    (by positivity : 0 ≤ 2*betaPrefixBudget (vaughanCutoff A)*(1+2*K)/Real.sqrt (m : ℝ))
  have hsr := mul_le_mul_of_nonneg_left hs
    (by positivity : 0 ≤ betaPrefixBudget (vaughanCutoff A)*(1+2*K)/Real.sqrt (m : ℝ))
  simp only [div_eq_mul_inv, mul_inv_rev, one_mul] at hlb hrb he hsr ⊢
  nlinarith

/-- The positive outer Mangoldt norm retains the half-exponential long-block length. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c2c0a770235d3adc6e76252ad841135c5f2b206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
