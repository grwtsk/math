-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.AttachBound.Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.AttachBound.Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881","mathematical_subject":"Algebra.Polynomials","original_sha256":"0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/ContinuousFunction/StoneWeierstrass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison, Heather Macbeth
-/
import Mathlib.Topology.ContinuousFunction.Weierstrass
import Mathlib.Data.IsROrC.Basic


namespace GRWTSK.Algebra.CommutativeAlgebra.AttachBound.Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881

#align_import topology.continuous_function.stone_weierstrass from "leanprover-community/mathlib"@"16e59248c0ebafabd5d071b1cd41743eb8698ffb"

/-!
# The Stone-Weierstrass theorem

If a subalgebra `A` of `C(X, ℝ)`, where `X` is a compact topological space,
separates points, then it is dense.

We argue as follows.

* In any subalgebra `A` of `C(X, ℝ)`, if `f ∈ A`, then `abs f ∈ A.topologicalClosure`.
  This follows from the Weierstrass approximation theorem on `[-‖f‖, ‖f‖]` by
  approximating `abs` uniformly thereon by polynomials.
* This ensures that `A.topologicalClosure` is actually a sublattice:
  if it contains `f` and `g`, then it contains the pointwise supremum `f ⊔ g`
  and the pointwise infimum `f ⊓ g`.
* Any nonempty sublattice `L` of `C(X, ℝ)` which separates points is dense,
  by a nice argument approximating a given `f` above and below using separating functions.
  For each `x y : X`, we pick a function `g x y ∈ L` so `g x y x = f x` and `g x y y = f y`.
  By continuity these functions remain close to `f` on small patches around `x` and `y`.
  We use compactness to identify a certain finitely indexed infimum of finitely indexed supremums
  which is then close to `f` everywhere, obtaining the desired approximation.
* Finally we put these pieces together. `L = A.topologicalClosure` is a nonempty sublattice
  which separates points since `A` does, and so is dense (in fact equal to `⊤`).

We then prove the complex version for star subalgebras `A`, by separately approximating
the real and imaginary parts using the real subalgebra of real-valued functions in `A`
(which still separates points, by taking the norm-square of a separating function).

## Future work

Extend to cover the case of subalgebras of the continuous functions vanishing at infinity,
on non-compact spaces.

-/


noncomputable section

namespace ContinuousMap

variable {X : Type*} [TopologicalSpace X] [CompactSpace X]

open scoped Polynomial

/-- Turn a function `f : C(X, ℝ)` into a continuous map into `Set.Icc (-‖f‖) (‖f‖)`,
thereby explicitly attaching bounds.
-/
def attachBound (f : C(X, ℝ)) : C(X, Set.Icc (-‖f‖) ‖f‖)
    where toFun x := ⟨f x, ⟨neg_norm_le_apply f x, apply_le_norm f x⟩⟩
#align continuous_map.attach_bound ContinuousMap.attachBound

@[simp]
theorem attachBound_apply_coe (f : C(X, ℝ)) (x : X) : ((attachBound f) x : ℝ) = f x :=
  rfl
#align continuous_map.attach_bound_apply_coe ContinuousMap.attachBound_apply_coe

theorem polynomial_comp_attachBound (A : Subalgebra ℝ C(X, ℝ)) (f : A) (g : ℝ[X]) :
    (g.toContinuousMapOn (Set.Icc (-‖f‖) ‖f‖)).comp (f : C(X, ℝ)).attachBound =
      Polynomial.aeval f g := by
  ext
  simp only [ContinuousMap.coe_comp, Function.comp_apply, ContinuousMap.attachBound_apply_coe,
    Polynomial.toContinuousMapOn_apply, Polynomial.aeval_subalgebra_coe,
    Polynomial.aeval_continuousMap_apply, Polynomial.toContinuousMap_apply]
#align continuous_map.polynomial_comp_attach_bound ContinuousMap.polynomial_comp_attachBound

