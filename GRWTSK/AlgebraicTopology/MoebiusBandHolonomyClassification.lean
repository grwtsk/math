/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.AlgebraicTopology.MoebiusBandGaugePacking
import Mathlib.Tactic

/-!
# Complete finite orientation-holonomy classification

The first Stiefel-Whitney obstruction of a topological Moebius band has a
finite cellular shadow: a closed cyclic list of transition parities in
ZMod 2. The existing source proved invariance under a closed gauge.

This module supplies the converse: two finite cyclic transition lists
are related by a closed vertex gauge *if and only if* their holonomies
agree. A gauge is constructed explicitly by prefix summation.

This is a finite cellular cocycle statement. Identifying the cocycle
with w₁ of a genuine embedded manifold, and the deleted-product
obstruction required for Frolkina-Melikhov, remain separate obligations.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.MoebiusBandHolonomyClassification

open GRWTSK.Topology.AlgebraicTopology.MoebiusBandGaugePacking

/-- Prefix-difference gauge taking transition list w to v. -/
def gaugeBetween (w v : ℕ → ZMod 2) (i : ℕ) : ZMod 2 :=
  parityHolonomy (fun k => w k - v k) i

/-- Its successor increment is exactly the prescribed edge difference. -/
theorem gaugeBetween_succ (w v : ℕ → ZMod 2) (i : ℕ) :
    gaugeBetween w v (i + 1) = gaugeBetween w v i + (w i - v i) := by
  simp [gaugeBetween, parityHolonomy, Finset.sum_range_succ]

/-- The constructed gauge transports every original edge, not merely
those inside a chosen finite cutoff. -/
theorem gaugeBetween_transports (w v : ℕ → ZMod 2) (i : ℕ) :
    transportEdge w (gaugeBetween w v) i = v i := by
  unfold transportEdge
  rw [gaugeBetween_succ]
  ring

/-- The gauge's closing defect is the exact difference of holonomies. -/
theorem gaugeBetween_closing_defect (w v : ℕ → ZMod 2) (n : ℕ) :
    gaugeBetween w v n = parityHolonomy w n - parityHolonomy v n := by
  simp [gaugeBetween, parityHolonomy, Finset.sum_sub_distrib]

/-- When the source and target have equal holonomy, the constructed
vertex gauge is genuinely closed. -/
theorem gaugeBetween_closed (w v : ℕ → ZMod 2) (n : ℕ)
    (h : parityHolonomy w n = parityHolonomy v n) :
    gaugeBetween w v n = gaugeBetween w v 0 := by
  rw [gaugeBetween_closing_defect, h]
  simp [gaugeBetween, parityHolonomy]

/-- Classification: two finite cellular orientation systems are gauge-
equivalent around their closed loop exactly when their Z/2 holonomy
classes agree. The quantifiers contain no geometric embedding premise. -/
theorem closed_gauge_exists_iff_holonomy_eq
    (w v : ℕ → ZMod 2) (n : ℕ) :
    (∃ g : ℕ → ZMod 2,
      g n = g 0 ∧
      ∀ i ∈ Finset.range n, transportEdge w g i = v i) ↔
      parityHolonomy w n = parityHolonomy v n := by
  constructor
  · rintro ⟨g, hclosed, hedge⟩
    have htransport := closed_holonomy_invariant w g n hclosed
    have hequal : parityHolonomy (transportEdge w g) n =
        parityHolonomy v n := by
      unfold parityHolonomy
      apply Finset.sum_congr rfl
      intro i hi
      exact hedge i hi
    exact htransport.symm.trans hequal
  · intro hhol
    refine ⟨gaugeBetween w v, gaugeBetween_closed w v n hhol, ?_⟩
    intro i _
    exact gaugeBetween_transports w v i

/-- A finite cyclic orientation transition list is gauge-trivial
if and only if its total holonomy is zero. -/
theorem gauge_trivial_iff_even_holonomy (w : ℕ → ZMod 2) (n : ℕ) :
    (∃ g : ℕ → ZMod 2,
      g n = g 0 ∧
      ∀ i ∈ Finset.range n, transportEdge w g i = 0) ↔
      parityHolonomy w n = 0 := by
  simpa [parityHolonomy] using
    (closed_gauge_exists_iff_holonomy_eq w (fun _ => (0 : ZMod 2)) n)

/-- An odd loop cannot be gauge equivalent to an even loop. -/
theorem odd_loop_not_equivalent_to_even_loop
    (w v : ℕ → ZMod 2) (n : ℕ)
    (hw : parityHolonomy w n = 1)
    (hv : parityHolonomy v n = 0) :
    ¬ ∃ g : ℕ → ZMod 2,
      g n = g 0 ∧
      ∀ i ∈ Finset.range n, transportEdge w g i = v i := by
  intro hex
  have h := (closed_gauge_exists_iff_holonomy_eq w v n).mp hex
  rw [hw, hv] at h
  norm_num at h

end GRWTSK.Topology.AlgebraicTopology.MoebiusBandHolonomyClassification
