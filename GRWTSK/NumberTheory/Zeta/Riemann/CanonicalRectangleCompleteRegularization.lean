/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleFiniteRemoval
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Complete qualitative regularization of the canonical zeta rectangle

The preceding finite-removal module reduced the global analytic obligation to
one raw-remainder germ at each member of `singularHead N`. This file constructs
those germs from the maintained source mathematics.

At a canonical nontrivial zero, the actual analytic multiplicity supplies the
matching logarithmic principal part. At a negative-even zero, the previously
proved nonvanishing derivative supplies a unit principal part. At the pole, the
upstream pole-normalized zeta function supplies coefficient minus one. In each
case the matching term is removed from the COMPLETE fixed principal part, while
all other finitely many inverse terms are analytic at the selected point.

The selected local germ is therefore

  local regular germ - all other principal parts.

Finite patching yields one function continuous on the closed rectangle,
holomorphic on its interior, and equal to
`logDeriv zeta - rectanglePrincipalPart` at every nonsingular point. Together
with the branch-safe unit-pole winding theorem this closes the qualitative
argument-principle identity for every admissible rectangle.

This remains noncomputable: the principal part uses the complete canonical
finite zero head. The result supplies no quantitative integral enclosure, no
integer-isolating report, no validated external zero family, no RH conclusion,
and no prime theorem.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleCompleteRegularization

open Filter Set
open scoped Topology BigOperators
open GRWTSK.Analysis.Complex.FiniteRemovablePatching
open CanonicalZeroDivisor
open AdmissibleRectangles
open TrivialZeroResidues
open CanonicalLogarithmicResidues
open CanonicalRectangleCountIsolation
open CanonicalRectangleResidueAccounting
open CanonicalRectangleRegularization
open CanonicalRectangleArgumentPrinciple
open CanonicalRectangleFiniteRemoval

noncomputable section

/-- A scalar inverse principal part is analytic away from its center. -/
private theorem weightedPole_analyticAt (c a s : ℂ) (hne : s ≠ a) :
    AnalyticAt ℂ (fun w : ℂ => c / (w - a)) s :=
  analyticAt_const.div (analyticAt_id.sub analyticAt_const)
    (sub_ne_zero.mpr hne)

/-- All fixed principal parts except the selected nontrivial zero. -/
def nontrivialOtherPrincipalPart (N : ℕ) (root : ZeroPoint) (s : ℂ) : ℂ :=
  (∑ z ∈ (heightHead (contourHeight N)).erase root,
    (multiplicity z : ℂ) / (s - z.1)) +
  trivialPrincipalPart N s + polePrincipalPart s

/-- All fixed principal parts except the selected negative-even zero. -/
def trivialOtherPrincipalPart (N k : ℕ) (s : ℂ) : ℂ :=
  nontrivialPrincipalPart N s +
  (∑ j ∈ (Finset.range N).erase k, (s - trivialPoint j)⁻¹) +
  polePrincipalPart s

/-- All fixed principal parts except the pole at one. -/
def poleOtherPrincipalPart (N : ℕ) (s : ℂ) : ℂ :=
  nontrivialPrincipalPart N s + trivialPrincipalPart N s

/-- Removing one canonical nontrivial term from the complete finite sum. -/
theorem rectanglePrincipalPart_eq_nontrivial_term_add_other
    (N : ℕ) (root : ZeroPoint)
    (member : root ∈ heightHead (contourHeight N)) (s : ℂ) :
    rectanglePrincipalPart N s =
      (multiplicity root : ℂ) / (s - root.1) +
        nontrivialOtherPrincipalPart N root s := by
  classical
  unfold rectanglePrincipalPart nontrivialPrincipalPart
    nontrivialOtherPrincipalPart
  rw [← Finset.sum_erase_add (heightHead (contourHeight N))
    (fun z : ZeroPoint => (multiplicity z : ℂ) / (s - z.1)) member]
  ring

/-- Removing one selected trivial-zero term from the complete finite sum. -/
theorem rectanglePrincipalPart_eq_trivial_term_add_other
    (N k : ℕ) (member : k ∈ Finset.range N) (s : ℂ) :
    rectanglePrincipalPart N s =
      1 / (s - trivialPoint k) + trivialOtherPrincipalPart N k s := by
  classical
  unfold rectanglePrincipalPart trivialPrincipalPart trivialOtherPrincipalPart
  rw [← Finset.sum_erase_add (Finset.range N)
    (fun j : ℕ => (s - trivialPoint j)⁻¹) member]
  simp only [one_div]
  ring

