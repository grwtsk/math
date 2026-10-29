/-
Actual smooth compact cutoffs and support-box activation.
The coupled_cutoff_active argument is adapted from OpenAI math, project author
OpenAI, Apache-2.0, commit 1581d4cbdd69a0faf34b2089614fe2a814316a6a,
lean/OAI/NumberTheory/DirichletL/Mellin/LogProfiles.lean, SHA256
ff8735e421a2ee659df15272704206f2d114d7e2a849e8a755d545508f4038be.
The explicit transition product below supplies the cutoff without relying on
that source's unavailable exists_contDiff_support_eq_eq_one_iff API.
Mathlib Analysis/SpecialFunctions/SmoothTransition.lean:
Copyright (c) 2020 Sébastien Gouëzel. All rights reserved.
Authors: Sébastien Gouëzel, Yury Kudryashov.
Mathlib Analysis/Distribution/SchwartzSpace/Basic.lean:
Copyright (c) 2022 Moritz Doll. All rights reserved. Author: Moritz Doll.
Released under Apache-2.0 as described in LICENSE.
Mathematical direction: grwtsk contributors; formal implementation: OpenAI Codex.
-/
import Mathlib.Analysis.SpecialFunctions.SmoothTransition
import Mathlib.Analysis.Distribution.SchwartzSpace.Basic

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CompactCutoff
noncomputable section
open scoped ContDiff SchwartzMap
open Set

/-- A concrete transition cutoff. Smoothness and compactness hold for every real T. -/
noncomputable def compactCutoff (T s : ℝ) : ℂ :=
  ((Real.smoothTransition (T+1-s)*Real.smoothTransition (T+1+s) : ℝ) : ℂ)

lemma compactCutoff_smooth (T : ℝ) : ContDiff ℝ ∞ (compactCutoff T) := by
  exact Complex.ofRealCLM.contDiff.comp
    ((Real.smoothTransition.contDiff.comp (contDiff_const.sub contDiff_id)).mul
      (Real.smoothTransition.contDiff.comp (contDiff_const.add contDiff_id)))

lemma compactCutoff_zero_left (T s : ℝ) (hs : s≤-(T+1)) : compactCutoff T s=0 := by
  have h : T+1+s≤0 := by linarith
  simp [compactCutoff,Real.smoothTransition.zero_of_nonpos h]

lemma compactCutoff_zero_right (T s : ℝ) (hs : T+1≤s) : compactCutoff T s=0 := by
  have h : T+1-s≤0 := by linarith
  simp [compactCutoff,Real.smoothTransition.zero_of_nonpos h]

lemma compactCutoff_tsupport_subset (T : ℝ) :
    tsupport (compactCutoff T)⊆Icc (-(T+1)) (T+1) := by
  apply closure_minimal _ isClosed_Icc
  intro s hs
  change compactCutoff T s≠0 at hs
  constructor
  · by_contra h
    exact hs (compactCutoff_zero_left T s (le_of_lt (lt_of_not_ge h)))
  · by_contra h
    exact hs (compactCutoff_zero_right T s (le_of_lt (lt_of_not_ge h)))

lemma compactCutoff_compact (T : ℝ) : HasCompactSupport (compactCutoff T) :=
  isCompact_Icc.of_isClosed_subset isClosed_closure (compactCutoff_tsupport_subset T)

lemma compactCutoff_one (T s : ℝ) (_hT : 0≤T) (hs : |s|≤T) : compactCutoff T s=1 := by
  have hleft : 1≤T+1-s := by have := (abs_le.mp hs).2; linarith
  have hright : 1≤T+1+s := by have := (abs_le.mp hs).1; linarith
  simp [compactCutoff,Real.smoothTransition.one_of_one_le hleft,
    Real.smoothTransition.one_of_one_le hright]

/-- The actual compact smooth function packaged as a Schwartz function. -/
noncomputable def schwartzCutoff (T : ℝ) : SchwartzMap ℝ ℂ :=
  (compactCutoff_compact T).toSchwartzMap (compactCutoff_smooth T)

@[simp] lemma schwartzCutoff_apply (T s : ℝ) : schwartzCutoff T s=compactCutoff T s := rfl

lemma schwartzCutoff_compact (T : ℝ) : HasCompactSupport (schwartzCutoff T : ℝ→ℂ) :=
  compactCutoff_compact T

lemma schwartzCutoff_one (T s : ℝ) (hT : 0≤T) (hs : |s|≤T) : schwartzCutoff T s=1 :=
  compactCutoff_one T s hT hs

/-- A finite support box activates a cutoff at the weighted sum whenever the product is nonzero. -/
theorem coupled_cutoff_active {ι : Type*} [Fintype ι]
    (W : ι→ℝ→ℂ) (V : ℝ→ℂ) (a y M : ι→ℝ)
    (hwindow : ∀j z,W j z≠0→|z|≤M j)
    (hVone : ∀s,|s|≤∑j : ι,|a j| *M j→V s=1)
    (hprod : (∏j : ι,W j (y j))≠0) : V (∑j : ι,a j*y j)=1 := by
  classical
  apply hVone
  calc
    |∑j : ι,a j*y j|≤∑j : ι,|a j*y j| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑j : ι,|a j| *M j := by
      apply Finset.sum_le_sum
      intro j hj
      have hnonzero : W j (y j)≠0 :=
        (Finset.prod_ne_zero_iff.mp hprod) j (Finset.mem_univ j)
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_left (hwindow j (y j) hnonzero) (abs_nonneg _)

end
end GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CompactCutoff