/-- Given a continuous function `f` in a subalgebra of `C(X, ℝ)`, postcomposing by a polynomial
gives another function in `A`.

This lemma proves something slightly more subtle than this:
we take `f`, and think of it as a function into the restricted target `Set.Icc (-‖f‖) ‖f‖)`,
and then postcompose with a polynomial function on that interval.
This is in fact the same situation as above, and so also gives a function in `A`.
-/
theorem polynomial_comp_attachBound_mem (A : Subalgebra ℝ C(X, ℝ)) (f : A) (g : ℝ[X]) :
    (g.toContinuousMapOn (Set.Icc (-‖f‖) ‖f‖)).comp (f : C(X, ℝ)).attachBound ∈ A := by
  rw [polynomial_comp_attachBound]
  apply SetLike.coe_mem
#align continuous_map.polynomial_comp_attach_bound_mem ContinuousMap.polynomial_comp_attachBound_mem

theorem comp_attachBound_mem_closure (A : Subalgebra ℝ C(X, ℝ)) (f : A)
    (p : C(Set.Icc (-‖f‖) ‖f‖, ℝ)) : p.comp (attachBound (f : C(X, ℝ))) ∈ A.topologicalClosure := by
  -- `p` itself is in the closure of polynomials, by the Weierstrass theorem,
  have mem_closure : p ∈ (polynomialFunctions (Set.Icc (-‖f‖) ‖f‖)).topologicalClosure :=
    continuousMap_mem_polynomialFunctions_closure _ _ p
  -- and so there are polynomials arbitrarily close.
  have frequently_mem_polynomials := mem_closure_iff_frequently.mp mem_closure
  -- To prove `p.comp (attachBound f)` is in the closure of `A`,
  -- we show there are elements of `A` arbitrarily close.
  apply mem_closure_iff_frequently.mpr
  -- To show that, we pull back the polynomials close to `p`,
  refine'
    ((compRightContinuousMap ℝ (attachBound (f : C(X, ℝ)))).continuousAt
            p).tendsto.frequently_map
      _ _ frequently_mem_polynomials
  -- but need to show that those pullbacks are actually in `A`.
  rintro _ ⟨g, ⟨-, rfl⟩⟩
  simp only [SetLike.mem_coe, AlgHom.coe_toRingHom, compRightContinuousMap_apply,
    Polynomial.toContinuousMapOnAlgHom_apply]
  apply polynomial_comp_attachBound_mem
#align continuous_map.comp_attach_bound_mem_closure ContinuousMap.comp_attachBound_mem_closure

theorem abs_mem_subalgebra_closure (A : Subalgebra ℝ C(X, ℝ)) (f : A) :
    (f : C(X, ℝ)).abs ∈ A.topologicalClosure := by
  let f' := attachBound (f : C(X, ℝ))
  let abs : C(Set.Icc (-‖f‖) ‖f‖, ℝ) := { toFun := fun x : Set.Icc (-‖f‖) ‖f‖ => |(x : ℝ)| }
  change abs.comp f' ∈ A.topologicalClosure
  apply comp_attachBound_mem_closure
#align continuous_map.abs_mem_subalgebra_closure ContinuousMap.abs_mem_subalgebra_closure

