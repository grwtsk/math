/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ActualMertensNaturalDiagonalBudget

set_option autoImplicit false
noncomputable section

/-! Exact coefficient-diagonal gcd coordinate collapse, with no multiplicity.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensGcdDiagonalCoordinates
open ActualMertensGcdSignedMass ActualMertensNaturalGcdKernel
open GRWTSK.NumberTheory.Moebius.MobiusBoundedGcdEquivalence
open GRWTSK.RiemannHypothesis.CCC

def GcdDiagonal (N : ℕ) := {q : GcdTriples N // q.val.2.1=q.val.2.2}
def PositiveSourceLabels (N : ℕ) := {r : ℕ // 0<r ∧ r≤N}

theorem diagonal_quotients_one (N : ℕ) (q : GcdTriples N)
    (hd : q.val.2.1=q.val.2.2) : q.val.2.1=1 ∧ q.val.2.2=1 := by
  have hc := q.property.2.2.2.1.gcd_eq_one
  rw [hd,Nat.gcd_self] at hc
  exact ⟨hd.trans hc,hc⟩

def diagonalSourceEquiv (N : ℕ) : GcdDiagonal N ≃ PositiveSourceLabels N where
  toFun q := ⟨q.val.val.1,q.val.property.1,by
    have ha := (diagonal_quotients_one N q.val q.property).1
    simpa only [ha,mul_one] using q.val.property.2.2.2.2.1⟩
  invFun r := ⟨⟨(r.val,(1,1)),by
    exact ⟨r.property.1,by norm_num,by norm_num,by simp,
      by simpa using r.property.2,by simpa using r.property.2⟩⟩,rfl⟩
  left_inv q := by
    obtain ⟨ha,hb⟩ := diagonal_quotients_one N q.val q.property
    apply Subtype.ext
    apply Subtype.ext
    exact Prod.ext rfl (Prod.ext ha.symm hb.symm)
  right_inv r := by apply Subtype.ext; rfl

theorem actual_diagonal_atom (N : ℕ) [NeZero N] (e : ZMod N ≃ Fin N)
    (q : GcdTriples N) (hd : q.val.2.1=q.val.2.2) :
    actualGcdAtom N e q=moebiusReal q.val.1^2*
      actualNaturalKernel N e q.val.1 q.val.1 := by
  obtain ⟨ha,hb⟩ := diagonal_quotients_one N q hd
  simp [actualGcdAtom,ha,hb,moebiusReal]

/- Every actual coefficient diagonal term occurs exactly once as (g,1,1),
with 1≤g≤N. Finite sum transport now connects this packet to the natural
harmonic budget. Uniform off-diagonal domination remains unsupplied. -/
end GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensGcdDiagonalCoordinates
