# summable_jacobiTheta₂_term_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d27b315-2ca8-2688-6a19-2b2f52ebc5dd",
  "kind": "lemma",
  "lexical_name": "summable_jacobiTheta₂_term_iff",
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
  "slug": "summable-jacobitheta-term-iff--406ee709cf7536601a04cf5f",
  "source": {
    "blob": "fff7edb82ee71ebadce8dce2f842269bc7169126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 127,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:406ee709cf7536601a04cf5ff40ea12cf5c8670a5056c27f88548cfbc7bc388b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d27b315-2ca8-2688-6a19-2b2f52ebc5dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_jacobiTheta₂_term_iff (z τ : ℂ) : Summable (jacobiTheta₂_term · z τ) ↔ 0 < im τ := by
  -- NB. This is a statement of no great mathematical interest; it is included largely to avoid
  -- having to impose `0 < im τ` as a hypothesis on many later lemmas.
  refine Iff.symm ⟨fun hτ ↦ ?_, fun h ↦ ?_⟩ -- do quicker implication first!
  · refine (summable_pow_mul_jacobiTheta₂_term_bound |im z| hτ 0).of_norm_bounded _ ?_
    simpa only [pow_zero, one_mul] using norm_jacobiTheta₂_term_le hτ le_rfl le_rfl
  · by_contra! hτ
    rcases lt_or_eq_of_le hτ with hτ | hτ
    · -- easy case `im τ < 0`
      suffices Tendsto (fun n : ℕ ↦ ‖jacobiTheta₂_term ↑n z τ‖) atTop atTop by
        replace h := (h.comp_injective (fun a b ↦ Int.ofNat_inj.mp)).tendsto_atTop_zero.norm
        exact atTop_neBot.ne (disjoint_self.mp <| h.disjoint (disjoint_nhds_atTop _) this)
      simp only [norm_zero, Function.comp_def, norm_jacobiTheta₂_term, Int.cast_natCast]
      conv =>
        enter [1, n]
        rw [show -π * n ^ 2 * τ.im - 2 * π * n * z.im =
              n * (n * (-π * τ.im) - 2 * π * z.im) by ring]
      refine tendsto_exp_atTop.comp (tendsto_natCast_atTop_atTop.atTop_mul_atTop₀ ?_)
      exact tendsto_atTop_add_const_right _ _ (tendsto_natCast_atTop_atTop.atTop_mul_const
        (mul_pos_of_neg_of_neg (neg_lt_zero.mpr pi_pos) hτ))
    · -- case im τ = 0: 3-way split according to `im z`
      simp_rw [← summable_norm_iff (E := ℂ), norm_jacobiTheta₂_term, hτ, mul_zero, zero_sub] at h
      rcases lt_trichotomy (im z) 0 with hz | hz | hz
      · replace h := (h.comp_injective (fun a b ↦ Int.ofNat_inj.mp)).tendsto_atTop_zero
        simp_rw [Function.comp_def, Int.cast_natCast] at h
        refine atTop_neBot.ne (disjoint_self.mp <| h.disjoint (disjoint_nhds_atTop 0) ?_)
        refine tendsto_exp_atTop.comp ?_
        simp only [tendsto_neg_atTop_iff, mul_assoc]
        apply Filter.Tendsto.const_mul_atBot two_pos
        exact (tendsto_natCast_atTop_atTop.atTop_mul_const_of_neg hz).const_mul_atBot pi_pos
      · revert h
        simpa only [hz, mul_zero, neg_zero, Real.exp_zero, summable_const_iff] using one_ne_zero
      · have : ((-↑·) : ℕ → ℤ).Injective := fun _ _ ↦ by simp only [neg_inj, Nat.cast_inj, imp_self]
        replace h := (h.comp_injective this).tendsto_atTop_zero
        simp_rw [Function.comp_def, Int.cast_neg, Int.cast_natCast, mul_neg, neg_mul, neg_neg] at h
        refine atTop_neBot.ne (disjoint_self.mp <| h.disjoint (disjoint_nhds_atTop 0) ?_)
        exact tendsto_exp_atTop.comp ((tendsto_natCast_atTop_atTop.const_mul_atTop
          (mul_pos two_pos pi_pos)).atTop_mul_const hz)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fff7edb82ee71ebadce8dce2f842269bc7169126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
