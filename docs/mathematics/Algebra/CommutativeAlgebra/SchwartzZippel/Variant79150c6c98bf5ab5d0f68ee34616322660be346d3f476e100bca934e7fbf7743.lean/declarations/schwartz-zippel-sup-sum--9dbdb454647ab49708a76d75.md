# schwartz_zippel_sup_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fcf41b3-2805-0d71-303f-62bb9e2940cb",
  "kind": "lemma",
  "lexical_name": "schwartz_zippel_sup_sum",
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
  "slug": "schwartz-zippel-sup-sum--9dbdb454647ab49708a76d75",
  "source": {
    "blob": "c6d634d632f7355e2dc19d53e685c78940e5fc89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 76,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SchwartzZippel/Variant79150c6c98bf5ab5d0f68ee34616322660be346d3f476e100bca934e7fbf7743.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dbdb454647ab49708a76d754b0c5c696d315c31fa639e075faf874495f86799",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SchwartzZippel/Variant79150c6c98bf5ab5d0f68ee34616322660be346d3f476e100bca934e7fbf7743.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fcf41b3-2805-0d71-303f-62bb9e2940cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma schwartz_zippel_sup_sum :
    ∀ {n} {p : MvPolynomial (Fin n) R} (hp : p ≠ 0) (S : Fin n → Finset R),
      #{x ∈ S ^^ n | eval x p = 0} / ∏ i, (#(S i) : ℚ≥0) ≤
        p.support.sup fun s ↦ ∑ i, (s i / #(S i) : ℚ≥0)
  | 0, p, hp, S => by
    -- Because `p` is a polynomial over zero variables, it is constant.
    rw [p.eq_C_of_isEmpty] at *
    simp [C_ne_zero.mp hp]
    -- Now, assume that the theorem holds for all polynomials in `n` variables.
  | n + 1, p, hp, S => by
    -- We can consider `p` to be a polynomial over multivariable polynomials in one fewer variables.
    set p' : Polynomial (MvPolynomial (Fin n) R) := finSuccEquiv R n p with hp'
    -- Since `p` is not identically zero, there is some `k` such that `pₖ` is not identically zero.
    -- WLOG `k` is the largest such.
    set k := p'.natDegree with hk
    set pₖ := p'.leadingCoeff with hpₖ
    have hp'₀ : p' ≠ 0 := EmbeddingLike.map_ne_zero_iff.2 hp
    have hpₖ₀ : pₖ ≠ 0 := by simpa [pₖ, k]
    calc
      -- We split the set of possible zeros into a union of two cases.
      #{x ∈ S ^^ (n + 1) | eval x p = 0} / ∏ i, (#(S i) : ℚ≥0)
          -- In the first case, `pₖ` evaluates to `0`.
        = #{x ∈ S ^^ (n + 1) | eval x p = 0 ∧ eval (tail x) pₖ = 0} / ∏ i, (#(S i) : ℚ≥0)
          -- In the second case, `pₖ` does not evaluate to `0`.
          + #{x ∈ S ^^ (n + 1) | eval x p = 0 ∧ eval (tail x) pₖ ≠ 0} / ∏ i, (#(S i) : ℚ≥0) := by
        rw [← add_div, ← Nat.cast_add, ← card_union_add_card_inter, filter_union_right,
          ← filter_and]
        simp [← and_or_left, em, and_and_and_comm]
      _ ≤ (pₖ.support.sup fun s ↦ ∑ i, (s i / #(S i.succ) : ℚ≥0)) + p.degreeOf 0 / #(S 0) := ?_
      _ ≤ p.support.sup fun s ↦ ∑ i, (s i / #(S i) : ℚ≥0) := ?_
    · gcongr ?_ + ?_
      · -- We bound the size of the first set by induction
        calc
          #{x ∈ S ^^ (n + 1) | eval x p = 0 ∧ eval (tail x) pₖ = 0} / ∏ i, (#(S i) : ℚ≥0)
            ≤ #{x ∈ S ^^ (n + 1) | eval (tail x) pₖ = 0} / ∏ i, (#(S i) : ℚ≥0) := by
            gcongr; exact fun x hx ↦ hx.2
          _ = #(S 0) * #{xₜ ∈ tail S ^^ n | eval xₜ pₖ = 0}
              / (#(S 0) * (∏ i, #(S (.succ i)) : ℚ≥0)) := by
            rw [card_consEquiv_filter_piFinset S fun x ↦ eval x pₖ = 0, prod_univ_succ, tail_def]
            norm_cast
          _ ≤ #{xₜ ∈ tail S ^^ n | eval xₜ pₖ = 0} / ∏ i, (#(S (.succ i)) : ℚ≥0) :=
            mul_div_mul_left_le (by positivity)
          _ ≤ (pₖ.support.sup fun s ↦ ∑ i, (s i / #(S (.succ i)) : ℚ≥0)) :=
            schwartz_zippel_sup_sum hpₖ₀ _
      · -- We bound the second set by noting that if `x` is in it, then `x₀` is the root of
        -- the univariate polynomial`pₓ` obtained by evaluating each (multivariate polynomial)
        -- coefficient at `xₜ`. Since `pₓ` has degree `k`, there are at most `k` such `x₀` for
        -- each `xₜ`, which gives the result.
        calc
          #{x ∈ S ^^ (n + 1) | eval x p = 0 ∧ eval (tail x) pₖ ≠ 0} / ∏ i, (#(S i) : ℚ≥0)
            ≤ ↑(p.degreeOf 0 * ∏ i, #(S (.succ i))) / ∏ i, (#(S i) : ℚ≥0) := ?_
          _ = p.degreeOf 0 * (∏ i, #(S (.succ i))) / (#(S 0) * ∏ i, #(S (.succ i))) := by
            norm_cast; rw [prod_univ_succ]
          _ ≤ (p.degreeOf 0 / #(S 0) : ℚ≥0) := mul_div_mul_right_le (by positivity)
        gcongr
        calc
          #{x ∈ S ^^ (n + 1) | eval x p = 0 ∧ eval (tail x) pₖ ≠ 0}
            = #{x ∈ S ^^ (n + 1) | eval (tail x) pₖ ≠ 0 ∧ eval x p = 0} := by simp_rw [and_comm]
          _ = #({xₜ ∈ tail S ^^ n | eval xₜ pₖ ≠ 0}.biUnion fun xₜ ↦ image (fun x₀ ↦ (x₀, xₜ))
                {x₀ ∈ S 0 | eval (cons x₀ xₜ) p = 0}) := by
            rw [← filter_filter, filter_piFinset_eq_map_consEquiv S (fun r ↦ eval r pₖ ≠ 0),
              filter_map, card_map, product_eq_biUnion_right, filter_biUnion]
            simp [Function.comp_def, filter_image, filter_filter]
            rfl
          _ ≤ ∑ xₜ ∈ tail S ^^ n with eval xₜ pₖ ≠ 0,
                #(image (fun x₀ ↦ (x₀, xₜ)) {x₀ ∈ S 0 | eval (cons x₀ xₜ) p = 0}) :=
            card_biUnion_le
          _ ≤ ∑ xₜ ∈ tail S ^^ n with eval xₜ pₖ ≠ 0, #{x₀ ∈ S 0 | eval (cons x₀ xₜ) p = 0} := by
            gcongr; exact card_image_le
          _ ≤ ∑ xₜ ∈ tail S ^^ n with eval xₜ pₖ ≠ 0, p.degreeOf 0 := ?_
          _ ≤ ∑ _xₜ ∈ tail S ^^ n, p.degreeOf 0 := by gcongr; exact filter_subset ..
          _ = p.degreeOf 0 * ∏ i, #(S (.succ i)) := by simp [mul_comm, tail]
        gcongr with xₜ hxₜ
        set pₓ := p'.map (eval xₜ) with hpₓ
        have hpₓdeg : pₓ.natDegree = k := by
          rw [hpₓ, hk, Polynomial.natDegree_map_of_leadingCoeff_ne_zero _ (mem_filter.1 hxₜ).2]
        have hpₓ₀ : pₓ ≠ 0 := fun h ↦ (mem_filter.1 hxₜ).2 <| by
          rw [hpₖ, Polynomial.leadingCoeff, ← hk, ← hpₓdeg, h, Polynomial.natDegree_zero,
            ← Polynomial.coeff_map, ← hpₓ, h, Polynomial.coeff_zero]
        calc
          #{x₀ ∈ S 0 | eval (cons x₀ xₜ) p = 0} ≤ #pₓ.roots.toFinset := by
            gcongr
            simp +contextual [subset_iff, eval_eq_eval_mv_eval', pₓ, hpₓ₀, p']
          _ ≤ Multiset.card pₓ.roots := pₓ.roots.toFinset_card_le
          _ ≤ pₓ.natDegree := pₓ.card_roots'
          _ = k := hpₓdeg
          _ ≤ p.degreeOf 0 := by
            have :
              (ofLex (AddMonoidAlgebra.supDegree toLex p'.leadingCoeff)).cons k ∈ p.support := by
              rwa [← support_coeff_finSuccEquiv, mem_support_iff, ← hp', hk,
                ← Polynomial.leadingCoeff, ← hpₖ, ← leadingCoeff_toLex,
                AddMonoidAlgebra.leadingCoeff_ne_zero toLex.injective]
            simpa using monomial_le_degreeOf 0 this
    · rw [Finset.sup_add (support_nonempty.mpr hpₖ₀)]
      apply Finset.sup_le
      rintro i hi
      refine le_sup_of_le (mem_support_coeff_finSuccEquiv.mp hi) ?_
      rw [Fin.sum_univ_succ, add_comm]
      dsimp
      gcongr
      simp [k, natDegree_finSuccEquiv, p']

/-- The **Schwartz-Zippel lemma**

For a nonzero multivariable polynomial `p` over an integral domain, the probability that `p`
evaluates to zero at points drawn at random from a product of finite subsets `S i` of the integral
domain is bounded by the sum of `degᵢ p / #(S i)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SchwartzZippel/Variant79150c6c98bf5ab5d0f68ee34616322660be346d3f476e100bca934e7fbf7743.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SchwartzZippel/Variant79150c6c98bf5ab5d0f68ee34616322660be346d3f476e100bca934e7fbf7743.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6d634d632f7355e2dc19d53e685c78940e5fc89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
