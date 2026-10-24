# mem_evalTaylorSeries_cos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 778,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea962544-7c94-484b-9530-9678141d5d42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95a417be-9b6e-7d94-0dee-64aea3dba44d",
  "kind": "theorem",
  "lexical_name": "mem_evalTaylorSeries_cos",
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
  "slug": "mem-evaltaylorseries-cos--e632d59c76cb01555d464208",
  "source": {
    "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 836,
    "line": 778,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e632d59c76cb01555d464208d34bf78254a33c41f0c3c70eb80238abbf3057dc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95a417be-9b6e-7d94-0dee-64aea3dba44d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 778–836.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_evalTaylorSeries_cos {x : ℝ} {I : IntervalRat} (hx : x ∈ I) (n : ℕ) :
    ∑ i ∈ Finset.range (n + 1), (iteratedDeriv i Real.cos 0 / i.factorial) * x ^ i ∈
      evalTaylorSeries (cosTaylorCoeffs n) I := by
  have hmem := mem_evalTaylorSeries hx (cosTaylorCoeffs n)
  convert hmem using 1
  simp only [cosTaylorCoeffs, ratFactorial]
  rw [List.zipIdx_map]
  simp only [List.map_map]
  rw [← list_map_sum_eq_finset_sum (fun i => (iteratedDeriv i Real.cos 0 / i.factorial) * x ^ i) (n + 1)]
  congr 1
  symm
  -- Step 1: Simplify the RHS using zipIdx_range_map
  have h1 : (List.range (n + 1)).zipIdx.map
        ((fun p : ℚ × ℕ => (p.1 : ℝ) * x ^ p.2) ∘ Prod.map
          (fun i => if i % 2 = 0 then (-1 : ℚ) ^ (i / 2) / i.factorial else 0) id) =
      (List.range (n + 1)).map (fun i =>
        ((if i % 2 = 0 then (-1 : ℚ) ^ (i / 2) / i.factorial else 0 : ℚ) : ℝ) * x ^ i) := by
    convert zipIdx_range_map
      (fun a b => ((if a % 2 = 0 then (-1 : ℚ) ^ (a / 2) / a.factorial else 0 : ℚ) : ℝ) * x ^ b)
      (n + 1) using 2
  rw [h1]
  -- Step 2: Show term-by-term equality
  apply List.map_congr_left
  intro i _
  congr 1
  -- Show iteratedDeriv i cos 0 / i! = cosCoeff i (as ℝ)
  rw [iteratedDeriv_cos_zero]
  have h4 : i % 4 < 4 := Nat.mod_lt i (by norm_num)
  rcases (by omega : i % 4 = 0 ∨ i % 4 = 1 ∨ i % 4 = 2 ∨ i % 4 = 3) with h0 | h1 | h2 | h3
  · -- i % 4 = 0: i is even, iteratedDeriv = 1, coefficient = (-1)^(i/2) / i!
    have hi_even : i % 2 = 0 := by omega
    simp only [h0, ↓reduceIte, one_div, if_pos hi_even]
    simp only [Rat.cast_div, Rat.cast_pow, Rat.cast_neg, Rat.cast_one, Rat.cast_natCast]
    have heven : Even (i / 2) := ⟨i / 2 / 2, by omega⟩
    rw [heven.neg_one_pow]
    ring
  · -- i % 4 = 1: i is odd, iteratedDeriv = 0
    have hi_odd : i % 2 = 1 := by omega
    have hi_ne : i % 2 ≠ 0 := by omega
    simp only [h1, ↓reduceIte, if_neg hi_ne]
    norm_num
  · -- i % 4 = 2: i is even, iteratedDeriv = -1, coefficient = (-1)^(i/2) / i!
    have hi_even : i % 2 = 0 := by omega
    simp only [h2, if_pos hi_even]
    simp only [Rat.cast_div, Rat.cast_pow, Rat.cast_neg, Rat.cast_one, Rat.cast_natCast]
    have hodd : Odd (i / 2) := ⟨i / 2 / 2, by omega⟩
    rw [hodd.neg_one_pow]
    norm_num
  · -- i % 4 = 3: i is odd, iteratedDeriv = 0
    have hi_odd : i % 2 = 1 := by omega
    have hi_ne : i % 2 ≠ 0 := by omega
    simp only [h3, if_neg hi_ne]
    norm_num

/-! ### Taylor remainder micro-lemmas -/

/-- Unified Taylor remainder bound for exp: given x ∈ I with r = maxAbs I,
    the Taylor remainder |exp x - poly(x)| ≤ 3^(⌈r⌉+1) * r^(n+1) / (n+1)!.
    This encapsulates the domain setup and remainder calculation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean#L778).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c6829e8730fc564ee9c4c8215bb55539bae25a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
