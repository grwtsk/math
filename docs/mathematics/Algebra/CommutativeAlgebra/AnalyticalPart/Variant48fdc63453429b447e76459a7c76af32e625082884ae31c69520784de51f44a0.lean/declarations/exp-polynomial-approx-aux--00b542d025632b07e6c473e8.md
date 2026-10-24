# exp_polynomial_approx_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65f7e8a3bed03c25336391c82b82f1376a4b8c37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71102a1a-30bf-f5db-51e0-126fec900f68",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16a45294-28a2-0726-41f3-764eae10ec05",
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
  "slug": "exp-polynomial-approx-aux--00b542d025632b07e6c473e8",
  "source": {
    "blob": "65f7e8a3bed03c25336391c82b82f1376a4b8c37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 128,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00b542d025632b07e6c473e8b9671868adec5aac22fdc49303452d4e865ca128",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16a45294-28a2-0726-41f3-764eae10ec05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–168.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variant48fdc63453429b447e76459a7c76af32e625082884ae31c69520784de51f44a0.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65f7e8a3bed03c25336391c82b82f1376a4b8c37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
