# aemeasurable_fderivWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9f3fa00-1c4d-613e-e00a-b453bc9702f9",
  "kind": "theorem",
  "lexical_name": "aemeasurable_fderivWithin",
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
  "slug": "aemeasurable-fderivwithin--664ee38536e4e77ad5e84544",
  "source": {
    "blob": "f7cad2063b178cca3d9a88bb2ae37986675b0814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 695,
    "path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:664ee38536e4e77ad5e84544511d26f025f51dab7487bc6188849f1a9c06ef1e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9f3fa00-1c4d-613e-e00a-b453bc9702f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 695–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aemeasurable_fderivWithin (hs : MeasurableSet s)
    (hf' : ∀ x ∈ s, HasFDerivWithinAt f (f' x) s x) : AEMeasurable f' (μ.restrict s) := by
  /- It suffices to show that `f'` can be uniformly approximated by a measurable function.
    Fix `ε > 0`. Thanks to `exists_partition_approximatesLinearOn_of_hasFDerivWithinAt`, one
    can find a countable measurable partition of `s` into sets `s ∩ t n` on which `f` is well
    approximated by linear maps `A n`. On almost all of `s ∩ t n`, it follows from
    `ApproximatesLinearOn.norm_fderiv_sub_le` that `f'` is uniformly approximated by `A n`, which
    gives the conclusion. -/
  -- fix a precision `ε`
  refine aemeasurable_of_unif_approx fun ε εpos => ?_
  let δ : ℝ≥0 := ⟨ε, le_of_lt εpos⟩
  have δpos : 0 < δ := εpos
  -- partition `s` into sets `s ∩ t n` on which `f` is approximated by linear maps `A n`.
  obtain ⟨t, A, t_disj, t_meas, t_cover, ht, _⟩ :
    ∃ (t : ℕ → Set E) (A : ℕ → E →L[ℝ] E),
      Pairwise (Disjoint on t) ∧
        (∀ n : ℕ, MeasurableSet (t n)) ∧
          (s ⊆ ⋃ n : ℕ, t n) ∧
            (∀ n : ℕ, ApproximatesLinearOn f (A n) (s ∩ t n) δ) ∧
              (s.Nonempty → ∀ n, ∃ y ∈ s, A n = f' y) :=
    exists_partition_approximatesLinearOn_of_hasFDerivWithinAt f s f' hf' (fun _ => δ) fun _ =>
      δpos.ne'
  -- define a measurable function `g` which coincides with `A n` on `t n`.
  obtain ⟨g, g_meas, hg⟩ :
      ∃ g : E → E →L[ℝ] E, Measurable g ∧ ∀ (n : ℕ) (x : E), x ∈ t n → g x = A n :=
    exists_measurable_piecewise t t_meas (fun n _ => A n) (fun n => measurable_const) <|
      t_disj.mono fun i j h => by simp only [h.inter_eq, eqOn_empty]
  refine ⟨g, g_meas.aemeasurable, ?_⟩
  -- reduce to checking that `f'` and `g` are close on almost all of `s ∩ t n`, for all `n`.
  suffices H : ∀ᵐ x : E ∂sum fun n ↦ μ.restrict (s ∩ t n), dist (g x) (f' x) ≤ ε by
    have : μ.restrict s ≤ sum fun n => μ.restrict (s ∩ t n) := by
      have : s = ⋃ n, s ∩ t n := by
        rw [← inter_iUnion]
        exact Subset.antisymm (subset_inter Subset.rfl t_cover) inter_subset_left
      conv_lhs => rw [this]
      exact restrict_iUnion_le
    exact ae_mono this H
  -- fix such an `n`.
  refine ae_sum_iff.2 fun n => ?_
  -- on almost all `s ∩ t n`, `f' x` is close to `A n` thanks to
  -- `ApproximatesLinearOn.norm_fderiv_sub_le`.
  have E₁ : ∀ᵐ x : E ∂μ.restrict (s ∩ t n), ‖f' x - A n‖₊ ≤ δ :=
    (ht n).norm_fderiv_sub_le μ (hs.inter (t_meas n)) f' fun x hx =>
      (hf' x hx.1).mono inter_subset_left
  -- moreover, `g x` is equal to `A n` there.
  have E₂ : ∀ᵐ x : E ∂μ.restrict (s ∩ t n), g x = A n := by
    suffices H : ∀ᵐ x : E ∂μ.restrict (t n), g x = A n from
      ae_mono (restrict_mono inter_subset_right le_rfl) H
    filter_upwards [ae_restrict_mem (t_meas n)]
    exact hg n
  -- putting these two properties together gives the conclusion.
  filter_upwards [E₁, E₂] with x hx1 hx2
  rw [← nndist_eq_nnnorm] at hx1
  rw [hx2, dist_comm]
  exact hx1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean#L695).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7cad2063b178cca3d9a88bb2ae37986675b0814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
