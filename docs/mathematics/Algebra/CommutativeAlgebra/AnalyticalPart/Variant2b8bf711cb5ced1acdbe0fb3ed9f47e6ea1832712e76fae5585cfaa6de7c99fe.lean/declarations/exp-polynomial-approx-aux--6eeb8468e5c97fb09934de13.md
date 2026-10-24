# exp_polynomial_approx_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c8d7c13-113e-6f38-ad64-de237705c15d",
  "kind": "theorem",
  "lexical_name": "exp_polynomial_approx_aux",
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
  "slug": "exp-polynomial-approx-aux--6eeb8468e5c97fb09934de13",
  "source": {
    "blob": "b5b1775d278e6e53000f085e2af5e9802801aa06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 136,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant2b8bf711cb5ced1acdbe0fb3ed9f47e6ea1832712e76fae5585cfaa6de7c99fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eeb8468e5c97fb09934de13ee5c5d0444f6a45ddab5d4e62f14c2f57924f1c7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AnalyticalPart/Variant2b8bf711cb5ced1acdbe0fb3ed9f47e6ea1832712e76fae5585cfaa6de7c99fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c8d7c13-113e-6f38-ad64-de237705c15d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_polynomial_approx_aux (f : ℤ[X]) (s : ℂ) :
    ∃ c ≥ 0, ∀ p ≠ 0, ‖P (map (algebraMap ℤ ℂ) (X ^ (p - 1) * f ^ p)) s‖ ≤ c ^ p := by
  have : Bornology.IsBounded
      ((fun x : ℝ ↦ max (x * ‖s‖) 1 * ‖aeval (x * s) f‖) '' Set.Ioc 0 1) := by
    have h :
      (fun x : ℝ ↦ max (x * ‖s‖) 1 * ‖aeval (x * s) f‖) '' Set.Ioc 0 1 ⊆
        (fun x : ℝ ↦ max (x * ‖s‖) 1 * ‖aeval (x * s) f‖) '' Set.Icc 0 1 :=
      Set.image_mono Set.Ioc_subset_Icc_self
    refine (IsCompact.image isCompact_Icc ?_).isBounded.subset h
    fun_prop
  obtain ⟨c, h⟩ := this.exists_norm_le
  simp_rw [Real.norm_eq_abs] at h
  refine P_le _ s c (fun p x hx => ?_)
  specialize h (max (x * ‖s‖) 1 * ‖aeval (x * s) f‖) (Set.mem_image_of_mem _ hx)
  grw [← h]
  simp_rw [Polynomial.map_mul, Polynomial.map_pow, map_X, eval_mul, eval_pow, eval_X, norm_mul,
    Complex.norm_pow, real_smul, norm_mul, norm_real, eval_map_algebraMap, abs_mul,
    abs_norm, mul_pow, Real.norm_of_nonneg hx.1.le]
  refine mul_le_mul_of_nonneg_right ?_ (pow_nonneg (norm_nonneg _) _)
  rw [← mul_pow, abs_of_nonneg (by positivity), max_def]
  split_ifs with hx1
  · rw [one_pow]
    exact pow_le_one₀ (mul_nonneg hx.1.le (norm_nonneg _)) hx1
  · push Not at hx1
    exact pow_le_pow_right₀ hx1.le (Nat.sub_le _ _)

/--
Given a polynomial `f` with integer coefficients, we can find a constant `c : ℝ` and for each prime
`p > |f₀|`, `nₚ : ℤ` and `gₚ : ℤ[X]` such that

* `p` does not divide `nₚ`
* `deg(gₚ) ≤ p * deg(f) - 1`
  (note: `deg(gₚ) < p * deg(f)` is not true if `f` is a nonzero constant polynomial)
* all complex roots `r` of `f` satisfy `|nₚ * e ^ r - p * gₚ(r)| ≤ c ^ p / (p - 1)!`

In the proof of Lindemann-Weierstrass, we will take `f` to be a polynomial whose complex roots
are the algebraic numbers whose exponentials we want to prove to be linearly independent.

Note: Jacobson (equation (68) / lemma 3, page 285) writes `Nₚ` for our `nₚ` and `M` for our `c`
(modulo a constant factor).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AnalyticalPart/Variant2b8bf711cb5ced1acdbe0fb3ed9f47e6ea1832712e76fae5585cfaa6de7c99fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant2b8bf711cb5ced1acdbe0fb3ed9f47e6ea1832712e76fae5585cfaa6de7c99fe.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5b1775d278e6e53000f085e2af5e9802801aa06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
