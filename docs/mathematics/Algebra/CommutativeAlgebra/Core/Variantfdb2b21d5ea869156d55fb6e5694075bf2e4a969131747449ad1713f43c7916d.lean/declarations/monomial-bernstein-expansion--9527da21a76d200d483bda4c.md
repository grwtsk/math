# monomial_bernstein_expansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 351,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1236c50-e69d-79ab-e866-f366f9044f19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a345458-3eaa-888c-b357-9a5a00594cde",
  "kind": "theorem",
  "lexical_name": "monomial_bernstein_expansion",
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
  "slug": "monomial-bernstein-expansion--9527da21a76d200d483bda4c",
  "source": {
    "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 351,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9527da21a76d200d483bda4c3305a9b4d38f24ef2ce77a77036d5f82720c1c71",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a345458-3eaa-888c-b357-9a5a00594cde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monomial_bernstein_expansion (n j : ℕ) (hjn : j ≤ n) (t : ℝ) :
    t ^ j = (Finset.range (n + 1)).sum (fun k =>
      if j ≤ k then (Nat.choose (n - j) (k - j) : ℝ) * t ^ k * (1 - t) ^ (n - k)
      else 0) := by
  -- Step 1: t^j = t^j * (t + (1-t))^(n-j)
  have h1 : t + (1 - t) = (1 : ℝ) := by ring
  have hstart : t ^ j = t ^ j * (t + (1 - t)) ^ (n - j) := by
    rw [h1, one_pow, mul_one]
  rw [hstart]
  -- Step 2: expand (t + (1-t))^(n-j) via binomial theorem
  rw [add_pow t (1 - t) (n - j)]
  -- Goal: t^j * Σ_m C(n-j,m) * t^m * (1-t)^(n-j-m) = Σ_k if j≤k then ...
  rw [Finset.mul_sum]
  -- Step 3: reindex the sum. LHS sums over m ∈ range(n-j+1), RHS over k ∈ range(n+1)
  -- Let k = m + j, so m = k - j
  -- We split the RHS: terms with k < j are 0, terms with j ≤ k contribute
  -- First simplify: the RHS sum over k < j gives 0
  have hsplit : (Finset.range (n + 1)).sum (fun k =>
      if j ≤ k then (Nat.choose (n - j) (k - j) : ℝ) * t ^ k * (1 - t) ^ (n - k)
      else 0) =
    (Finset.range (n - j + 1)).sum (fun m =>
      (Nat.choose (n - j) m : ℝ) * t ^ (m + j) * (1 - t) ^ (n - j - m)) := by
    -- Reindex: k = m + j
    rw [show n + 1 = j + (n + 1 - j) from by omega]
    rw [Finset.sum_range_add]
    -- The first part (k < j) sums to 0
    have hfirst : (Finset.range j).sum (fun k =>
        if j ≤ k then (Nat.choose (n - j) (k - j) : ℝ) * t ^ k * (1 - t) ^ (n - k)
        else 0) = 0 := by
      apply Finset.sum_eq_zero
      intro k hk
      simp only [Finset.mem_range] at hk
      simp only [show ¬(j ≤ k) from by omega, ite_false]
    rw [hfirst, zero_add]
    -- Second part: ∑ m in range(n+1-j), f(m+j)
    -- f(m+j) = if j ≤ m+j then C(n-j, m+j-j) * t^(m+j) * (1-t)^(n-(m+j)) else 0
    --        = C(n-j, m) * t^(m+j) * (1-t)^(n-j-m)
    rw [show n + 1 - j = n - j + 1 from by omega]
    apply Finset.sum_congr rfl
    intro m hm
    simp only [Finset.mem_range] at hm
    have hjle : j ≤ j + m := Nat.le_add_right j m
    rw [if_pos hjle]
    have h1 : j + m - j = m := by omega
    have h2 : n - (j + m) = n - j - m := by omega
    rw [h1, h2]
    ring
  rw [hsplit]
  -- Now both sides sum over m ∈ range(n-j+1)
  apply Finset.sum_congr rfl
  intro m hm
  simp only [Finset.mem_range] at hm
  -- LHS: t^j * (t^m * (1-t)^(n-j-m) * C(n-j,m))
  -- RHS: C(n-j,m) * t^(m+j) * (1-t)^(n-j-m)
  rw [pow_add t m j]
  ring

/-! ### Main Bernstein enclosure theorem -/

/- Key theorem: polynomial evaluation lies within Bernstein bounds.
    This is the fundamental theorem of Bernstein polynomials:
    For P(x) = Σₖ bₖ Bₖₙ(x), we have min(bₖ) ≤ P(x) ≤ max(bₖ) on [0,1].

    This follows because Bernstein basis functions are non-negative and sum to 1. -/
/-- Bridge lemma: evaluation of a polynomial equals a Finset sum of its coefficients times monomials. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f24d0e3165301f536c019c4032127a6854d8a77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
