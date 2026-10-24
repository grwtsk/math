# sincTaylorCoeffs_eq_iteratedDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e970205ff06cf1cf82c7132d8d4f93251403f29c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 593,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96c4e0ab-5684-1735-4152-5aabcff13ea0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9d590ec-8e0c-5ad2-0116-75a42e84debb",
  "kind": "theorem",
  "lexical_name": "sincTaylorCoeffs_eq_iteratedDeriv",
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
  "slug": "sinctaylorcoeffs-eq-iteratedderiv--c1aab96eb96332f0e738817d",
  "source": {
    "blob": "e970205ff06cf1cf82c7132d8d4f93251403f29c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 593,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1aab96eb96332f0e738817dab9e17c68889214cee152629b0f00a2235bf9cc1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9d590ec-8e0c-5ad2-0116-75a42e84debb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 593–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sincTaylorCoeffs_eq_iteratedDeriv (n i : ℕ) (hi : i ≤ n) :
    (sincTaylorCoeffs n i : ℝ) = iteratedDeriv i Real.sinc 0 / i.factorial := by
  simp only [sincTaylorCoeffs, hi, ↓reduceIte]
  by_cases heven : i % 2 = 0
  · simp only [heven, ↓reduceIte]
    rw [iteratedDeriv_sinc_zero]
    simp only [heven, ↓reduceIte]
    -- The coefficients match: (-1)^k / (2k+1)! = ((-1)^k / (2k+1)) / (2k)!
    -- This follows from (2k+1)! = (2k+1) * (2k)!
    obtain ⟨k, hk⟩ : ∃ k, i = 2 * k := ⟨i / 2, by omega⟩
    subst hk
    simp only [Nat.mul_div_cancel_left k (by omega : 0 < 2)]
    -- LHS: ↑((-1)^k / (2k+1)! : ℚ)  RHS: ((-1)^k / (2k+1)) / (2k)!
    have hfact : (2 * k + 1).factorial = (2 * k + 1) * (2 * k).factorial := Nat.factorial_succ (2 * k)
    -- Simplify LHS in ℚ first: (-1)^k / (2k+1)! = (-1)^k / ((2k+1) * (2k)!)
    have lhs_eq : ((-1 : ℚ) ^ k / ((2 * k + 1).factorial : ℕ) : ℚ) =
        (-1 : ℚ) ^ k / ((2 * k + 1 : ℕ) * (2 * k).factorial) := by
      rw [hfact]; push_cast; rfl
    rw [lhs_eq]
    -- Now both sides are in similar form, convert to ℝ and simplify
    have h2k_fact_ne : ((2 * k).factorial : ℝ) ≠ 0 := by positivity
    have h2k1_ne : ((2 * k + 1 : ℕ) : ℝ) ≠ 0 := by positivity
    push_cast
    field_simp
  · have hodd : i % 2 = 1 := by omega
    simp only [heven]; norm_num
    rw [iteratedDeriv_sinc_zero]
    simp only [heven, ↓reduceIte, zero_div]

/-- sincTaylorPoly evaluates to the standard Taylor sum for sinc at 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantd3add2e6e18bb78fa18cb0e9569b5ce02d8325c26ba119b844dcc15cc1f663c1.lean#L593).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e970205ff06cf1cf82c7132d8d4f93251403f29c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
