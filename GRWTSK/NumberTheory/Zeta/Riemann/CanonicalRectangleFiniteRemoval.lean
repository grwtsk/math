/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.FiniteRemovablePatching
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleArgumentPrinciple
import GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite local removal for the canonical zeta rectangle

The maintained argument-principle path has one qualitative analytic obligation:
extend

  logDeriv riemannZeta - rectanglePrincipalPart N

through the finite set `singularHead N`. This file separates the genuinely local
work from the finite gluing work.

First, the raw remainder is proved analytic at every point of the closed
rectangle outside `singularHead N`. This uses the exact zero/pole inventory of
the admissible rectangle; no sampled nonvanishing assertion is introduced.
Second, the generic finite-patching theorem turns one analytic punctured germ at
each member of `singularHead N` into a single `RectangleRegularExtension`.
Hence no compatibility conditions between distinct local choices are needed:
finiteness provides disjoint neighborhoods, and every germ agrees with the same
raw source away from its center.

The file also derives the missing simple-trivial-zero logarithmic principal part
and records that every singular point already has a source-determined local
coefficient: canonical multiplicity, one, or minus one. What remains is the
finite algebra showing that, after the matching term is removed from the fixed
complete principal part, the selected local germ is the raw rectangle remainder.

No local-removal family, rational count enclosure, numerical source acceptance,
RH result, or prime theorem is constructed here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleFiniteRemoval

open Filter Set MeasureTheory
open scoped Topology BigOperators Interval
open GRWTSK.Analysis.Complex.FiniteRemovablePatching
open GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
open CanonicalZeroDivisor
open AdmissibleRectangles
open TrivialZeroResidues
open CanonicalLogarithmicResidues
open CanonicalRectangleCountIsolation
open CanonicalRectangleCauchyGoursat
open CanonicalRectangleResidueAccounting
open CanonicalRectangleRegularization
open CanonicalRectangleArgumentPrinciple

noncomputable section

/-- The punctured source whose finitely many singular values must be filled. -/
def rawRectangleRegularPart (N : ℕ) (s : ℂ) : ℂ :=
  logDeriv riemannZeta s - rectanglePrincipalPart N s

/-- Exact coordinate membership in the closed Cauchy-Goursat rectangle. -/
theorem mem_closedRectangle_iff (N : ℕ) (s : ℂ) :
    s ∈ closedRectangle N ↔
      leftEdge N ≤ s.re ∧ s.re ≤ 2 ∧
      -contourHeight N ≤ s.im ∧ s.im ≤ contourHeight N := by
  have hleft : leftEdge N ≤ 2 :=
    (leftEdge_neg N).le.trans (by norm_num)
  have hheight : -contourHeight N ≤ contourHeight N := by
    linarith [contourHeight_pos N]
  simp [closedRectangle, uIcc_of_le hleft, uIcc_of_le hheight,
    and_assoc]

/-- Every point of the closed rectangle lies either in its strict interior or
on the maintained boundary. -/
theorem mem_interior_or_boundary_of_mem_closedRectangle
    (N : ℕ) {s : ℂ} (hs : s ∈ closedRectangle N) :
    s ∈ interior N ∨ s ∈ boundary N := by
  rcases (mem_closedRectangle_iff N s).mp hs with ⟨hL, hR, hB, hT⟩
  have hAbs : |s.im| ≤ contourHeight N := abs_le.mpr ⟨hB, hT⟩
  by_cases hLi : leftEdge N < s.re
  · by_cases hRi : s.re < 2
    · by_cases hHi : |s.im| < contourHeight N
      · exact Or.inl ⟨hLi, hRi, hHi⟩
      · right
        exact ⟨hL, hR, hAbs, Or.inr (Or.inr
          (le_antisymm hAbs (le_of_not_gt hHi)))⟩
    · right
      exact ⟨hL, hR, hAbs, Or.inr (Or.inl
        (le_antisymm (le_of_not_gt hRi) hR))⟩
  · right
    exact ⟨hL, hR, hAbs, Or.inl
      (le_antisymm hL (le_of_not_gt hLi))⟩

/-- Any actual zero or the pole in the closed rectangle belongs to the complete
finite singular head. -/
theorem mem_singularHead_of_mem_closedRectangle_of_zero_or_pole
    (N : ℕ) {s : ℂ} (hs : s ∈ closedRectangle N)
    (singular : s = 1 ∨ riemannZeta s = 0) :
    s ∈ singularHead N := by
  rcases mem_interior_or_boundary_of_mem_closedRectangle N hs with hi | hb
  · exact (mem_singularHead_iff N s).mpr ⟨hi, singular⟩
  · rcases singular with rfl | zero
    · exact Finset.mem_insert_self _ _
    · exact False.elim ((zeta_ne_zero_on_boundary N s hb) zero)

/-- Outside the singular head, the actual zeta source is nonzero. -/
theorem zeta_ne_zero_of_mem_closedRectangle_of_not_mem_singularHead
    (N : ℕ) {s : ℂ} (hs : s ∈ closedRectangle N)
    (hnot : s ∉ singularHead N) : riemannZeta s ≠ 0 := by
  intro zero
  exact hnot (mem_singularHead_of_mem_closedRectangle_of_zero_or_pole
    N hs (Or.inr zero))

/-- Outside the singular head, the pole is absent. -/
theorem ne_one_of_not_mem_singularHead
    (N : ℕ) {s : ℂ} (hnot : s ∉ singularHead N) : s ≠ 1 := by
  intro same
  subst s
  exact hnot (Finset.mem_insert_self _ _)

/-- The nontrivial-zero principal-part sum is analytic away from the complete
singular head. -/
theorem nontrivialPrincipalPart_analyticAt_of_not_mem
    (N : ℕ) {s : ℂ} (hnot : s ∉ singularHead N) :
    AnalyticAt ℂ (nontrivialPrincipalPart N) s := by
  classical
  unfold nontrivialPrincipalPart
  refine Finset.analyticAt_fun_sum _ (fun z hz => ?_)
  have hne : s ≠ z.1 := by
    intro same
    apply hnot
    subst s
    apply Finset.mem_insert_of_mem
    apply Finset.mem_union_left
    exact Finset.mem_image.mpr ⟨z, hz, rfl⟩
  exact analyticAt_const.div (analyticAt_id.sub analyticAt_const)
    (sub_ne_zero.mpr hne)

/-- The finite trivial-zero principal-part sum is analytic away from the complete
singular head. -/
theorem trivialPrincipalPart_analyticAt_of_not_mem
    (N : ℕ) {s : ℂ} (hnot : s ∉ singularHead N) :
    AnalyticAt ℂ (trivialPrincipalPart N) s := by
  classical
  unfold trivialPrincipalPart
  refine Finset.analyticAt_fun_sum _ (fun k hk => ?_)
  have hne : s ≠ trivialPoint k := by
    intro same
    apply hnot
    subst s
    apply Finset.mem_insert_of_mem
    apply Finset.mem_union_right
    exact Finset.mem_image.mpr ⟨k, hk, rfl⟩
  simpa only [one_div] using
    analyticAt_const.div (analyticAt_id.sub analyticAt_const)
      (sub_ne_zero.mpr hne)

/-- The pole principal part is analytic away from the singular head. -/
theorem polePrincipalPart_analyticAt_of_not_mem
    (N : ℕ) {s : ℂ} (hnot : s ∉ singularHead N) :
    AnalyticAt ℂ polePrincipalPart s := by
  have hne := ne_one_of_not_mem_singularHead N hnot
  have h := analyticAt_const.div (analyticAt_id.sub analyticAt_const)
    (sub_ne_zero.mpr hne)
  simpa [polePrincipalPart, neg_div, one_div] using h.neg

