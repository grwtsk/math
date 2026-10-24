# mem_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d547a37-c109-7b1f-7c8b-9db2d3a88345",
  "kind": "theorem",
  "lexical_name": "mem_sqrt",
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
  "slug": "mem-sqrt--c1546d8a713bcd3b8b7af5f0",
  "source": {
    "blob": "0a4de3f5a215f3b37c591eaa95f1834bb2650d24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 298,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nonlinear/Variantd722b0651cf6c483fb71572e5b9c16af37b6ac653561f9766f03ee9b9f9aceca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1546d8a713bcd3b8b7af5f043a404143045d786e74fbbf352ec5bba9a11af84",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nonlinear/Variantd722b0651cf6c483fb71572e5b9c16af37b6ac653561f9766f03ee9b9f9aceca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d547a37-c109-7b1f-7c8b-9db2d3a88345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sqrt {a : AffineForm} {eps : NoiseAssignment} {v : ℝ}
    (hvalid : validNoise eps)
    (hlen : eps.length = a.coeffs.length)
    (hmem : mem_affine a eps v)
    (hv_nonneg : 0 ≤ v) :
    mem_affine (sqrt a) eps (Real.sqrt v) := by
  -- Get v ∈ a.toInterval
  have hv_in_I := mem_toInterval hvalid hlen hmem

  -- Set up the interval
  let I := a.toInterval

  -- Get Real.sqrt v ∈ sqrtInterval I = [0, max I.hi 1]
  have hsqrt_in := IntervalRat.mem_sqrtInterval hv_in_I hv_nonneg
  simp only [IntervalRat.sqrtInterval, IntervalRat.mem_def, Rat.cast_zero] at hsqrt_in
  have hsqrt_lo : 0 ≤ Real.sqrt v := hsqrt_in.1
  have hsqrt_hi : Real.sqrt v ≤ max (I.hi : ℝ) 1 := by
    have := hsqrt_in.2
    simp only [Rat.cast_max, Rat.cast_one] at this
    exact this

  -- Case split on whether I.lo ≥ 0
  simp only [sqrt, IntervalRat.sqrtInterval, mem_affine, evalLinear, linearSum]
  split
  · -- Non-negative interval case
    rename_i h
    simp only [List.zipWith, List.sum_nil, add_zero]

    -- Key simplifications
    have hmid : ((0 + max I.hi 1) / 2 : ℚ) = max I.hi 1 / 2 := by ring
    have hrad : ((max I.hi 1 - 0) / 2 : ℚ) = max I.hi 1 / 2 := by ring
    have hrad_nonneg : 0 ≤ (max I.hi 1 - 0) / 2 := by
      have h1 : (1 : ℚ) ≤ max I.hi 1 := le_max_right I.hi 1; linarith
    have habs_rad : |((max I.hi 1 - 0) / 2 : ℚ)| = (max I.hi 1 - 0) / 2 :=
      abs_of_nonneg hrad_nonneg

    use Real.sqrt v - ((0 + max I.hi 1) / 2 : ℚ)
    constructor
    · -- |sqrt v - mid| ≤ |rad|
      rw [habs_rad]
      have hmid_real : (((0 + max I.hi 1) / 2 : ℚ) : ℝ) = max (I.hi : ℝ) 1 / 2 := by
        simp only [Rat.cast_div, Rat.cast_max, Rat.cast_one, zero_add]
        ring
      have hrad_real : (((max I.hi 1 - 0) / 2 : ℚ) : ℝ) = max (I.hi : ℝ) 1 / 2 := by
        simp only [Rat.cast_div, Rat.cast_max, Rat.cast_one, sub_zero]
        ring
      rw [abs_le]
      constructor
      · -- -rad ≤ sqrt v - mid
        rw [hmid_real, hrad_real]
        linarith
      · -- sqrt v - mid ≤ rad
        rw [hmid_real, hrad_real]
        have : max (I.hi : ℝ) 1 = max (I.hi : ℝ) 1 / 2 + max (I.hi : ℝ) 1 / 2 := by ring
        linarith
    · ring
  · -- Negative interval case: return wide bounds with dynamic r = max I.hi 1
    rename_i h
    simp only [List.zipWith, List.sum_nil, add_zero]
    use Real.sqrt v
    constructor
    · -- |sqrt v| ≤ max I.hi 1
      have hsqrt_nonneg := Real.sqrt_nonneg v
      rw [abs_of_nonneg hsqrt_nonneg]
      -- We have hsqrt_hi : sqrt v ≤ max (I.hi : ℝ) 1
      -- Need to show: sqrt v ≤ ↑(max I.hi 1)
      simp only [Rat.cast_max, Rat.cast_one]
      exact hsqrt_hi
    · simp

/-- Square root is sound without a nonnegativity hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nonlinear/Variantd722b0651cf6c483fb71572e5b9c16af37b6ac653561f9766f03ee9b9f9aceca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nonlinear/Variantd722b0651cf6c483fb71572e5b9c16af37b6ac653561f9766f03ee9b9f9aceca.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a4de3f5a215f3b37c591eaa95f1834bb2650d24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