theorem inf_mem_subalgebra_closure (A : Subalgebra ℝ C(X, ℝ)) (f g : A) :
    (f : C(X, ℝ)) ⊓ (g : C(X, ℝ)) ∈ A.topologicalClosure := by
  rw [inf_eq_half_smul_add_sub_abs_sub' ℝ]
  refine'
    A.topologicalClosure.smul_mem
      (A.topologicalClosure.sub_mem
        (A.topologicalClosure.add_mem (A.le_topologicalClosure f.property)
          (A.le_topologicalClosure g.property))
        _)
      _
  exact_mod_cast abs_mem_subalgebra_closure A _
#align continuous_map.inf_mem_subalgebra_closure ContinuousMap.inf_mem_subalgebra_closure

theorem inf_mem_closed_subalgebra (A : Subalgebra ℝ C(X, ℝ)) (h : IsClosed (A : Set C(X, ℝ)))
    (f g : A) : (f : C(X, ℝ)) ⊓ (g : C(X, ℝ)) ∈ A := by
  convert inf_mem_subalgebra_closure A f g
  apply SetLike.ext'
  symm
  erw [closure_eq_iff_isClosed]
  exact h
#align continuous_map.inf_mem_closed_subalgebra ContinuousMap.inf_mem_closed_subalgebra

theorem sup_mem_subalgebra_closure (A : Subalgebra ℝ C(X, ℝ)) (f g : A) :
    (f : C(X, ℝ)) ⊔ (g : C(X, ℝ)) ∈ A.topologicalClosure := by
  rw [sup_eq_half_smul_add_add_abs_sub' ℝ]
  refine'
    A.topologicalClosure.smul_mem
      (A.topologicalClosure.add_mem
        (A.topologicalClosure.add_mem (A.le_topologicalClosure f.property)
          (A.le_topologicalClosure g.property))
        _)
      _
  exact_mod_cast abs_mem_subalgebra_closure A _
#align continuous_map.sup_mem_subalgebra_closure ContinuousMap.sup_mem_subalgebra_closure

theorem sup_mem_closed_subalgebra (A : Subalgebra ℝ C(X, ℝ)) (h : IsClosed (A : Set C(X, ℝ)))
    (f g : A) : (f : C(X, ℝ)) ⊔ (g : C(X, ℝ)) ∈ A := by
  convert sup_mem_subalgebra_closure A f g
  apply SetLike.ext'
  symm
  erw [closure_eq_iff_isClosed]
  exact h
#align continuous_map.sup_mem_closed_subalgebra ContinuousMap.sup_mem_closed_subalgebra

open scoped Topology

-- Here's the fun part of Stone-Weierstrass!
theorem sublattice_closure_eq_top (L : Set C(X, ℝ)) (nA : L.Nonempty)
    (inf_mem : ∀ (f) (_ : f ∈ L) (g) (_ : g ∈ L), f ⊓ g ∈ L)
    (sup_mem : ∀ (f) (_ : f ∈ L) (g) (_ : g ∈ L), f ⊔ g ∈ L) (sep : L.SeparatesPointsStrongly) :
    closure L = ⊤ := by
  -- We start by boiling down to a statement about close approximation.
  apply eq_top_iff.mpr
  rintro f -
  refine'
    Filter.Frequently.mem_closure
      ((Filter.HasBasis.frequently_iff Metric.nhds_basis_ball).mpr fun ε pos => _)
  simp only [exists_prop, Metric.mem_ball]
  -- It will be helpful to assume `X` is nonempty later,
  -- so we get that out of the way here.
  by_cases nX : Nonempty X
  swap
  exact ⟨nA.some, (dist_lt_iff pos).mpr fun x => False.elim (nX ⟨x⟩), nA.choose_spec⟩
  /-
    The strategy now is to pick a family of continuous functions `g x y` in `A`
    with the property that `g x y x = f x` and `g x y y = f y`
    (this is immediate from `h : SeparatesPointsStrongly`)
    then use continuity to see that `g x y` is close to `f` near both `x` and `y`,
    and finally using compactness to produce the desired function `h`
    as a maximum over finitely many `x` of a minimum over finitely many `y` of the `g x y`.
    -/
  dsimp only [Set.SeparatesPointsStrongly] at sep
  choose g hg w₁ w₂ using sep f
  -- For each `x y`, we define `U x y` to be `{z | f z - ε < g x y z}`,
  -- and observe this is a neighbourhood of `y`.
  let U : X → X → Set X := fun x y => {z | f z - ε < g x y z}
  have U_nhd_y : ∀ x y, U x y ∈ 𝓝 y := by
    intro x y
    refine' IsOpen.mem_nhds _ _
    · apply isOpen_lt <;> continuity
    · rw [Set.mem_setOf_eq, w₂]
      exact sub_lt_self _ pos
  -- Fixing `x` for a moment, we have a family of functions `fun y ↦ g x y`
  -- which on different patches (the `U x y`) are greater than `f z - ε`.
  -- Taking the supremum of these functions
  -- indexed by a finite collection of patches which cover `X`
  -- will give us an element of `A` that is globally greater than `f z - ε`
  -- and still equal to `f x` at `x`.
  -- Since `X` is compact, for every `x` there is some finset `ys t`
  -- so the union of the `U x y` for `y ∈ ys x` still covers everything.
  let ys : ∀ _, Finset X := fun x => (CompactSpace.elim_nhds_subcover (U x) (U_nhd_y x)).choose
  let ys_w : ∀ x, ⋃ y ∈ ys x, U x y = ⊤ := fun x =>
    (CompactSpace.elim_nhds_subcover (U x) (U_nhd_y x)).choose_spec
  have ys_nonempty : ∀ x, (ys x).Nonempty := fun x =>
    Set.nonempty_of_union_eq_top_of_nonempty _ _ nX (ys_w x)
  -- Thus for each `x` we have the desired `h x : A` so `f z - ε < h x z` everywhere
  -- and `h x x = f x`.
  let h : ∀ _, L := fun x =>
    ⟨(ys x).sup' (ys_nonempty x) fun y => (g x y : C(X, ℝ)),
      Finset.sup'_mem _ sup_mem _ _ _ fun y _ => hg x y⟩
  have lt_h : ∀ x z, f z - ε < (h x : X → ℝ) z := by
    intro x z
    obtain ⟨y, ym, zm⟩ := Set.exists_set_mem_of_union_eq_top _ _ (ys_w x) z
    dsimp
    simp only [Subtype.coe_mk, sup'_coe, Finset.sup'_apply, Finset.lt_sup'_iff]
    exact ⟨y, ym, zm⟩
  have h_eq : ∀ x, (h x : X → ℝ) x = f x := by intro x; simp [w₁]
  -- For each `x`, we define `W x` to be `{z | h x z < f z + ε}`,
  let W : ∀ _, Set X := fun x => {z | (h x : X → ℝ) z < f z + ε}
  -- This is still a neighbourhood of `x`.
  have W_nhd : ∀ x, W x ∈ 𝓝 x := by
    intro x
    refine' IsOpen.mem_nhds _ _
    · -- Porting note: mathlib3 `continuity` found `continuous_set_coe`
      apply isOpen_lt (continuous_set_coe _ _)
      continuity
    · dsimp only [Set.mem_setOf_eq]
      rw [h_eq]
      exact lt_add_of_pos_right _ pos
  -- Since `X` is compact, there is some finset `ys t`
  -- so the union of the `W x` for `x ∈ xs` still covers everything.
  let xs : Finset X := (CompactSpace.elim_nhds_subcover W W_nhd).choose
  let xs_w : ⋃ x ∈ xs, W x = ⊤ := (CompactSpace.elim_nhds_subcover W W_nhd).choose_spec
  have xs_nonempty : xs.Nonempty := Set.nonempty_of_union_eq_top_of_nonempty _ _ nX xs_w
  -- Finally our candidate function is the infimum over `x ∈ xs` of the `h x`.
  -- This function is then globally less than `f z + ε`.
  let k : (L : Type _) :=
    ⟨xs.inf' xs_nonempty fun x => (h x : C(X, ℝ)),
      Finset.inf'_mem _ inf_mem _ _ _ fun x _ => (h x).2⟩
  refine' ⟨k.1, _, k.2⟩
  -- We just need to verify the bound, which we do pointwise.
  rw [dist_lt_iff pos]
  intro z
  -- We rewrite into this particular form,
  -- so that simp lemmas about inequalities involving `Finset.inf'` can fire.
  rw [show ∀ a b ε : ℝ, dist a b < ε ↔ a < b + ε ∧ b - ε < a by
        intros; simp only [← Metric.mem_ball, Real.ball_eq_Ioo, Set.mem_Ioo, and_comm]]
  fconstructor
  · dsimp
    simp only [Finset.inf'_lt_iff, ContinuousMap.inf'_apply]
    exact Set.exists_set_mem_of_union_eq_top _ _ xs_w z
  · dsimp
    simp only [Finset.lt_inf'_iff, ContinuousMap.inf'_apply]
    rintro x -
    apply lt_h
#align continuous_map.sublattice_closure_eq_top ContinuousMap.sublattice_closure_eq_top

/-- The **Stone-Weierstrass Approximation Theorem**,
that a subalgebra `A` of `C(X, ℝ)`, where `X` is a compact topological space,
is dense if it separates points.
-/
theorem subalgebra_topologicalClosure_eq_top_of_separatesPoints (A : Subalgebra ℝ C(X, ℝ))
    (w : A.SeparatesPoints) : A.topologicalClosure = ⊤ := by
  -- The closure of `A` is closed under taking `sup` and `inf`,
  -- and separates points strongly (since `A` does),
  -- so we can apply `sublattice_closure_eq_top`.
  apply SetLike.ext'
  let L := A.topologicalClosure
  have n : Set.Nonempty (L : Set C(X, ℝ)) := ⟨(1 : C(X, ℝ)), A.le_topologicalClosure A.one_mem⟩
  convert
    sublattice_closure_eq_top (L : Set C(X, ℝ)) n
      (fun f fm g gm => inf_mem_closed_subalgebra L A.isClosed_topologicalClosure ⟨f, fm⟩ ⟨g, gm⟩)
      (fun f fm g gm => sup_mem_closed_subalgebra L A.isClosed_topologicalClosure ⟨f, fm⟩ ⟨g, gm⟩)
      (Subalgebra.SeparatesPoints.strongly
        (Subalgebra.separatesPoints_monotone A.le_topologicalClosure w))
  · simp
#align continuous_map.subalgebra_topological_closure_eq_top_of_separates_points ContinuousMap.subalgebra_topologicalClosure_eq_top_of_separatesPoints

/-- An alternative statement of the Stone-Weierstrass theorem.

If `A` is a subalgebra of `C(X, ℝ)` which separates points (and `X` is compact),
every real-valued continuous function on `X` is a uniform limit of elements of `A`.
-/
theorem continuousMap_mem_subalgebra_closure_of_separatesPoints (A : Subalgebra ℝ C(X, ℝ))
    (w : A.SeparatesPoints) (f : C(X, ℝ)) : f ∈ A.topologicalClosure := by
  rw [subalgebra_topologicalClosure_eq_top_of_separatesPoints A w]
  simp
#align continuous_map.continuous_map_mem_subalgebra_closure_of_separates_points ContinuousMap.continuousMap_mem_subalgebra_closure_of_separatesPoints

/-- An alternative statement of the Stone-Weierstrass theorem,
for those who like their epsilons.

If `A` is a subalgebra of `C(X, ℝ)` which separates points (and `X` is compact),
every real-valued continuous function on `X` is within any `ε > 0` of some element of `A`.
-/
theorem exists_mem_subalgebra_near_continuousMap_of_separatesPoints (A : Subalgebra ℝ C(X, ℝ))
    (w : A.SeparatesPoints) (f : C(X, ℝ)) (ε : ℝ) (pos : 0 < ε) :
    ∃ g : A, ‖(g : C(X, ℝ)) - f‖ < ε := by
  have w :=
    mem_closure_iff_frequently.mp (continuousMap_mem_subalgebra_closure_of_separatesPoints A w f)
  rw [Metric.nhds_basis_ball.frequently_iff] at w
  obtain ⟨g, H, m⟩ := w ε pos
  rw [Metric.mem_ball, dist_eq_norm] at H
  exact ⟨⟨g, m⟩, H⟩
#align continuous_map.exists_mem_subalgebra_near_continuous_map_of_separates_points ContinuousMap.exists_mem_subalgebra_near_continuousMap_of_separatesPoints

/-- An alternative statement of the Stone-Weierstrass theorem,
for those who like their epsilons and don't like bundled continuous functions.

If `A` is a subalgebra of `C(X, ℝ)` which separates points (and `X` is compact),
every real-valued continuous function on `X` is within any `ε > 0` of some element of `A`.
-/
theorem exists_mem_subalgebra_near_continuous_of_separatesPoints (A : Subalgebra ℝ C(X, ℝ))
    (w : A.SeparatesPoints) (f : X → ℝ) (c : Continuous f) (ε : ℝ) (pos : 0 < ε) :
    ∃ g : A, ∀ x, ‖(g : X → ℝ) x - f x‖ < ε := by
  obtain ⟨g, b⟩ := exists_mem_subalgebra_near_continuousMap_of_separatesPoints A w ⟨f, c⟩ ε pos
  use g
  rwa [norm_lt_iff _ pos] at b
#align continuous_map.exists_mem_subalgebra_near_continuous_of_separates_points ContinuousMap.exists_mem_subalgebra_near_continuous_of_separatesPoints

end ContinuousMap

section IsROrC

open IsROrC

-- Redefine `X`, since for the next lemma it need not be compact
variable {𝕜 : Type _} {X : Type*} [IsROrC 𝕜] [TopologicalSpace X]

open ContinuousMap

/- a post-port refactor eliminated `conjInvariantSubalgebra`, which was only used to
state and prove the Stone-Weierstrass theorem, in favor of using `StarSubalgebra`s,
which didn't exist at the time Stone-Weierstrass was written. -/
#noalign continuous_map.conj_invariant_subalgebra
#noalign continuous_map.mem_conj_invariant_subalgebra
#noalign continuous_map.subalgebra_conj_invariant


/-- If a star subalgebra of `C(X, 𝕜)` separates points, then the real subalgebra
of its purely real-valued elements also separates points. -/
theorem Subalgebra.SeparatesPoints.isROrC_to_real {A : StarSubalgebra 𝕜 C(X, 𝕜)}
    (hA : A.SeparatesPoints) :
      ((A.restrictScalars ℝ).comap
        (ofRealAm.compLeftContinuous ℝ continuous_ofReal)).SeparatesPoints := by
  intro x₁ x₂ hx
  -- Let `f` in the subalgebra `A` separate the points `x₁`, `x₂`
  obtain ⟨_, ⟨f, hfA, rfl⟩, hf⟩ := hA hx
  let F : C(X, 𝕜) := f - const _ (f x₂)
  -- Subtract the constant `f x₂` from `f`; this is still an element of the subalgebra
  have hFA : F ∈ A := by
    refine' A.sub_mem hfA (@Eq.subst _ (· ∈ A) _ _ _ <| A.smul_mem A.one_mem <| f x₂)
    ext1
    simp only [coe_smul, coe_one, smul_apply, one_apply, Algebra.id.smul_eq_mul, mul_one,
      const_apply]
  -- Consider now the function `fun x ↦ |f x - f x₂| ^ 2`
  refine' ⟨_, ⟨(⟨IsROrC.normSq, continuous_normSq⟩ : C(𝕜, ℝ)).comp F, _, rfl⟩, _⟩
  · -- This is also an element of the subalgebra, and takes only real values
    rw [SetLike.mem_coe, Subalgebra.mem_comap]
    convert (A.restrictScalars ℝ).mul_mem hFA (star_mem hFA : star F ∈ A)
    ext1
    exact (IsROrC.mul_conj (K := 𝕜) _).symm
  · -- And it also separates the points `x₁`, `x₂`
    have : f x₁ - f x₂ ≠ 0 := sub_ne_zero.mpr hf
    simpa only [comp_apply, coe_sub, coe_const, sub_apply, coe_mk, sub_self, map_zero, Ne.def,
      normSq_eq_zero, const_apply] using this
#align subalgebra.separates_points.is_R_or_C_to_real Subalgebra.SeparatesPoints.isROrC_to_real

variable [CompactSpace X]

/-- The Stone-Weierstrass approximation theorem, `IsROrC` version, that a star subalgebra `A` of
`C(X, 𝕜)`, where `X` is a compact topological space and `IsROrC 𝕜`, is dense if itseparates
points. -/
theorem ContinuousMap.starSubalgebra_topologicalClosure_eq_top_of_separatesPoints
    (A : StarSubalgebra 𝕜 C(X, 𝕜)) (hA : A.SeparatesPoints) : A.topologicalClosure = ⊤ := by
  rw [StarSubalgebra.eq_top_iff]
  -- Let `I` be the natural inclusion of `C(X, ℝ)` into `C(X, 𝕜)`
  let I : C(X, ℝ) →ₗ[ℝ] C(X, 𝕜) := ofRealClm.compLeftContinuous ℝ X
  -- The main point of the proof is that its range (i.e., every real-valued function) is contained
  -- in the closure of `A`
  have key : LinearMap.range I ≤ (A.toSubmodule.restrictScalars ℝ).topologicalClosure := by
    -- Let `A₀` be the subalgebra of `C(X, ℝ)` consisting of `A`'s purely real elements; it is the
    -- preimage of `A` under `I`.  In this argument we only need its submodule structure.
    let A₀ : Submodule ℝ C(X, ℝ) := (A.toSubmodule.restrictScalars ℝ).comap I
    -- By `Subalgebra.SeparatesPoints.isROrC_to_real`, this subalgebra also separates points, so
    -- we may apply the real Stone-Weierstrass result to it.
    have SW : A₀.topologicalClosure = ⊤ :=
      haveI := subalgebra_topologicalClosure_eq_top_of_separatesPoints _ hA.isROrC_to_real
      congr_arg Subalgebra.toSubmodule this
    rw [← Submodule.map_top, ← SW]
    -- So it suffices to prove that the image under `I` of the closure of `A₀` is contained in the
    -- closure of `A`, which follows by abstract nonsense
    have h₁ := A₀.topologicalClosure_map ((@ofRealClm 𝕜 _).compLeftContinuousCompact X)
    have h₂ := (A.toSubmodule.restrictScalars ℝ).map_comap_le I
    exact h₁.trans (Submodule.topologicalClosure_mono h₂)
  -- In particular, for a function `f` in `C(X, 𝕜)`, the real and imaginary parts of `f` are in the
  -- closure of `A`
  intro f
  let f_re : C(X, ℝ) := (⟨IsROrC.re, IsROrC.reClm.continuous⟩ : C(𝕜, ℝ)).comp f
  let f_im : C(X, ℝ) := (⟨IsROrC.im, IsROrC.imClm.continuous⟩ : C(𝕜, ℝ)).comp f
  have h_f_re : I f_re ∈ A.topologicalClosure := key ⟨f_re, rfl⟩
  have h_f_im : I f_im ∈ A.topologicalClosure := key ⟨f_im, rfl⟩
  -- So `f_re + I • f_im` is in the closure of `A`
  have := A.topologicalClosure.add_mem h_f_re (A.topologicalClosure.smul_mem h_f_im IsROrC.I)
  rw [StarSubalgebra.mem_toSubalgebra] at this
  convert this
  -- And this, of course, is just `f`
  ext
  apply Eq.symm
  simp [mul_comm IsROrC.I _]
#align continuous_map.subalgebra_is_R_or_C_topological_closure_eq_top_of_separates_points ContinuousMap.starSubalgebra_topologicalClosure_eq_top_of_separatesPointsₓ

end IsROrC

section PolynomialFunctions

open StarSubalgebra Polynomial
open scoped Polynomial

/-- Polynomial functions in are dense in `C(s, ℝ)` when `s` is compact.

See `polynomialFunctions_closure_eq_top` for the special case `s = Set.Icc a b` which does not use
the full Stone-Weierstrass theorem. Of course, that version could be used to prove this one as
well. -/
theorem polynomialFunctions.topologicalClosure (s : Set ℝ)
    [CompactSpace s] : (polynomialFunctions s).topologicalClosure = ⊤ :=
  ContinuousMap.subalgebra_topologicalClosure_eq_top_of_separatesPoints _
    (polynomialFunctions_separatesPoints s)

/-- The star subalgebra generated by polynomials functions is dense in `C(s, 𝕜)` when `s` is
compact and `𝕜` is either `ℝ` or `ℂ`. -/
theorem polynomialFunctions.starClosure_topologicalClosure {𝕜 : Type*} [IsROrC 𝕜] (s : Set 𝕜)
    [CompactSpace s] : (polynomialFunctions s).starClosure.topologicalClosure = ⊤ :=
  ContinuousMap.starSubalgebra_topologicalClosure_eq_top_of_separatesPoints _
    (Subalgebra.separatesPoints_monotone le_sup_left (polynomialFunctions_separatesPoints s))

/-- Continuous algebra homomorphisms from `C(s, ℝ)` into an `ℝ`-algebra `A` which agree
at `X : 𝕜[X]` (interpreted as a continuous map) are, in fact, equal. -/
@[ext]
theorem ContinuousMap.algHom_ext_map_X {A : Type*} [Ring A]
    [Algebra ℝ A] [TopologicalSpace A] [T2Space A] {s : Set ℝ} [CompactSpace s]
    {φ ψ : C(s, ℝ) →ₐ[ℝ] A} (hφ : Continuous φ) (hψ : Continuous ψ)
    (h : φ (toContinuousMapOnAlgHom s X) = ψ (toContinuousMapOnAlgHom s X)) : φ = ψ := by
  suffices (⊤ : Subalgebra ℝ C(s, ℝ)) ≤ AlgHom.equalizer φ ψ from
    AlgHom.ext fun x => this (by trivial)
  rw [← polynomialFunctions.topologicalClosure s]
  exact Subalgebra.topologicalClosure_minimal (polynomialFunctions s)
    (polynomialFunctions.le_equalizer s φ ψ h) (isClosed_eq hφ hψ)

/-- Continuous star algebra homomorphisms from `C(s, 𝕜)` into a star `𝕜`-algebra `A` which agree
at `X : 𝕜[X]` (interpreted as a continuous map) are, in fact, equal. -/
@[ext]
theorem ContinuousMap.starAlgHom_ext_map_X {𝕜 A : Type*} [IsROrC 𝕜] [Ring A] [StarRing A]
    [Algebra 𝕜 A] [TopologicalSpace A] [T2Space A] {s : Set 𝕜} [CompactSpace s]
    {φ ψ : C(s, 𝕜) →⋆ₐ[𝕜] A} (hφ : Continuous φ) (hψ : Continuous ψ)
    (h : φ (toContinuousMapOnAlgHom s X) = ψ (toContinuousMapOnAlgHom s X)) : φ = ψ := by
  suffices (⊤ : StarSubalgebra 𝕜 C(s, 𝕜)) ≤ StarAlgHom.equalizer φ ψ from
    StarAlgHom.ext fun x => this mem_top
  rw [← polynomialFunctions.starClosure_topologicalClosure s]
  exact StarSubalgebra.topologicalClosure_minimal
    (polynomialFunctions.starClosure_le_equalizer s φ ψ h) (isClosed_eq hφ hψ)

end PolynomialFunctions
