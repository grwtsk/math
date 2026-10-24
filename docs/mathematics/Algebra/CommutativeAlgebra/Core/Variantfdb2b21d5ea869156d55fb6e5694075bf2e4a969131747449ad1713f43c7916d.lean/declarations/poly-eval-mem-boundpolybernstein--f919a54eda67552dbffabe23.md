# poly_eval_mem_boundPolyBernstein

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
      "line": 729,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b6e106b-a043-4fcd-c207-6c0a64c2b7f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08e3c647-0106-b1ef-804d-ebb377bb37c5",
  "kind": "theorem",
  "lexical_name": "poly_eval_mem_boundPolyBernstein",
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
  "slug": "poly-eval-mem-boundpolybernstein--f919a54eda67552dbffabe23",
  "source": {
    "blob": "0f24d0e3165301f536c019c4032127a6854d8a77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 812,
    "line": 729,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f919a54eda67552dbffabe23efbf20082fe1ba066298e2a4da95d6d618617c29",
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

Occurrence: `result:08e3c647-0106-b1ef-804d-ebb377bb37c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 729–812.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poly_eval_mem_boundPolyBernstein (p : Polynomial ℚ) (domain : IntervalRat) (c : ℚ)
    (x : ℝ) (hx : x ∈ domain) :
    Polynomial.aeval (x - c) p ∈ boundPolyBernstein p domain c := by
  simp only [IntervalRat.mem_def] at hx
  -- Unfold boundPolyBernstein and handle the match
  unfold boundPolyBernstein
  set coeffs := bernsteinCoeffsForDomain p domain.lo domain.hi c with hcoeffs_def
  -- coeffs is nonempty
  have hne := bernsteinCoeffsForDomain_ne_nil p domain.lo domain.hi c
  obtain ⟨c0, cs, hcoeffs_eq⟩ : ∃ c0 cs, coeffs = c0 :: cs := by
    match h : coeffs with
    | [] => exact absurd h hne
    | c0 :: cs => exact ⟨c0, cs, rfl⟩
  simp only [hcoeffs_eq]
  simp only [IntervalRat.mem_def]
  -- Need: (listMinMax (c0::cs) c0).1 ≤ aeval (x-c) p ∧ aeval (x-c) p ≤ (listMinMax (c0::cs) c0).2
  -- The key connection: coeffs = monomialToBernstein (transformPolyCoeffs p α β)
  -- and bernstein_enclosure_01 gives us bounds on Σ qⱼ tʲ
  -- transformPolyCoeffs_correct gives us P(x-c) = Σ qⱼ tʲ
  -- So we need to connect these.
  set α := domain.lo - c
  set β := domain.hi - c
  set qs := transformPolyCoeffs p α β
  -- coeffs = monomialToBernstein qs
  have hcoeffs_mb : coeffs = monomialToBernstein qs := by
    simp only [hcoeffs_def, bernsteinCoeffsForDomain]; rfl
  have hqs_len : qs.length = p.natDegree + 1 := transformPolyCoeffs_length p α β
  -- Choose t ∈ [0,1] such that x - c = α + t*(β - α) = (lo-c) + t*(hi-lo)
  -- If hi = lo, then x = lo = hi, so x - c = lo - c, and t can be anything (use 0)
  -- If hi > lo, t = (x - lo) / (hi - lo)
  by_cases hdom : domain.lo = domain.hi
  · -- Degenerate case: lo = hi, so x = lo, x - c = lo - c = α
    have hxeq : x = ↑domain.lo := by
      have h1 := hx.1; have h2 := hx.2
      have : (domain.lo : ℝ) = (domain.hi : ℝ) := by exact_mod_cast hdom
      linarith
    -- Use t = 0: P(α) = Σ qⱼ 0^j, and α = x - c
    -- Bernstein enclosure bounds the sum, so bounds hold.
    have htrans := transformPolyCoeffs_correct p α β 0
    have halpha : (α : ℝ) = x - (c : ℝ) := by
      simp only [α, hxeq]; push_cast; rfl
    have henc := bernstein_enclosure_01 qs p.natDegree hqs_len 0 le_rfl zero_le_one
    rw [hcoeffs_mb] at hcoeffs_eq
    simp only [hcoeffs_eq, List.getElem_cons_zero] at henc
    simp only [zero_mul, add_zero] at htrans
    rw [halpha] at htrans
    rw [htrans]
    rw [show (transformPolyCoeffs p α β).length = p.natDegree + 1 from
      transformPolyCoeffs_length p α β]
    exact henc
  · -- Non-degenerate: hi > lo (since lo ≤ hi and lo ≠ hi)
    have hlt : domain.lo < domain.hi := lt_of_le_of_ne domain.le (fun h => hdom h)
    set t := (x - ↑domain.lo) / (↑domain.hi - ↑domain.lo)
    have ht0 : (0 : ℝ) ≤ t := by
      apply div_nonneg; linarith [hx.1]; linarith [show (domain.lo : ℝ) < domain.hi from by exact_mod_cast hlt]
    have ht1 : t ≤ 1 := by
      apply div_le_one_of_le₀; linarith [hx.2]
      linarith [show (domain.lo : ℝ) < domain.hi from by exact_mod_cast hlt]
    -- x - c = α + t * (β - α)
    have hxt : (x : ℝ) - (c : ℝ) = (α : ℝ) + t * ((β : ℝ) - (α : ℝ)) := by
      simp only [α, β, t]
      push_cast
      have hne : (domain.hi : ℝ) - domain.lo ≠ 0 := by
        linarith [show (domain.lo : ℝ) < domain.hi from by exact_mod_cast hlt]
      field_simp
      ring
    -- Apply transformPolyCoeffs_correct
    have htrans := transformPolyCoeffs_correct p α β t
    rw [← hxt] at htrans
    -- Apply bernstein_enclosure_01
    have henc := bernstein_enclosure_01 qs p.natDegree hqs_len t ht0 ht1
    -- henc gives bounds on the sum in terms of listMinMax of monomialToBernstein qs
    -- which is listMinMax of coeffs (by hcoeffs_mb)
    -- We need to connect listMinMax of (monomialToBernstein qs) to listMinMax of (c0 :: cs)
    rw [htrans]
    rw [hcoeffs_mb] at hcoeffs_eq
    -- hcoeffs_eq : monomialToBernstein qs = c0 :: cs
    simp only [hcoeffs_eq, List.getElem_cons_zero] at henc
    have hqs_eq : qs = transformPolyCoeffs p α β := rfl
    simp only [← hqs_eq, hqs_len]
    exact_mod_cast henc

/-- Bound the tail of polynomial p (terms with degree > d) when evaluated at (x-c)
    for x ∈ domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantfdb2b21d5ea869156d55fb6e5694075bf2e4a969131747449ad1713f43c7916d.lean#L729).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f24d0e3165301f536c019c4032127a6854d8a77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
