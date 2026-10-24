# mem_evalTaylorSeries_sin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ebfd077-d7eb-a2ef-fdfb-0de05faadee4",
  "kind": "theorem",
  "lexical_name": "mem_evalTaylorSeries_sin",
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
  "slug": "mem-evaltaylorseries-sin--39fbeb9e9a5286bceecc5360",
  "source": {
    "blob": "a5d77910a9e93a11e86c3302ea1599c8aaba4194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 744,
    "line": 689,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39fbeb9e9a5286bceecc5360fbb0f4644e002c0a8138900a1744439c622b270d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ebfd077-d7eb-a2ef-fdfb-0de05faadee4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–744.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_evalTaylorSeries_sin {x : ℝ} {I : IntervalRat} (hx : x ∈ I) (n : ℕ) :
    ∑ i ∈ Finset.range (n + 1), (iteratedDeriv i Real.sin 0 / i.factorial) * x ^ i ∈
      evalTaylorSeries (sinTaylorCoeffs n) I := by
  have hmem := mem_evalTaylorSeries hx (sinTaylorCoeffs n)
  convert hmem using 1
  simp only [sinTaylorCoeffs, ratFactorial]
  rw [List.zipIdx_map]
  simp only [List.map_map]
  rw [← list_map_sum_eq_finset_sum (fun i => (iteratedDeriv i Real.sin 0 / i.factorial) * x ^ i) (n + 1)]
  congr 1
  symm
  -- Step 1: Simplify the RHS using zipIdx_range_map
  have h1 : (List.range (n + 1)).zipIdx.map
        ((fun p : ℚ × ℕ => (p.1 : ℝ) * x ^ p.2) ∘ Prod.map
          (fun i => if i % 2 = 1 then (-1 : ℚ) ^ ((i - 1) / 2) / i.factorial else 0) id) =
      (List.range (n + 1)).map (fun i =>
        ((if i % 2 = 1 then (-1 : ℚ) ^ ((i - 1) / 2) / i.factorial else 0 : ℚ) : ℝ) * x ^ i) := by
    convert zipIdx_range_map
      (fun a b => ((if a % 2 = 1 then (-1 : ℚ) ^ ((a - 1) / 2) / a.factorial else 0 : ℚ) : ℝ) * x ^ b)
      (n + 1) using 2
  rw [h1]
  -- Step 2: Show term-by-term equality
  apply List.map_congr_left
  intro i _
  -- Need: (iteratedDeriv i sin 0 / i!) * x^i = ((sinCoeff i) : ℝ) * x^i
  -- where sinCoeff i = if i % 2 = 1 then (-1)^((i-1)/2) / i! else 0
  congr 1
  -- Show iteratedDeriv i sin 0 / i! = sinCoeff i (as ℝ)
  rw [iteratedDeriv_sin_zero]
  have h4 : i % 4 < 4 := Nat.mod_lt i (by norm_num)
  rcases (by omega : i % 4 = 0 ∨ i % 4 = 1 ∨ i % 4 = 2 ∨ i % 4 = 3) with h0 | h1 | h2 | h3
  · -- i % 4 = 0: i is even, iteratedDeriv = 0
    have hi_even : i % 2 = 0 := by omega
    have hi_ne : i % 2 ≠ 1 := by omega
    simp only [h0, ↓reduceIte, zero_div, if_neg hi_ne, Rat.cast_zero]
  · -- i % 4 = 1: i is odd, iteratedDeriv = 1, coefficient = (-1)^((i-1)/2) / i!
    have hi_odd : i % 2 = 1 := by omega
    simp only [h1, ↓reduceIte, if_pos hi_odd]
    simp only [Rat.cast_div, Rat.cast_pow, Rat.cast_neg, Rat.cast_one, Rat.cast_natCast]
    congr 1
    have heven : Even ((i - 1) / 2) := ⟨(i - 1) / 2 / 2, by omega⟩
    exact heven.neg_one_pow
  · -- i % 4 = 2: i is even, iteratedDeriv = 0
    have hi_even : i % 2 = 0 := by omega
    have hi_ne : i % 2 ≠ 1 := by omega
    simp only [h2, ↓reduceIte, if_neg hi_ne]
    norm_num
  · -- i % 4 = 3: i is odd, iteratedDeriv = -1, coefficient = (-1)^((i-1)/2) / i!
    have hi_odd : i % 2 = 1 := by omega
    simp only [h3, if_pos hi_odd]
    simp only [Rat.cast_div, Rat.cast_pow, Rat.cast_neg, Rat.cast_one, Rat.cast_natCast]
    have hodd : Odd ((i - 1) / 2) := ⟨(i - 1) / 2 / 2, by omega⟩
    rw [hodd.neg_one_pow]
    norm_num

/-- The iterated derivative of cos is cos, -sin, -cos, sin in a cycle of 4. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d77910a9e93a11e86c3302ea1599c8aaba4194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
