# re_digamma_half_one_sub_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55a80d64-2e65-a5a2-49d0-8aa12278d622",
  "kind": "theorem",
  "lexical_name": "re_digamma_half_one_sub_ge",
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
  "slug": "re-digamma-half-one-sub-ge--60275c63e5bd1fb54086611f",
  "source": {
    "blob": "a0f7bda568b05342598acbd68ddba122a04e5816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 158,
    "path": "GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60275c63e5bd1fb54086611fc1e9476f1ed2695b30fe315f8ddae0c73b306457",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55a80d64-2e65-a5a2-49d0-8aa12278d622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem re_digamma_half_one_sub_ge {s : ℂ} (hre : 1 ≤ s.re) (hi : 2 ≤ |s.im|) :
    Real.log (|s.im| / 2) - 5 ≤ (Complex.digamma ((1 - s) / 2)).re := by
  have hs : s.im ≠ 0 := fun h => by rw [h, abs_zero] at hi; linarith
  set z : ℂ := (1 - s) / 2 with hzdef
  have hzre : z.re = (1 - s.re) / 2 := by simp [hzdef]
  have hzim : z.im = -s.im / 2 := by simp [hzdef]
  have hz : z.im ≠ 0 := by rw [hzim]; intro h; apply hs; linarith
  set N : ℕ := ⌊s.re / 2⌋₊ with hNdef
  have hfl : (N : ℝ) ≤ s.re / 2 := Nat.floor_le (by linarith)
  have hfl2 : s.re / 2 < N + 1 := Nat.lt_floor_add_one (s.re / 2)
  have key := digamma_add_nat_offreal hz (N + 1)
  -- the shifted point z + (N+1) has Re ∈ (1/2, 3/2] and |Im| = |Im s|/2 ≥ 1
  have hwre : 0 < (z + ((N + 1 : ℕ) : ℂ)).re := by
    simp only [Complex.add_re, Complex.natCast_re, hzre]; push_cast; linarith
  have hwim : (z + ((N + 1 : ℕ) : ℂ)).im = -s.im / 2 := by
    simp only [Complex.add_im, Complex.natCast_im, hzim, add_zero]
  have hwim1 : 1 ≤ |(z + ((N + 1 : ℕ) : ℂ)).im| := by
    rw [hwim, abs_div, abs_neg, abs_two]; linarith
  have hψw := re_digamma_ge hwre hwim1
  rw [hwim, abs_div, abs_neg, abs_two] at hψw
  -- the correction terms: all but the last have Re ≤ 0; the last has Re ≤ 1/2
  have hterm : ∀ k : ℕ, (1 / (z + (k : ℂ))).re = (z.re + k) / Complex.normSq (z + k) := by
    intro k; rw [one_div, Complex.inv_re]; simp
  have hfirst : ∑ k ∈ Finset.range N, (1 / (z + (k : ℂ))).re ≤ 0 := by
    apply Finset.sum_nonpos
    intro k hk
    rw [Finset.mem_range] at hk
    have hk' : (k : ℝ) + 1 ≤ N := by exact_mod_cast hk
    rw [hterm]
    apply div_nonpos_of_nonpos_of_nonneg _ (Complex.normSq_nonneg _)
    rw [hzre]; linarith
  have hlast : (1 / (z + (N : ℂ))).re ≤ 1 / 2 := by
    rw [hterm]
    have hN1 : 1 ≤ Complex.normSq (z + N) := by
      rw [Complex.normSq_apply]
      have h1 : (z + (N : ℂ)).im = -s.im / 2 := by simp [hzim]
      have h2 : 1 ≤ (-s.im / 2) ^ 2 := by
        have : 1 ≤ |s.im| / 2 := by linarith
        have h3 : (|s.im| / 2) ^ 2 = (-s.im / 2) ^ 2 := by rw [div_pow, div_pow, sq_abs]; ring
        nlinarith
      rw [h1]
      nlinarith [sq_nonneg ((z + (N : ℂ)).re)]
    have hre_le : z.re + N ≤ 1 / 2 := by rw [hzre]; linarith
    rw [div_le_iff₀ (by linarith)]
    linarith
  have hsum : ∑ k ∈ Finset.range (N + 1), (1 / (z + (k : ℂ))).re ≤ 1 / 2 := by
    rw [Finset.sum_range_succ]; linarith
  -- assemble
  have e : (Complex.digamma z).re = (Complex.digamma (z + ((N + 1 : ℕ) : ℂ))).re
      - ∑ k ∈ Finset.range (N + 1), (1 / (z + (k : ℂ))).re := by
    rw [key, Complex.add_re, Complex.re_sum]; ring
  rw [e]
  linarith

/-- Re L₂(σ+it) ≥ ½ log|t| − C for σ ≥ 1, |t| ≥ 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0f7bda568b05342598acbd68ddba122a04e5816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