/-- Separating the pole term from the complete finite principal part. -/
theorem rectanglePrincipalPart_eq_pole_term_add_other (N : ℕ) (s : ℂ) :
    rectanglePrincipalPart N s =
      (-1 : ℂ) / (s - 1) + poleOtherPrincipalPart N s := by
  unfold rectanglePrincipalPart polePrincipalPart poleOtherPrincipalPart
  simp only [neg_div, one_div]
  ring

/-- The nontrivial principal parts other than `root` are analytic at `root`. -/
private theorem erased_nontrivial_sum_analyticAt
    (N : ℕ) (root : ZeroPoint) :
    AnalyticAt ℂ
      (fun s : ℂ => ∑ z ∈ (heightHead (contourHeight N)).erase root,
        (multiplicity z : ℂ) / (s - z.1)) root.1 := by
  classical
  refine Finset.analyticAt_fun_sum _ (fun z hz => ?_)
  have different : z ≠ root := Finset.ne_of_mem_erase hz
  apply weightedPole_analyticAt
  intro same
  exact different (Subtype.ext same.symm)

/-- Negative-even principal parts are analytic at a nontrivial zero. -/
private theorem trivial_sum_analyticAt_nontrivial
    (N : ℕ) (root : ZeroPoint) :
    AnalyticAt ℂ (trivialPrincipalPart N) root.1 := by
  classical
  unfold trivialPrincipalPart
  refine Finset.analyticAt_fun_sum _ (fun k _ => ?_)
  have different : root.1 ≠ trivialPoint k := by
    intro same
    apply trivialPoint_not_nontrivial k
    simpa [same] using root.2
  simpa only [one_div] using weightedPole_analyticAt 1 (trivialPoint k) root.1 different

/-- The pole principal part is analytic at every nontrivial zero. -/
private theorem pole_analyticAt_nontrivial (root : ZeroPoint) :
    AnalyticAt ℂ polePrincipalPart root.1 := by
  have h := weightedPole_analyticAt (-1) 1 root.1 root.2.2.2
  simpa [polePrincipalPart, neg_div, one_div] using h

/-- Every fixed principal part other than the selected nontrivial term is
analytic at that zero. -/
theorem nontrivialOtherPrincipalPart_analyticAt
    (N : ℕ) (root : ZeroPoint) :
    AnalyticAt ℂ (nontrivialOtherPrincipalPart N root) root.1 := by
  unfold nontrivialOtherPrincipalPart
  exact ((erased_nontrivial_sum_analyticAt N root).add
    (trivial_sum_analyticAt_nontrivial N root)).add
      (pole_analyticAt_nontrivial root)

/-- Nontrivial-zero principal parts are analytic at a negative-even point. -/
private theorem nontrivial_sum_analyticAt_trivial
    (N k : ℕ) : AnalyticAt ℂ (nontrivialPrincipalPart N) (trivialPoint k) := by
  classical
  unfold nontrivialPrincipalPart
  refine Finset.analyticAt_fun_sum _ (fun z _ => ?_)
  have different : trivialPoint k ≠ z.1 := by
    intro same
    apply trivialPoint_not_nontrivial k
    simpa [same] using z.2
  exact weightedPole_analyticAt (multiplicity z) z.1 (trivialPoint k) different

/-- The remaining selected-range trivial terms are analytic at `trivialPoint k`. -/
private theorem erased_trivial_sum_analyticAt
    (N k : ℕ) :
    AnalyticAt ℂ
      (fun s : ℂ => ∑ j ∈ (Finset.range N).erase k,
        (s - trivialPoint j)⁻¹) (trivialPoint k) := by
  classical
  refine Finset.analyticAt_fun_sum _ (fun j hj => ?_)
  have differentIndex : j ≠ k := Finset.ne_of_mem_erase hj
  have differentPoint : trivialPoint k ≠ trivialPoint j := by
    intro same
    exact differentIndex (trivialPoint_injective same.symm)
  simpa only [one_div] using
    weightedPole_analyticAt 1 (trivialPoint j) (trivialPoint k) differentPoint

