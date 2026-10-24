# CuspFormClass.exists_sum_range_norm_sq_qExpansion_coeff_le_of_mem_strictPeriods

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1b14a8e-4b11-9548-8e1f-9dd151ba2f7c",
  "kind": "lemma",
  "lexical_name": "CuspFormClass.exists_sum_range_norm_sq_qExpansion_coeff_le_of_mem_strictPeriods",
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
  "slug": "cuspformclass-exists-sum-range-norm-sq-qexpansion-coeff-le-of-mem-strict--f8587282ac4ce60ced3a3ad0",
  "source": {
    "blob": "7798e860b352902c4209973f3f9536aa8d123544",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 360,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Varianteac9c314a32f28fbee86dcad4449d12b04e436d19cbae193ca3ebb3e9c7555b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8587282ac4ce60ced3a3ad078cc7d8e1af465540436342588c3abd83be1ca3d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Bounds/Varianteac9c314a32f28fbee86dcad4449d12b04e436d19cbae193ca3ebb3e9c7555b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1b14a8e-4b11-9548-8e1f-9dd151ba2f7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CuspFormClass.exists_sum_range_norm_sq_qExpansion_coeff_le_of_mem_strictPeriods
    {k : ℕ} {Γ : Subgroup (GL (Fin 2) ℝ)} [Γ.IsArithmetic]
    {F : Type*} [FunLike F ℍ ℂ] [CuspFormClass F Γ (k : ℤ)] (f : F)
    {h : ℝ} (hh : 0 < h) (hΓ : h ∈ Γ.strictPeriods) :
    ∃ C, ∀ M, ∑ n ∈ .range M, ‖(qExpansion h f).coeff n‖ ^ 2 ≤ C * M ^ k := by
  -- Squaring Hecke's bound gives a uniform bound for `‖f τ‖² * (im τ) ^ k`.
  obtain ⟨B, hB⟩ := CuspFormClass.exists_bound f
  have hC (τ : ℍ) : ‖f τ‖ ^ 2 * τ.im ^ k ≤ B ^ 2 := by
    simpa [field, ← Real.rpow_mul_natCast τ.im_pos.le]
      using pow_le_pow_left₀ (norm_nonneg _) (hB τ) 2
  refine ⟨Real.exp (4 * π / h) * B ^ 2, fun M ↦ ?_⟩
  -- The empty partial sum is immediate, so assume from now on that `M` is positive.
  rcases M.eq_zero_or_pos with rfl | hM
  · positivity
  -- On the horizontal line of height `1 / M`, Hecke's bound is at most `B² * M ^ k`.
  have hy : (0 : ℝ) < 1 / M := by positivity
  have key (τ : ℍ) (hτ : τ.im = 1 / M) : ‖f τ‖ ^ 2 ≤ B ^ 2 * M ^ k :=
    (div_le_iff₀ (by positivity)).mp (by simpa only [hτ, one_div_pow, mul_one_div] using hC τ)
  -- Integrating this over a period gives a bound for the integral of `‖f‖ ^ 2`
  have hint₀ : ∫ x in 0..h, ‖f ⟨x + (1 / M : ℝ) * UpperHalfPlane.I, by simpa using hy⟩‖ ^ 2 ≤
      ∫ x in 0..h, B ^ 2 * M ^ k :=
    intervalIntegral.integral_mono_on hh.le (Continuous.intervalIntegrable (by fun_prop) 0 h)
      intervalIntegrable_const fun x _ ↦ key _ (by simp)
  -- The result follows by combining this bound with the Bessel estimate for the norm square of the
  -- `q`-expansion coefficients in terms of the integral
  grw [sum_range_norm_sq_qExpansion_coeff_le hh
    (SlashInvariantFormClass.periodic_comp_ofComplex f hΓ) (ModularFormClass.holo f)
    (ModularFormClass.bdd_at_infty f) hy M, hint₀]
  simp [field, hM.ne']

/-- **Mean-square bound** for q-expansion coefficients of a cusp form: the sum of the squared
norms of the first `M` coefficients is bounded by a constant multiple of `M ^ k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Bounds/Varianteac9c314a32f28fbee86dcad4449d12b04e436d19cbae193ca3ebb3e9c7555b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Varianteac9c314a32f28fbee86dcad4449d12b04e436d19cbae193ca3ebb3e9c7555b9.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7798e860b352902c4209973f3f9536aa8d123544` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
