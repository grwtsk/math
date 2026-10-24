# taylor_integral_remainder_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "088700ed9f2d0b74a86d1238b938bb0070c7f297",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 456,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3e5f415-eaa4-9286-8666-f8dbdc31eb02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3450ccb3-05de-b0c7-78b8-7434ab1e7aca",
  "kind": "theorem",
  "lexical_name": "taylor_integral_remainder_aux",
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
  "slug": "taylor-integral-remainder-aux--6ae69fae7817b1bfc482fa0c",
  "source": {
    "blob": "088700ed9f2d0b74a86d1238b938bb0070c7f297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 456,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ae69fae7817b1bfc482fa0cbf822ad928a3007dd23185066bc86e48c42af3b8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3450ccb3-05de-b0c7-78b8-7434ab1e7aca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem taylor_integral_remainder_aux [NormedAddCommGroup F] [NormedSpace ℝ F]
    {f : ℝ → F} {x x₀ : ℝ} {n : ℕ}
    (hf : ∀ k ≤ n, let u := fun t ↦ (x - t) ^ k / k !;
      let v := fun t ↦ iteratedDerivWithin k f [[x₀, x]] t;
      ∫ (t : ℝ) in x₀..x, u t • deriv v t = u x • v x - u x₀ • v x₀ -
      ∫ (t : ℝ) in x₀..x, deriv u t • v t) :
    f x - taylorWithinEval f n (uIcc x₀ x) x₀ x =
      ∫ t in x₀..x, ((x - t) ^ n / n !) • iteratedDerivWithin (n + 1) f (uIcc x₀ x) t := by
  rcases eq_or_ne x₀ x with rfl | this
  · simp
  induction n with
  | zero =>
    simp only [taylor_within_zero_eval, pow_zero, Nat.factorial_zero, Nat.cast_one, ne_eq,
      one_ne_zero, not_false_eq_true, div_self, zero_add, iteratedDerivWithin_one, one_smul]
    simp only [nonpos_iff_eq_zero, sub_self, deriv_div_const, forall_eq, pow_zero,
      Nat.factorial_zero, Nat.cast_one, ne_eq, one_ne_zero, not_false_eq_true, div_self,
      iteratedDerivWithin_zero, one_smul, deriv_const', div_one, zero_smul,
      intervalIntegral.integral_zero, sub_zero] at hf
    rw [← hf]
    refine intervalIntegral.integral_congr_uIoo fun _ ⟨h1, h2⟩ => ?_
    rw [← derivWithin_of_mem_nhds <| Icc_mem_nhds h1 h2]
    rfl
  | succ n ih =>
    specialize ih (by grind)
    simp only [taylorWithinEval_succ, mul_inv_rev]
    rw [sub_add_eq_sub_sub, ih]
    simp only [Nat.factorial, Nat.succ_eq_add_one, Nat.cast_mul, Nat.cast_add, Nat.cast_one]
    have := hf (n + 1) (by rfl)
    convert! this.symm using 1
    · simp only [sub_self, ne_eq, Nat.add_eq_zero_iff, one_ne_zero, and_false, not_false_eq_true,
        zero_pow, zero_div, zero_smul, zero_sub, deriv_div_const, Nat.factorial]
      apply fun (a b c d : F) (_ : b = c) (_ : a = -d) ↦ show a - b = -c - d by grind
      · grind
      · rw [← intervalIntegral.integral_neg]
        congr
        ext t
        rw [deriv_fun_pow (by fun_prop), deriv_const_sub, deriv_id'', ← neg_smul]
        congr
        field_simp
        grind
    · refine intervalIntegral.integral_congr_uIoo fun _ ⟨h1, h2⟩ => ?_
      rw [iteratedDerivWithin_succ]
      congr
      · rw [Nat.factorial, Nat.cast_mul, Nat.succ_eq_add_one, Nat.cast_add, Nat.cast_one]
      · rw [← derivWithin_of_mem_nhds <| Icc_mem_nhds h1 h2]
        rfl

/-- **Taylor's theorem** with the Integral form of the remainder.

We assume that `f` is `n`-times continuously differentiable on the closed set `uIcc x₀ x` and
its `n`-th derivative is absolutely continuous on `uIcc x₀ x`. Then
$$f(x) - (P_n f)(x₀, x) = \int_{x_0}^x \frac{f^{(n+1)}(t) (x - t)^n}{n!} dt,$$
where $P_n f$ denotes the Taylor polynomial of degree $n$ and $f^{(n+1)}$ is the $n+1$-th iterated
derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `088700ed9f2d0b74a86d1238b938bb0070c7f297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