/-- The complete fixed principal part is analytic at every nonsingular point. -/
theorem rectanglePrincipalPart_analyticAt_of_not_mem
    (N : ℕ) {s : ℂ} (hnot : s ∉ singularHead N) :
    AnalyticAt ℂ (rectanglePrincipalPart N) s := by
  unfold rectanglePrincipalPart
  exact ((nontrivialPrincipalPart_analyticAt_of_not_mem N hnot).add
    (trivialPrincipalPart_analyticAt_of_not_mem N hnot)).add
      (polePrincipalPart_analyticAt_of_not_mem N hnot)

/-- The raw logarithmic remainder is analytic throughout the closed rectangle
away from the finite source-determined singular head. -/
theorem rawRectangleRegularPart_analyticAt_of_not_mem
    (N : ℕ) {s : ℂ} (hs : s ∈ closedRectangle N)
    (hnot : s ∉ singularHead N) :
    AnalyticAt ℂ (rawRectangleRegularPart N) s := by
  have hneOne := ne_one_of_not_mem_singularHead N hnot
  have hneZero :=
    zeta_ne_zero_of_mem_closedRectangle_of_not_mem_singularHead N hs hnot
  have hzeta : AnalyticAt ℂ riemannZeta s :=
    analyticOn_riemannZeta s hneOne
  have hlog : AnalyticAt ℂ (logDeriv riemannZeta) s :=
    hzeta.deriv.div hzeta hneZero
  unfold rawRectangleRegularPart
  exact hlog.sub (rectanglePrincipalPart_analyticAt_of_not_mem N hnot)

/-- At a simple negative-even zero, the logarithmic derivative has the expected
unit principal part and an analytic regular germ. -/
theorem trivial_zero_principal_part (k : ℕ) :
    ∃ A : ℂ → ℂ, AnalyticAt ℂ A (trivialPoint k) ∧
      logDeriv riemannZeta =ᶠ[𝓝[≠] (trivialPoint k)]
        fun s => 1 / (s - trivialPoint k) + A s := by
  have hne : trivialPoint k ≠ 1 := by
    intro same
    have hn := trivialPoint_re_neg k
    rw [same] at hn
    norm_num at hn
  have ha : AnalyticAt ℂ riemannZeta (trivialPoint k) :=
    analyticOn_riemannZeta (trivialPoint k) hne
  have horder : analyticOrderAt riemannZeta (trivialPoint k) = (1 : ℕ∞) :=
    ha.analyticOrderAt_eq_one_of_zero_deriv_ne_zero
      (zeta_trivialPoint k) (deriv_zeta_trivialPoint_ne_zero k)
  obtain ⟨g, hg, hg0, hfactor⟩ :=
    ha.analyticOrderAt_eq_natCast.mp horder
  have hfactor' : riemannZeta =ᶠ[𝓝[≠] (trivialPoint k)]
      fun s => (s - trivialPoint k) ^ (1 : ℤ) * g s := by
    simpa only [zpow_one, smul_eq_mul] using
      hfactor.filter_mono nhdsWithin_le_nhds
  have hp := logDeriv_principal_part riemannZeta g (trivialPoint k) (1 : ℤ)
    hg hg0 hfactor'
  exact ⟨logDeriv g, hp.1, by simpa using hp.2⟩

