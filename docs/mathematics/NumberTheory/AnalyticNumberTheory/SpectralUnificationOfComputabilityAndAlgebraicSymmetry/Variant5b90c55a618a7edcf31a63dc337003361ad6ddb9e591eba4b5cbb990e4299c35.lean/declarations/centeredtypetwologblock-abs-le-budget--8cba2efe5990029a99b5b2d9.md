# centeredTypeTwoLogBlock_abs_le_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40379e29-244b-72ff-e18e-db7169d95396",
  "kind": "theorem",
  "lexical_name": "centeredTypeTwoLogBlock_abs_le_budget",
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
  "slug": "centeredtypetwologblock-abs-le-budget--8cba2efe5990029a99b5b2d9",
  "source": {
    "blob": "6c2c0a770235d3adc6e76252ad841135c5f2b206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 156,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cba2efe5990029a99b5b2d95a4760600272727f7bb40e897138d189e7da8c1e",
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

Occurrence: `result:40379e29-244b-72ff-e18e-db7169d95396`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTypeTwoLogBlock_abs_le_budget (A K : ℝ) (c : ℕ × ℕ) (hA : 1 ≤ A)
    (hK : 1 ≤ K) (hSlope : ∀ t : ℝ, 0 ≤ t → |correlationSlope A t| ≤ K) :
    |centeredTypeTwoLogBlock A c| ≤ deterministicBlockBudget A K c := by
  let T := 2 * Real.sqrt 2 * (vaughanCutoff A : ℝ) * (1+2*K) /
    Real.exp ((c.2 : ℝ)/2)
  have hT : 0 ≤ T := by dsimp [T]; positivity
  have hb (m : ℕ) (hm : m ∈ logLongInventory A c.1) :
      |∑ n ∈ innerInventory A m c.2, centeredBeta (vaughanCutoff A) n *
        EstimatePlainKernel.sourcePlainWeight A ((m*n : ℕ) : ℝ)| ≤ T/Real.sqrt (m : ℝ) := by
    have hm1 : 1 ≤ m := by
      have := (Finset.mem_Ioc.mp (Finset.mem_filter.mp hm).1).1
      omega
    have h := mul_le_mul_of_nonneg_right (betaPrefixBudget_le (vaughanCutoff A))
      (by positivity : 0 ≤ 2*Real.sqrt 2*(1+2*K)/
        (Real.sqrt (m : ℝ)*Real.exp ((c.2 : ℝ)/2)))
    refine (centeredRow_abs_le_coarse A K m c.2 hA hm1 hK hSlope).trans ?_
    dsimp only [T]
    convert h using 1 <;> ring
  rw [centeredTypeTwoLogBlock_eq_rows]
  calc
    _ ≤ ∑ m ∈ logLongInventory A c.1, |vonMangoldt m *
        (∑ n ∈ innerInventory A m c.2, centeredBeta (vaughanCutoff A) n *
          EstimatePlainKernel.sourcePlainWeight A ((m*n : ℕ) : ℝ))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ logLongInventory A c.1, T*(vonMangoldt m/Real.sqrt (m : ℝ)) := by
      apply Finset.sum_le_sum
      intro m hm
      rw [abs_mul, abs_of_nonneg vonMangoldt_nonneg]
      exact (mul_le_mul_of_nonneg_left (hb m hm) vonMangoldt_nonneg).trans_eq (by ring)
    _ = T * ∑ m ∈ logLongInventory A c.1, vonMangoldt m/Real.sqrt (m : ℝ) := by
      rw [Finset.mul_sum]
    _ ≤ T*(Real.exp 1*((c.1 : ℝ)+1)*Real.exp ((c.1 : ℝ)/2)) :=
      mul_le_mul_of_nonneg_left (mangoldt_block_norm_le A c.1) hT
    _ = deterministicBlockBudget A K c := by
      have he : Real.exp ((c.1 : ℝ)/2)/Real.exp ((c.2 : ℝ)/2) =
          Real.exp (((c.1 : ℝ)-(c.2 : ℝ))/2) := by
        rw [← Real.exp_sub]
        congr 1
        ring
      dsimp [T, deterministicBlockBudget]
      calc
        _ = (2*Real.sqrt 2*Real.exp 1*(vaughanCutoff A : ℝ)*(1+2*K)*((c.1 : ℝ)+1)) *
            (Real.exp ((c.1 : ℝ)/2)/Real.exp ((c.2 : ℝ)/2)) := by ring
        _ = _ := by rw [he]

/-- The exact residual consumer retains the entire source beta main ledger. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c2c0a770235d3adc6e76252ad841135c5f2b206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
