# sum_alphaOf_re_first_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abbc8f2a-727c-26ab-f5e0-89db14ec36dc",
  "kind": "theorem",
  "lexical_name": "sum_alphaOf_re_first_lower",
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
  "slug": "sum-alphaof-re-first-lower--f81a903317afb7c4dd07034f",
  "source": {
    "blob": "24651d3b4e3943f8a21e03ecc9b507c29f4f3c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 164,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f81a903317afb7c4dd07034f57f7a32602b23785c92b2133c9e5a3b65d87b757",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abbc8f2a-727c-26ab-f5e0-89db14ec36dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_alphaOf_re_first_lower (h : IsAdmissible lam eta)
    (hZ : IsConjInvariant Z m)
    {psi : Fin (Module.finrank ℂ (subspaceW h Z m)) → L2Interval lam}
    (hb : IsAdaptedBasis h Z m psi) (hsym : ∀ j, IsSymmetricL2 (psi j)) :
    2 * ((multipleRealPart Z m).card : ℝ) + ((nonRealPart Z).card : ℝ)
      ≤ ∑ j ∈ Finset.univ.filter (fun j : Fin (Module.finrank ℂ (subspaceW h Z m)) =>
          (j : ℕ) < Module.finrank ℂ (subspaceU h Z m)),
        (alphaOf eta lam Z m (psi j)).re := by
  classical
  let s := Finset.univ.filter (fun j : Fin (Module.finrank ℂ (subspaceW h Z m)) =>
    (j : ℕ) < Module.finrank ℂ (subspaceU h Z m))
  have hspan : Submodule.span ℂ (psi '' (s : Set _)) = subspaceU h Z m := by
    simpa [s] using hb.span_U
  have hfz : ∀ x ∈ multipleRealPart Z m,
      fzL2 h x ∈ Submodule.span ℂ (psi '' (s : Set _)) := by
    intro x hx
    rw [hspan, subspaceU]
    exact Submodule.subset_span (Set.mem_union_left _ ⟨x, by simpa using hx, rfl⟩)
  have hgz : ∀ z ∈ nonRealPart Z,
      gzL2 h z ∈ Submodule.span ℂ (psi '' (s : Set _)) := by
    intro z hz
    rw [hspan, subspaceU]
    exact Submodule.subset_span (Set.mem_union_right _ ⟨z, by simpa using hz, rfl⟩)
  have hone_f : ∀ x ∈ multipleRealPart Z m,
      ∑ j ∈ s, ‖inner ℂ (psi j) (fzL2 h x)‖ ^ 2 = 1 := by
    intro x hx
    rw [sum_sq_norm_inner_eq_norm_sq_of_mem_span_finset hb.orthonormal s (hfz x hx)]
    exact norm_fzL2_sq_eq_one h ((Finset.mem_filter.mp hx).2).1
  have hg_parseval : ∀ z ∈ nonRealPart Z,
      ∑ j ∈ s, ‖inner ℂ (psi j) (gzL2 h z)‖ ^ 2 = ‖gzL2 h z‖ ^ 2 := by
    intro z hz
    exact sum_sq_norm_inner_eq_norm_sq_of_mem_span_finset hb.orthonormal s (hgz z hz)
  have hh_bessel : ∀ z : ℂ,
      ∑ j ∈ s, ‖inner ℂ (psi j) (hzL2 h z)‖ ^ 2 ≤ ‖hzL2 h z‖ ^ 2 := by
    intro z
    exact hb.orthonormal.sum_inner_products_le (s := s) (hzL2 h z)
  rw [show (∑ j ∈ Finset.univ.filter
      (fun j : Fin (Module.finrank ℂ (subspaceW h Z m)) =>
        (j : ℕ) < Module.finrank ℂ (subspaceU h Z m)),
      (alphaOf eta lam Z m (psi j)).re) =
      ∑ j ∈ s, (alphaOf eta lam Z m (psi j)).re by rfl]
  simp_rw [alphaOf_re_eq_sum_norm h hZ (hsym _)]
  rw [Finset.sum_add_distrib, Finset.sum_comm, Finset.sum_comm (s := s) (t := nonRealPart Z)]
  have hR1nonneg : 0 ≤ ∑ x ∈ simpleRealPart Z m,
      ∑ j ∈ s, (m x : ℝ) * ‖inner ℂ (psi j) (fzL2 h x)‖ ^ 2 := by positivity
  rw [Finset.sum_union disjoint_simpleRealPart_multipleRealPart]
  have hR2 : ∑ x ∈ multipleRealPart Z m,
      ∑ j ∈ s, (m x : ℝ) * ‖inner ℂ (psi j) (fzL2 h x)‖ ^ 2
      = ∑ x ∈ multipleRealPart Z m, (m x : ℝ) := by
    refine Finset.sum_congr rfl fun x hx => ?_
    rw [← Finset.mul_sum, hone_f x hx, mul_one]
  rw [hR2]
  have hS : ∑ z ∈ nonRealPart Z,
      ∑ j ∈ s, (m z : ℝ) *
        (‖inner ℂ (psi j) (gzL2 h z)‖ ^ 2 - ‖inner ℂ (psi j) (hzL2 h z)‖ ^ 2)
      ≥ ∑ z ∈ nonRealPart Z, (m z : ℝ) := by
    refine Finset.sum_le_sum fun z hz => ?_
    rw [← Finset.mul_sum, Finset.sum_sub_distrib, hg_parseval z hz]
    have hm : (0 : ℝ) ≤ (m z : ℝ) := by positivity
    have hd := hh_bessel z
    have hdef := norm_gzL2_sq_sub_norm_hzL2_sq h z
    nlinarith
  have hR2card : 2 * ((multipleRealPart Z m).card : ℝ)
      ≤ ∑ x ∈ multipleRealPart Z m, (m x : ℝ) := by
    calc
      2 * ((multipleRealPart Z m).card : ℝ)
          = ∑ _x ∈ multipleRealPart Z m, (2 : ℝ) := by simp [mul_comm]
      _ ≤ ∑ x ∈ multipleRealPart Z m, (m x : ℝ) := by
        refine Finset.sum_le_sum fun x hx => ?_
        exact_mod_cast ((Finset.mem_filter.mp hx).2).2
  have hScard : ((nonRealPart Z).card : ℝ)
      ≤ ∑ z ∈ nonRealPart Z, (m z : ℝ) := by
    calc
      ((nonRealPart Z).card : ℝ) = ∑ _z ∈ nonRealPart Z, (1 : ℝ) := by simp
      _ ≤ ∑ z ∈ nonRealPart Z, (m z : ℝ) := by
        refine Finset.sum_le_sum fun z hz => ?_
        exact_mod_cast hZ.one_le z (Finset.mem_filter.mp hz).1
  linarith

/-! ## Three-range algebra -/

/-- The numerical three-range estimate used for the simple-real-point bound.

The first range uses `a² + 4 ≥ 4a`, the middle range uses `a² + 1 ≥ 2a`, and the
last range uses `a ≤ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24651d3b4e3943f8a21e03ecc9b507c29f4f3c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