/-- The pole term is analytic at every negative-even point. -/
private theorem pole_analyticAt_trivial (k : ℕ) :
    AnalyticAt ℂ polePrincipalPart (trivialPoint k) := by
  have different : trivialPoint k ≠ 1 := by
    intro same
    have hn := trivialPoint_re_neg k
    rw [same] at hn
    norm_num at hn
  have h := weightedPole_analyticAt (-1) 1 (trivialPoint k) different
  simpa [polePrincipalPart, neg_div, one_div] using h

/-- Every fixed principal part other than the selected trivial term is analytic
at that negative-even zero. -/
theorem trivialOtherPrincipalPart_analyticAt (N k : ℕ) :
    AnalyticAt ℂ (trivialOtherPrincipalPart N k) (trivialPoint k) := by
  unfold trivialOtherPrincipalPart
  exact ((nontrivial_sum_analyticAt_trivial N k).add
    (erased_trivial_sum_analyticAt N k)).add
      (pole_analyticAt_trivial k)

/-- Nontrivial-zero terms are analytic at the pole. -/
private theorem nontrivial_sum_analyticAt_one (N : ℕ) :
    AnalyticAt ℂ (nontrivialPrincipalPart N) 1 := by
  classical
  unfold nontrivialPrincipalPart
  refine Finset.analyticAt_fun_sum _ (fun z _ => ?_)
  exact weightedPole_analyticAt (multiplicity z) z.1 1 z.2.2.2.symm

/-- Negative-even terms are analytic at the pole. -/
private theorem trivial_sum_analyticAt_one (N : ℕ) :
    AnalyticAt ℂ (trivialPrincipalPart N) 1 := by
  classical
  unfold trivialPrincipalPart
  refine Finset.analyticAt_fun_sum _ (fun k _ => ?_)
  have different : (1 : ℂ) ≠ trivialPoint k := by
    intro same
    have hn := trivialPoint_re_neg k
    rw [← same] at hn
    norm_num at hn
  simpa only [one_div] using weightedPole_analyticAt 1 (trivialPoint k) 1 different

/-- All fixed principal parts other than the pole term are analytic at one. -/
theorem poleOtherPrincipalPart_analyticAt (N : ℕ) :
    AnalyticAt ℂ (poleOtherPrincipalPart N) 1 := by
  unfold poleOtherPrincipalPart
  exact (nontrivial_sum_analyticAt_one N).add (trivial_sum_analyticAt_one N)

/-- Source-derived raw-remainder germ at a canonical nontrivial zero. -/
theorem exists_nontrivial_raw_germ
    (N : ℕ) (root : ZeroPoint)
    (member : root ∈ heightHead (contourHeight N)) :
    ∃ G : ℂ → ℂ, AnalyticAt ℂ G root.1 ∧
      rawRectangleRegularPart N =ᶠ[𝓝[≠] root.1] G := by
  obtain ⟨A, hA, hpart⟩ := canonical_zero_principal_part root
  let G := fun s => A s - nontrivialOtherPrincipalPart N root s
  refine ⟨G, hA.sub (nontrivialOtherPrincipalPart_analyticAt N root), ?_⟩
  filter_upwards [hpart] with s hs
  rw [rawRectangleRegularPart,
    rectanglePrincipalPart_eq_nontrivial_term_add_other N root member s, hs]
  ring

/-- Source-derived raw-remainder germ at a selected negative-even zero. -/
theorem exists_trivial_raw_germ
    (N k : ℕ) (member : k ∈ Finset.range N) :
    ∃ G : ℂ → ℂ, AnalyticAt ℂ G (trivialPoint k) ∧
      rawRectangleRegularPart N =ᶠ[𝓝[≠] (trivialPoint k)] G := by
  obtain ⟨A, hA, hpart⟩ := trivial_zero_principal_part k
  let G := fun s => A s - trivialOtherPrincipalPart N k s
  refine ⟨G, hA.sub (trivialOtherPrincipalPart_analyticAt N k), ?_⟩
  filter_upwards [hpart] with s hs
  rw [rawRectangleRegularPart,
    rectanglePrincipalPart_eq_trivial_term_add_other N k member s, hs]
  ring

/-- Source-derived raw-remainder germ at the pole. -/
theorem exists_pole_raw_germ (N : ℕ) :
    ∃ G : ℂ → ℂ, AnalyticAt ℂ G 1 ∧
      rawRectangleRegularPart N =ᶠ[𝓝[≠] (1 : ℂ)] G := by
  obtain ⟨hA, hpart⟩ := zeta_pole_principal_part
  let G := fun s => logDeriv riemannZeta₁ s - poleOtherPrincipalPart N s
  refine ⟨G, hA.sub (poleOtherPrincipalPart_analyticAt N), ?_⟩
  filter_upwards [hpart] with s hs
  rw [rawRectangleRegularPart,
    rectanglePrincipalPart_eq_pole_term_add_other N s, hs]
  ring

