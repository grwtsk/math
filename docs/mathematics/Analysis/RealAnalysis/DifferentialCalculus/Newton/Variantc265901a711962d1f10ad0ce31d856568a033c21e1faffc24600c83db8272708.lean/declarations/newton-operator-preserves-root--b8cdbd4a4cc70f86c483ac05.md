# newton_operator_preserves_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee950d0a98284d4d7ee1092dcbd1a1a07a9a244e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db2e42fe-4368-5932-9d3a-0c807a56cc14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9bd81ad0-b700-d4d3-353d-2b2c6db74d3a",
  "kind": "theorem",
  "lexical_name": "newton_operator_preserves_root",
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
  "slug": "newton-operator-preserves-root--b8cdbd4a4cc70f86c483ac05",
  "source": {
    "blob": "ee950d0a98284d4d7ee1092dcbd1a1a07a9a244e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 254,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8cdbd4a4cc70f86c483ac05011d1a11014a9734977a9cebf090138f09731668",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bd81ad0-b700-d4d3-353d-2b2c6db74d3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem newton_operator_preserves_root (e : Expr) (hsupp : ExprSupported e) (_hvar0 : UsesOnlyVar0 e)
    (I : IntervalRat) (c : ℚ) (fc dI : IntervalRat)
    (hc_in_I : (c : ℝ) ∈ I)
    (hfc : evalFunc1 e c ∈ fc)
    (hdI : ∀ ξ ∈ I, deriv (evalFunc1 e) ξ ∈ dI)
    (hdI_nonzero : ¬IntervalRat.containsZero dI)
    (x : ℝ) (hx : x ∈ I) (hroot : evalFunc1 e x = 0) :
    -- x is in the Newton operator interval c - fc/dI
    let dNonzero : IntervalRat.IntervalRatNonzero :=
      { lo := dI.lo, hi := dI.hi, le := dI.le, nonzero := hdI_nonzero }
    let dInv := IntervalRat.invNonzero dNonzero
    let Q := IntervalRat.mul fc dInv
    let Newton : IntervalRat := { lo := c - Q.hi, hi := c - Q.lo, le := by linarith [Q.le] }
    x ∈ Newton := by
  intro dNonzero dInv Q Newton
  -- Case 1: x = c (root is at the center)
  by_cases hxc : x = c
  · -- If x = c, then f(c) = 0, so fc contains 0
    subst hxc
    -- Since f(c) = 0 and 0 ∈ fc, we have Q contains 0/dI = 0
    -- So Newton = [c - Q.hi, c - Q.lo] contains c
    simp only [IntervalRat.mem_def]
    -- fc contains 0, so Q = fc * dInv contains 0
    have hfc_zero : (0 : ℝ) ∈ fc := by simp only [hroot] at hfc; exact hfc
    simp only [IntervalRat.mem_def] at hfc_zero
    -- 0 ∈ Q since 0 * anything = 0 and 0 ∈ fc
    have hQ_zero : (0 : ℝ) ∈ Q := by
      have : (0 : ℝ) = 0 * (dInv.lo : ℝ) := by ring
      rw [this]
      apply IntervalRat.mem_mul
      · simp only [IntervalRat.mem_def]
        exact ⟨hfc_zero.1, hfc_zero.2⟩
      · simp only [IntervalRat.mem_def]
        constructor
        · exact le_refl _
        · exact_mod_cast dInv.le
    simp only [IntervalRat.mem_def] at hQ_zero
    -- Newton.lo = c - Q.hi, Newton.hi = c - Q.lo
    -- Need: Newton.lo ≤ c ≤ Newton.hi
    -- i.e., c - Q.hi ≤ c ≤ c - Q.lo
    -- i.e., -Q.hi ≤ 0 ≤ -Q.lo
    -- i.e., Q.lo ≤ 0 ≤ Q.hi
    simp only [Newton]  -- unfold Newton definition
    simp only [Rat.cast_sub]  -- (c - Q.hi : ℝ) = c - Q.hi
    constructor
    · -- Newton.lo ≤ c, i.e., c - Q.hi ≤ c
      linarith [hQ_zero.2]
    · -- c ≤ Newton.hi, i.e., c ≤ c - Q.lo
      linarith [hQ_zero.1]
  · -- Case 2: x ≠ c, use MVT
    -- By MVT: f(x) - f(c) = f'(ξ)(x - c) for some ξ between c and x
    have hmvt := mvt_for_eval e hsupp I c x hc_in_I hx (Ne.symm hxc)
    obtain ⟨ξ, hξ_between, hξ_eq⟩ := hmvt
    -- ξ is in I (between c and x, both in I)
    have hξ_in_I : ξ ∈ I := between_mem_interval I c x ξ hc_in_I hx hξ_between
    -- f'(ξ) ∈ dI
    have hderiv_in_dI : deriv (evalFunc1 e) ξ ∈ dI := hdI ξ hξ_in_I
    -- From MVT: f(x) - f(c) = f'(ξ)(x - c)
    -- Since f(x) = 0: -f(c) = f'(ξ)(x - c), so x = c - f(c)/f'(ξ)
    have hfc_val : evalFunc1 e c = deriv (evalFunc1 e) ξ * (c - x) := by
      have : evalFunc1 e x - evalFunc1 e c = deriv (evalFunc1 e) ξ * (x - c) := hξ_eq
      simp only [hroot, zero_sub] at this
      linarith
    -- f'(ξ) ≠ 0 (since dI doesn't contain zero and f'(ξ) ∈ dI)
    have hderiv_ne : deriv (evalFunc1 e) ξ ≠ 0 := by
      intro hcontra
      have hmem : (0 : ℝ) ∈ dI := by rw [← hcontra]; exact hderiv_in_dI
      simp only [IntervalRat.mem_def] at hmem
      have hcz := hdI_nonzero
      simp only [IntervalRat.containsZero, not_and, not_le] at hcz
      rcases le_or_gt dI.lo 0 with hlo | hlo
      · have hhi := hcz hlo
        have hhi_cast : (dI.hi : ℝ) < 0 := by exact_mod_cast hhi
        linarith
      · have hlo_cast : (dI.lo : ℝ) > 0 := by exact_mod_cast hlo
        linarith
    -- So x = c - f(c)/f'(ξ)
    have hx_eq : x = c - evalFunc1 e c / deriv (evalFunc1 e) ξ := by
      field_simp [hderiv_ne] at hfc_val ⊢
      linarith
    -- Now show x ∈ Newton = [c - Q.hi, c - Q.lo]
    -- We need: c - Q.hi ≤ x ≤ c - Q.lo
    -- i.e., c - Q.hi ≤ c - f(c)/f'(ξ) ≤ c - Q.lo
    -- i.e., Q.lo ≤ f(c)/f'(ξ) ≤ Q.hi
    -- This follows from f(c) ∈ fc, f'(ξ)⁻¹ ∈ dInv, and Q = fc * dInv
    simp only [IntervalRat.mem_def]
    rw [hx_eq]
    -- Need: c - Q.hi ≤ c - f(c)/f'(ξ) ≤ c - Q.lo
    -- Equiv: Q.lo ≤ f(c)/f'(ξ) ≤ Q.hi
    have hquot_in_Q : evalFunc1 e c / deriv (evalFunc1 e) ξ ∈ Q := by
      have hinv : (deriv (evalFunc1 e) ξ)⁻¹ ∈ dInv := by
        apply IntervalRat.mem_invNonzero
        · exact hderiv_in_dI
        · exact hderiv_ne
      have : evalFunc1 e c / deriv (evalFunc1 e) ξ = evalFunc1 e c * (deriv (evalFunc1 e) ξ)⁻¹ := by
        field_simp
      rw [this]
      exact IntervalRat.mem_mul hfc hinv
    simp only [IntervalRat.mem_def] at hquot_in_Q
    -- Need: Newton.lo ≤ x ≤ Newton.hi
    -- Newton.lo = c - Q.hi, Newton.hi = c - Q.lo, x = c - f(c)/f'(ξ)
    -- So need: c - Q.hi ≤ c - f(c)/f'(ξ) ≤ c - Q.lo
    -- Equiv:   f(c)/f'(ξ) ≤ Q.hi  and  Q.lo ≤ f(c)/f'(ξ)
    simp only [Newton]  -- unfold Newton definition
    simp only [Rat.cast_sub]  -- (c - Q.hi : ℝ) = c - Q.hi
    constructor
    · -- Newton.lo ≤ x, i.e., c - Q.hi ≤ c - f(c)/f'(ξ)
      linarith [hquot_in_Q.2]
    · -- x ≤ Newton.hi, i.e., c - f(c)/f'(ξ) ≤ c - Q.lo
      linarith [hquot_in_Q.1]

/-- If a root exists in I and Newton step produces N, then the root is in N.
    This is the key soundness property: Newton refinement preserves roots.

    Requires `UsesOnlyVar0 e` to connect our AD derivative bounds to actual derivatives.
    This is a reasonable assumption for root finding on single-variable expressions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variantc265901a711962d1f10ad0ce31d856568a033c21e1faffc24600c83db8272708.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee950d0a98284d4d7ee1092dcbd1a1a07a9a244e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
