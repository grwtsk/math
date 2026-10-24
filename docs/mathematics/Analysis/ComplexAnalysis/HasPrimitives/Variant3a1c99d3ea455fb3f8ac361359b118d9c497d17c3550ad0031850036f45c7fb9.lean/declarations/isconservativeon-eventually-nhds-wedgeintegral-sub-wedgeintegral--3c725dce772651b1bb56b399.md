# IsConservativeOn.eventually_nhds_wedgeIntegral_sub_wedgeIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8547918-8e9d-c79b-7c71-6df463dd1f31",
  "kind": "lemma",
  "lexical_name": "IsConservativeOn.eventually_nhds_wedgeIntegral_sub_wedgeIntegral",
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
  "slug": "isconservativeon-eventually-nhds-wedgeintegral-sub-wedgeintegral--3c725dce772651b1bb56b399",
  "source": {
    "blob": "915083d4986cf499f5095d7598bb19dc9d72e36a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 161,
    "path": "GRWTSK/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c725dce772651b1bb56b399a609fd5068a99cc6a628a660d841c43584c84e8b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8547918-8e9d-c79b-7c71-6df463dd1f31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsConservativeOn.eventually_nhds_wedgeIntegral_sub_wedgeIntegral
    (hf : IsConservativeOn f (ball c r)) :
    ∀ᶠ w in 𝓝 z, wedgeIntegral c w f - wedgeIntegral c z f = wedgeIntegral z w f := by
  refine eventually_nhds_iff_ball.mpr ⟨r - dist z c, by simpa using hz, fun w w_in_z_ball ↦ ?_⟩
  set I₁ :=     ∫ x in c.re..w.re, f (x + c.im * I)
  set I₂ := I • ∫ y in c.im..w.im, f (w.re + y * I)
  set I₃ :=     ∫ x in c.re..z.re, f (x + c.im * I)
  set I₄ := I • ∫ y in c.im..z.im, f (z.re + y * I)
  set I₅ :=     ∫ x in z.re..w.re, f (x + z.im * I)
  set I₆ := I • ∫ y in z.im..w.im, f (w.re + y * I)
  set I₇ :=     ∫ x in z.re..w.re, f (x + c.im * I)
  set I₈ := I • ∫ y in c.im..z.im, f (w.re + y * I)
  have z_ball : ball z (r - dist z c) ⊆ ball c r := ball_subset_ball' (by simp)
  have w_mem : w ∈ ball c r := mem_of_subset_of_mem z_ball w_in_z_ball
  have integrableHoriz (a₁ a₂ b : ℝ) (ha₁ : a₁ + b * I ∈ ball c r) (ha₂ : a₂ + b * I ∈ ball c r) :
      IntervalIntegrable (fun x ↦ f (x + b * I)) volume a₁ a₂ :=
    ((f_cont.mono (mem_ball_of_map_re_aux ha₁ ha₂)).comp (by fun_prop)
      (mapsTo_image _ _)).intervalIntegrable
  have integrableVert (a b₁ b₂ : ℝ) (hb₁ : a + b₁ * I ∈ ball c r) (hb₂ : a + b₂ * I ∈ ball c r) :
      IntervalIntegrable (fun y ↦ f (a + y * I)) volume b₁ b₂ :=
    ((f_cont.mono (mem_ball_of_map_im_aux₁ hb₁ hb₂)).comp (by fun_prop)
      (mapsTo_image _ _)).intervalIntegrable
  have hI₁ : I₁ = I₃ + I₇ := by
    rw [intervalIntegral.integral_add_adjacent_intervals] <;> apply integrableHoriz
    · exact re_add_im_mul_mem_ball <| mem_ball_self (pos_of_mem_ball hz)
    · exact re_add_im_mul_mem_ball hz
    · exact re_add_im_mul_mem_ball hz
    · exact re_add_im_mul_mem_ball w_mem
  have hI₂ : I₂ = I₈ + I₆ := by
    rw [← smul_add, intervalIntegral.integral_add_adjacent_intervals] <;> apply integrableVert
    · exact re_add_im_mul_mem_ball w_mem
    · exact mem_of_subset_of_mem z_ball (re_add_im_mul_mem_ball w_in_z_ball)
    · exact mem_of_subset_of_mem z_ball (re_add_im_mul_mem_ball w_in_z_ball)
    · simpa using w_mem
  have hI₀ : I₇ - I₅ + I₈ - I₄ = 0 := by
    have wzInBall : w.re + z.im * I ∈ ball c r :=
      mem_of_subset_of_mem z_ball (re_add_im_mul_mem_ball w_in_z_ball)
    have wcInBall : w.re + c.im * I ∈ ball c r := re_add_im_mul_mem_ball w_mem
    have hU : Rectangle (z.re + c.im * I) (w.re + z.im * I) ⊆ ball c r :=
      (convex_ball c r).rectangle_subset (re_add_im_mul_mem_ball hz) wzInBall
        (by simpa using hz) (by simpa using wcInBall)
    simpa [← add_eq_zero_iff_eq_neg, wedgeIntegral_add_wedgeIntegral_eq] using
      hf (z.re + c.im * I) (w.re + z.im * I) hU
  grind [wedgeIntegral]

/- The horizontal integral of `f` from `z` to `z.re + w.im * I` is equal to `(w - z).re * f z`
  up to `o(w - z)`, as `w` tends to `z`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `915083d4986cf499f5095d7598bb19dc9d72e36a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