/-- Every member of the complete finite singular head has an analytic germ of
the actual raw rectangle remainder. -/
theorem exists_raw_germ_at_singular
    (N : ℕ) (a : ℂ) (member : a ∈ singularHead N) :
    ∃ G : ℂ → ℂ, AnalyticAt ℂ G a ∧
      rawRectangleRegularPart N =ᶠ[𝓝[≠] a] G := by
  classical
  rcases Finset.mem_insert.mp member with rfl | member
  · exact exists_pole_raw_germ N
  rcases Finset.mem_union.mp member with member | member
  · obtain ⟨root, rootMember, rfl⟩ := Finset.mem_image.mp member
    exact exists_nontrivial_raw_germ N root rootMember
  · obtain ⟨k, kMember, rfl⟩ := Finset.mem_image.mp member
    exact exists_trivial_raw_germ N k kMember

/-- Noncomputably choose one source-derived local raw-remainder germ at each
singular point. No family of zeros is newly selected: `singularHead` is already
the maintained complete finite source set. -/
def chosenRawGerm (N : ℕ) (a : ℂ) : ℂ → ℂ := by
  classical
  exact if h : a ∈ singularHead N then
    Classical.choose (exists_raw_germ_at_singular N a h)
  else fun _ => 0

/-- The chosen germ is analytic at every singular point. -/
theorem chosenRawGerm_analytic (N : ℕ) (a : ℂ)
    (member : a ∈ singularHead N) :
    AnalyticAt ℂ (chosenRawGerm N a) a := by
  classical
  simp only [chosenRawGerm, dif_pos member]
  exact (Classical.choose_spec (exists_raw_germ_at_singular N a member)).1

/-- The chosen germ agrees with the raw remainder on the punctured neighborhood. -/
theorem chosenRawGerm_agrees (N : ℕ) (a : ℂ)
    (member : a ∈ singularHead N) :
    rawRectangleRegularPart N =ᶠ[𝓝[≠] a] chosenRawGerm N a := by
  classical
  simp only [chosenRawGerm, dif_pos member]
  exact (Classical.choose_spec (exists_raw_germ_at_singular N a member)).2

/-- Complete finite local-removal data, constructed from the actual zeta source. -/
def rectangleLocalRemovalData (N : ℕ) : RectangleLocalRemovalData N where
  germ := chosenRawGerm N
  germ_analytic := chosenRawGerm_analytic N
  germ_agrees := chosenRawGerm_agrees N

/-- The actual global regular extension of the pole-subtracted logarithmic
derivative on the maintained rectangle. -/
def rectangleRegularExtension (N : ℕ) : RectangleRegularExtension N :=
  (rectangleLocalRemovalData N).toRegularExtension

/-- The qualitative argument-principle identity now has no remaining analytic or
geometric certificate premise. -/
theorem normalizedRectangleIndex_eq_expected (N : ℕ) :
    normalizedRectangleIndex N = (expectedRectangleIndex N : ℂ) :=
  CanonicalRectangleArgumentPrinciple.normalizedRectangleIndex_eq_expected
    (rectangleRegularExtension N)

/-- Attach any source-correct rational interval containing the fixed rectangle
index. Quantitative construction of such an interval remains separate. -/
noncomputable def toCanonicalRectangleIndexEnclosure
    (N : ℕ)
    (interval : RationalPositiveHeightCountIsolation.RationalCountInterval)
    (containsExpected : interval.Contains (expectedRectangleIndex N)) :
    CanonicalRectangleIndexEnclosure N :=
  CanonicalRectangleArgumentPrinciple.toCanonicalRectangleIndexEnclosure
    (rectangleRegularExtension N) interval containsExpected

/-- The construction does not identify the isolated count without a strict
rational interval certificate. -/
theorem wide_interval_still_needs_isolation_fixture :
    ¬ RationalPositiveHeightCountIsolation.isolates
      { lower := 14, upper := 15 } 14 := by
  norm_num [RationalPositiveHeightCountIsolation.isolates]

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleCompleteRegularization
