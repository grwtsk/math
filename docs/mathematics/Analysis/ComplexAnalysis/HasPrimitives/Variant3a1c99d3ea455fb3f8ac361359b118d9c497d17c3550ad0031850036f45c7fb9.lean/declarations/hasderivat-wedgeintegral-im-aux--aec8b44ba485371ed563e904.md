# hasDerivAt_wedgeIntegral_im_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d490040-be6f-7fa1-507b-86f5f8844b6b",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_wedgeIntegral_im_aux",
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
  "slug": "hasderivat-wedgeintegral-im-aux--aec8b44ba485371ed563e904",
  "source": {
    "blob": "915083d4986cf499f5095d7598bb19dc9d72e36a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 230,
    "path": "GRWTSK/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aec8b44ba485371ed563e904c6a34e86d10e87af09d5dec88cbeb0e9e9ffa3cd",
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

Occurrence: `result:6d490040-be6f-7fa1-507b-86f5f8844b6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma hasDerivAt_wedgeIntegral_im_aux :
    (fun w ↦ (∫ y in z.im..w.im, f (w.re + y * I)) - (w - z).im • f z) =o[𝓝 z] fun w ↦ w - z := by
  suffices (fun w ↦ ∫ y in z.im..w.im, f (w.re + y * I) - f z) =o[𝓝 z] fun w ↦ w - z by
    calc
      _ = fun w ↦ (∫ y in z.im..w.im, f (w.re + y * I)) - (∫ _ in z.im..w.im, f z) := by simp
      _ =ᶠ[𝓝 z] fun w ↦ ∫ y in z.im..w.im, f (w.re + y * I) - f z := ?_
      _ =o[𝓝 z] fun w ↦ w - z := this
    refine eventually_nhds_iff_ball.mpr ⟨r - dist z c, by simpa using hz, fun w hw ↦ ?_⟩
    exact (intervalIntegral.integral_sub
      ((f_cont.mono (mem_ball_of_map_im_aux₂ hw)).comp (by fun_prop)
        (mapsTo_image _ _)).intervalIntegrable intervalIntegrable_const).symm
  have : (fun w ↦ f w - f z) =o[𝓝 z] fun _ ↦ (1 : ℝ) := by
    rw [Asymptotics.isLittleO_one_iff, tendsto_sub_nhds_zero_iff]
    exact f_cont.continuousAt <| _root_.mem_nhds_iff.mpr ⟨ball c r, le_refl _, isOpen_ball, hz⟩
  rw [Asymptotics.IsLittleO] at this ⊢
  intro ε ε_pos
  replace := this ε_pos
  simp only [Asymptotics.isBigOWith_iff, norm_one, mul_one] at this ⊢
  replace this : ∀ᶠ w in 𝓝 z, ∀ y ∈ Ι z.im w.im, ‖f (w.re + y * I) - f z‖ ≤ ε := by
    rw [Metric.nhds_basis_closedBall.eventually_iff] at this ⊢
    obtain ⟨i, i_pos, hi⟩ := this
    exact ⟨i, i_pos, fun w w_in_ball y y_in_I ↦ hi (mem_closedBall_aux w_in_ball y_in_I)⟩
  filter_upwards [this] with w hw
  calc
    _ ≤ ε * ‖w.im - z.im‖ := intervalIntegral.norm_integral_le_of_norm_le_const hw
    _ = ε * ‖(w - z).im‖ := by simp
    _ ≤ ε * ‖w - z‖ := (mul_le_mul_iff_of_pos_left ε_pos).mpr (abs_im_le_norm _)

/-- The `wedgeIntegral` has derivative at `z` equal to `f z`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/HasPrimitives/Variant3a1c99d3ea455fb3f8ac361359b118d9c497d17c3550ad0031850036f45c7fb9.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `915083d4986cf499f5095d7598bb19dc9d72e36a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