/-- Every member of the finite singular head has a source-derived local
logarithmic coefficient and analytic regular germ. The three alternatives retain
the exact source identity of the point. -/
theorem singular_point_principal_part (N : ℕ) (a : ℂ)
    (ha : a ∈ singularHead N) :
    ∃ c : ℂ, ∃ A : ℂ → ℂ, AnalyticAt ℂ A a ∧
      logDeriv riemannZeta =ᶠ[𝓝[≠] a]
        fun s => c / (s - a) + A s ∧
      ((a = 1 ∧ c = -1) ∨
        (∃ z : ZeroPoint, z ∈ heightHead (contourHeight N) ∧
          a = z.1 ∧ c = (multiplicity z : ℂ)) ∨
        (∃ k ∈ Finset.range N, a = trivialPoint k ∧ c = 1)) := by
  classical
  rcases Finset.mem_insert.mp ha with rfl | ha
  · obtain ⟨hA, hpart⟩ := zeta_pole_principal_part
    exact ⟨-1, logDeriv riemannZeta₁, hA, hpart,
      Or.inl ⟨rfl, rfl⟩⟩
  rcases Finset.mem_union.mp ha with ha | ha
  · obtain ⟨z, hz, rfl⟩ := Finset.mem_image.mp ha
    obtain ⟨A, hA, hpart⟩ := canonical_zero_principal_part z
    exact ⟨multiplicity z, A, hA, hpart,
      Or.inr (Or.inl ⟨z, hz, rfl, rfl⟩)⟩
  · obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp ha
    obtain ⟨A, hA, hpart⟩ := trivial_zero_principal_part k
    exact ⟨1, A, hA, hpart,
      Or.inr (Or.inr ⟨k, hk, rfl, rfl⟩)⟩

/-- The exact remaining local data: one analytic germ of the RAW remainder at
each member of the finite singular head. -/
abbrev RectangleLocalRemovalData (N : ℕ) :=
  LocalRemovalData (rawRectangleRegularPart N) (singularHead N)

namespace RectangleLocalRemovalData

/-- The open rectangle is contained in the closed rectangle. -/
theorem openRectangle_subset_closedRectangle (N : ℕ) :
    openRectangle N ⊆ closedRectangle N := by
  intro s hs
  rcases (CanonicalRectanglePrincipalPartWinding.mem_openRectangle_iff N s).mp hs with
    ⟨hL, hR, hB, hT⟩
  apply (mem_closedRectangle_iff N s).mpr
  exact ⟨hL.le, hR.le, hB.le, hT.le⟩

/-- Finite local removable germs construct the previously required global
regular rectangle extension. -/
noncomputable def toRegularExtension {N : ℕ}
    (data : RectangleLocalRemovalData N) :
    RectangleRegularExtension N where
  regular := data.filled
  continuous := data.continuousOn_filled (closedRectangle N)
    (fun z hz hnot => rawRectangleRegularPart_analyticAt_of_not_mem N hz hnot)
  differentiable := data.differentiableOn_filled (openRectangle N)
    (fun z hz hnot => rawRectangleRegularPart_analyticAt_of_not_mem N
      (openRectangle_subset_closedRectangle N hz) hnot)
  punctured_agreement := by
    intro s hs hnot
    rw [data.filled_eq_raw hnot]
    unfold rawRectangleRegularPart
    ring

/-- The global normalized argument-principle identity now consumes only finite
local removable germs; no separate compatibility or boundary equation remains. -/
theorem normalizedRectangleIndex_eq_expected {N : ℕ}
    (data : RectangleLocalRemovalData N) :
    normalizedRectangleIndex N = (expectedRectangleIndex N : ℂ) :=
  CanonicalRectangleArgumentPrinciple.normalizedRectangleIndex_eq_expected
    data.toRegularExtension

/-- A source-correct rational interval may be attached immediately after the
finite local removals are supplied. -/
noncomputable def toCanonicalRectangleIndexEnclosure {N : ℕ}
    (data : RectangleLocalRemovalData N)
    (interval : RationalPositiveHeightCountIsolation.RationalCountInterval)
    (containsExpected : interval.Contains (expectedRectangleIndex N)) :
    CanonicalRectangleIndexEnclosure N :=
  CanonicalRectangleArgumentPrinciple.toCanonicalRectangleIndexEnclosure
    data.toRegularExtension interval containsExpected

end RectangleLocalRemovalData

/-- Local logarithmic coefficients alone are not yet the raw remainder germs:
the matching term must also be removed from the COMPLETE fixed principal part. -/
theorem local_coefficient_not_global_removal_fixture (c p A : ℂ) :
    (c + A) - (c + p) = A - p := by ring

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleFiniteRemoval
