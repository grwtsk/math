# edgeBlockBudget_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36f705aace68ab77e36f01845f8a95a783436e92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89ce98b5-2bee-0194-ca19-0209a61fe97d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34d1b6d8-67e0-d107-9ff4-d26302d9cc15",
  "kind": "theorem",
  "lexical_name": "edgeBlockBudget_ge",
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
  "slug": "edgeblockbudget-ge--232fc4541dab8f43a9423854",
  "source": {
    "blob": "36f705aace68ab77e36f01845f8a95a783436e92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 158,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:232fc4541dab8f43a9423854aea52c7f60a0890d02861045d581a22c87e15512",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34d1b6d8-67e0-d107-9ff4-d26302d9cc15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edgeBlockBudget_ge (A : ℝ) (hA : 1 ≤ A) :
    32*A^2 ≤ edgeBlockBudget A := by
  have hA0 : 0 < A := by linarith
  let L := ⌊A/4⌋₊
  let S := (Finset.Icc 0 L).product (Finset.Icc 0 L)
  have hL : (L : ℝ) ≤ A/4 := Nat.floor_le (by positivity)
  have hS (c : ℕ × ℕ) (hc : c ∈ S) :
      c ∈ logCells A ∧ A ≤ cellSlack A c := by
    obtain ⟨hi, hj⟩ := Finset.mem_product.mp hc
    have hiR : (c.1 : ℝ) ≤ L := by exact_mod_cast (Finset.mem_Icc.mp hi).2
    have hjR : (c.2 : ℝ) ≤ L := by exact_mod_cast (Finset.mem_Icc.mp hj).2
    have hsum : c.1+c.2 ≤ logHeight A := by
      apply (Nat.le_floor_iff (by linarith : 0 ≤ 2*A)).2
      push_cast
      linarith
    constructor
    · simp only [logCells, Finset.mem_filter, Finset.product_eq_sprod,
        Finset.mem_product, Finset.mem_Icc]
      exact ⟨⟨⟨Nat.zero_le _, by omega⟩, ⟨Nat.zero_le _, by omega⟩⟩, hsum⟩
    · unfold cellSlack
      linarith
  have hb (c : ℕ × ℕ) (hc : c ∈ S) :
      (512 : ℝ) ≤ edgePolynomial (cellSlack A c) / A^9 := by
    apply (le_div_iff₀ (pow_pos hA0 9)).2
    have hz : 0 ≤ cellSlack A c := hA0.le.trans (hS c hc).2
    have hp : A^9 ≤ (cellSlack A c)^9 := by gcongr; exact (hS c hc).2
    have he : 512*(cellSlack A c)^9 ≤ edgePolynomial (cellSlack A c) := by
      unfold edgePolynomial
      nlinarith [pow_nonneg hz 5, sq_nonneg (cellSlack A c)]
    exact (mul_le_mul_of_nonneg_left hp (by norm_num)).trans he
  have hs : S ⊆ logCells A := fun c hc ↦ (hS c hc).1
  have hcard : (A/4)^2 ≤ ((S.card : ℕ) : ℝ) := by
    have hl := (Nat.lt_floor_add_one (A/4)).le
    change A/4 ≤ (L : ℝ)+1 at hl
    have hn : (0 : ℝ) ≤ L := Nat.cast_nonneg _
    simp only [S, Finset.product_eq_sprod, Finset.card_product, Nat.card_Icc,
      Nat.sub_zero, Nat.cast_mul, Nat.cast_add, Nat.cast_one]
    nlinarith
  calc
    _ ≤ (S.card : ℝ)*512 := by nlinarith
    _ = ∑ c ∈ S, (512 : ℝ) := by simp
    _ ≤ ∑ c ∈ S, edgePolynomial (cellSlack A c) / A^9 := Finset.sum_le_sum hb
    _ ≤ edgeBlockBudget A := by
      unfold edgeBlockBudget
      apply Finset.sum_le_sum_of_subset_of_nonneg hs
      intro c hc _
      have hz := (cellSlack_bounds A hA c hc).1
      unfold edgePolynomial
      positivity

/-- Conditional finite consumer, prior to discarding any source density factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36f705aace68ab77e36f01845f8a95a783436e92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
