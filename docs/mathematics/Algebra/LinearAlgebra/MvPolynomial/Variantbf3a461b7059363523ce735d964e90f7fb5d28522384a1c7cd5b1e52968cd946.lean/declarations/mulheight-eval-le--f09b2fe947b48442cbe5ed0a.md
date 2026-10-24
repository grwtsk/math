# mulHeight_eval_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49c19c36-a772-62ba-c0b2-fc21edd4315b",
  "kind": "theorem",
  "lexical_name": "mulHeight_eval_le",
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
  "slug": "mulheight-eval-le--f09b2fe947b48442cbe5ed0a",
  "source": {
    "blob": "4d24c1b75d0849b4cdb36995eee15e639acd6bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 306,
    "path": "GRWTSK/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f09b2fe947b48442cbe5ed0a1c853bffbfc4de966b741ef06d4c528f2888bd62",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49c19c36-a772-62ba-c0b2-fc21edd4315b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulHeight_eval_le {N : ℕ} {p : ι' → MvPolynomial ι K} (hp : ∀ i, (p i).IsHomogeneous N)
    (x : ι → K) :
    mulHeight (fun j ↦ (p j).eval x) ≤ max (mulHeightBound p) 1 * mulHeight x ^ N := by
  rcases eq_or_ne x 0 with rfl | hx
  · rcases eq_or_ne (fun j ↦ constantCoeff (p j)) 0 with h | h
    · simp [h]
    · simpa using le_max_of_le_left <| mulHeight_constantCoeff_le_mulHeightBound h
  rcases eq_or_ne (fun j ↦ eval x (p j)) 0 with h₀ | h₀
  · grw [← le_max_right]
    simpa [h₀, mulHeight_zero] using one_le_pow₀ <| one_le_mulHeight x
  have H₀ (v : AbsoluteValue K ℝ) : 0 ≤ ⨆ j, (AddMonoidAlgebra.coeff <| p j).sum fun _ c ↦ v c :=
    iSup_nonneg (fun j ↦ sum_nonneg' <| fun s ↦ by positivity)
  -- The following four statements are used in the `gcongr`s below.
  have H₁ :
     0 ≤ (archAbsVal.map (fun v ↦ ⨆ j, (AddMonoidAlgebra.coeff <| p j).sum fun _ c ↦ v c)).prod :=
    prod_map_nonneg fun v _ ↦ H₀ v
  have H₂ : 0 ≤ (archAbsVal.map (fun v ↦ ⨆ i, v (x i))).prod :=
    prod_map_nonneg fun _ _ ↦ Real.iSup_nonneg_of_nonnegHomClass ..
  have H₃ : 0 ≤ ∏ᶠ v : nonarchAbsVal, ⨆ i, v.val ((eval x) (p i)) :=
    finprod_nonneg fun _ ↦ Real.iSup_nonneg_of_nonnegHomClass ..
  have H₄ : 0 ≤ ∏ᶠ v : nonarchAbsVal, ⨆ i, v.val (x i) :=
    finprod_nonneg fun _ ↦ Real.iSup_nonneg_of_nonnegHomClass ..
  -- The following two statements are helpful for discharging the goals left by `gcongr`.
  have HH₁ (v : AbsoluteValue K ℝ) : 0 ≤ (⨆ i, v (x i)) ^ N :=
    pow_nonneg (Real.iSup_nonneg_of_nonnegHomClass v _) N
  have HH₂ (f : ι' → ℝ) (j : ι') : f j ≤ ⨆ j, f j := Finite.le_ciSup ..
  simp only [mulHeight_eq hx, mulHeight_eq h₀, mulHeightBound_eq]
  grw [← le_max_left]
  rw [mul_pow, mul_mul_mul_comm]
  gcongr
  · -- archimedean part: reduce to "local" statement `eval_mvPolynomial_le`
    rw [← prod_map_pow, ← prod_map_mul]
    refine prod_map_le_prod_map₀ _ _ (fun _ _ ↦ Real.iSup_nonneg_of_nonnegHomClass ..)
      fun v _ ↦ Real.iSup_le (fun j ↦ ?_) <| mul_nonneg (H₀ v) (HH₁ v)
    grw [v.eval_mvPolynomial_le (hp j) x]
    gcongr
    · exact HH₁ v
    · exact HH₂ (fun j ↦ (AddMonoidAlgebra.coeff <| p j).sum fun _ c ↦ v c) j
  · -- nonarchimedean part: reduce to "local" statement `eval_mvPolynomial_le`
    have := (Function.ne_iff.mp h₀).nonempty
    have F := hasFiniteMulSupport_iSup_nonarchAbsVal hx
    rw [finprod_pow F, ← finprod_mul_distrib (by fun_prop) (by fun_prop)]
    refine finprod_le_finprod₀ (by fun_prop)
      (fun _ ↦ Real.iSup_nonneg_of_nonnegHomClass ..) (by fun_prop) fun v ↦ Real.iSup_le
      (fun j ↦ ?_) ?_
    · grw [(isNonarchimedean _ v.prop).eval_mvPolynomial_le (hp j) x]
      gcongr
      · exact HH₁ v.val
      · grw [← HH₂, ← le_max_left]
    · exact mul_nonneg (iSup_nonneg fun _ ↦ by positivity) <| by simp only [HH₁]

/-- Let `K` be a field with an admissible family of absolute values (giving rise
to a multiplicative height).
Let `p` be a family (indexed by `ι'`) of homogeneous polynomials in variables indexed by
the finite type `ι` and of the same degree `N`. Then for any `x : ι →  K`,
the multiplicative height of `fun j : ι' ↦ eval x (p j)` is bounded by a positive constant
times `mulHeight x ^ N`.

The difference to `mulHeight_eval_le` is that the constant is not made explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MvPolynomial/Variantbf3a461b7059363523ce735d964e90f7fb5d28522384a1c7cd5b1e52968cd946.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d24c1b75d0849b4cdb36995eee15e639acd6bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
