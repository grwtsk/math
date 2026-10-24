# norm_le_interp_of_mem_verticalClosedStrip₀₁'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bbfa253-feb4-00f2-1c15-69b5b218894b",
  "kind": "lemma",
  "lexical_name": "norm_le_interp_of_mem_verticalClosedStrip₀₁'",
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
  "slug": "norm-le-interp-of-mem-verticalclosedstrip--408d693f625a73948a82e22b",
  "source": {
    "blob": "66f8e734f866c4ad7b9ec241fb86967a95d293e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 488,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:408d693f625a73948a82e22b49a53f02963eb778e7f8719dc9b53cb5ab923f06",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bbfa253-feb4-00f2-1c15-69b5b218894b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_le_interp_of_mem_verticalClosedStrip₀₁' (f : ℂ → E) {z : ℂ} {a b : ℝ}
    (hz : z ∈ verticalClosedStrip 0 1) (hd : DiffContOnCl ℂ f (verticalStrip 0 1))
    (hB : BddAbove ((norm ∘ f) '' verticalClosedStrip 0 1))
    (ha : ∀ z ∈ re ⁻¹' {0}, ‖f z‖ ≤ a) (hb : ∀ z ∈ re ⁻¹' {1}, ‖f z‖ ≤ b) :
    ‖f z‖ ≤ a ^ (1 - z.re) * b ^ z.re := by
  have : ‖interpStrip f z‖ ≤ sSupNormIm f 0 ^ (1 - z.re) * sSupNormIm f 1 ^ z.re := by
    by_cases! h : sSupNormIm f 0 = 0 ∨ sSupNormIm f 1 = 0
    · rw [interpStrip_eq_of_zero f z h, norm_zero, mul_nonneg_iff]
      left
      exact ⟨Real.rpow_nonneg (sSupNormIm_nonneg f _) _,
        Real.rpow_nonneg (sSupNormIm_nonneg f _) _ ⟩
    · rcases h with ⟨h0, h1⟩
      rw [ne_comm] at h0 h1
      simp_rw [interpStrip_eq_of_pos f _ (lt_of_le_of_ne (sSupNormIm_nonneg f 0) h0)
        (lt_of_le_of_ne (sSupNormIm_nonneg f 1) h1)]
      simp only [norm_mul]
      rw [norm_cpow_eq_rpow_re_of_pos ((Ne.le_iff_lt h0).mp (sSupNormIm_nonneg f _)) _]
      rw [norm_cpow_eq_rpow_re_of_pos ((Ne.le_iff_lt h1).mp (sSupNormIm_nonneg f _)) _]
      simp only [sub_re, one_re, le_refl]
  apply (norm_le_interpStrip_of_mem_verticalClosedStrip₀₁ f hz hd hB).trans (this.trans _)
  apply mul_le_mul_of_nonneg _ _ (Real.rpow_nonneg (sSupNormIm_nonneg f _) _)
  · apply (Real.rpow_nonneg _ _)
    specialize hb 1
    simp only [mem_preimage, one_re, mem_singleton_iff, forall_true_left] at hb
    exact (norm_nonneg _).trans hb
  · gcongr
    · exact sSupNormIm_nonneg f _
    · exact sub_nonneg.mpr hz.2
    rw [sSupNormIm]
    apply csSup_le _
    · simpa [comp_apply, mem_image, forall_exists_index,
        and_imp, forall_apply_eq_imp_iff₂] using ha
    · use ‖(f 0)‖, 0
      simp
  · apply Real.rpow_le_rpow (sSupNormIm_nonneg f _) _ hz.1
    · rw [sSupNormIm]
      apply csSup_le _
      · simpa [comp_apply, mem_image, forall_exists_index,
          and_imp, forall_apply_eq_imp_iff₂] using hb
      · use ‖(f 1)‖, 1
        simp only [mem_preimage, one_re, mem_singleton_iff, comp_apply,
          and_self]

/-- The transformation on ℂ that is used for `scale` maps the strip ``re ⁻¹' (l, u)``
  to the strip ``re ⁻¹' (0, 1)``. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66f8e734f866c4ad7b9ec241fb86967a95d293e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
