/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachBoundarySourceConvolution

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual prime-mask signed boundary identity. Every prime condition,
natural subtraction and cutoff remains literal. No signed arithmetic
margin is supplied. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachBoundarySignedPrimeMasks
open GoldbachWeighted GoldbachFullCutoffBoundarySplit GoldbachBoundarySourceConvolution

def primeMask (n : ℕ) : ℝ := if Nat.Prime n then 1 else 0
def primeSign (n : ℕ) : ℝ := 2*primeMask n-1

def boundaryLogAtom (X N p : ℕ) : ℝ :=
  if X<p then Real.log (p : ℝ)*Real.log ((N-p : ℕ) : ℝ) else 0

theorem actual_boundary_signed_identity (X N : ℕ) :
    4*firstBoundaryMass X N = ∑ p ∈ Finset.range (N+1),
      boundaryLogAtom X N p*
        (1+primeSign p+primeSign (N-p)+primeSign p*primeSign (N-p)) := by
  rw [first_boundary_exact_convolution,Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro p _
  by_cases hX : X<p <;> by_cases hp : Nat.Prime p <;> by_cases hq : Nat.Prime (N-p)
  all_goals simp [primeSign,primeMask,boundaryLogAtom,primeLogWeight,hX,hp,hq] <;> ring

theorem actual_boundary_positive_iff_signed_margin (X N : ℕ) :
    0<firstBoundaryMass X N ↔
      0<(∑ p ∈ Finset.range (N+1), boundaryLogAtom X N p*
        (1+primeSign p+primeSign (N-p)+primeSign p*primeSign (N-p))) := by
  rw [← actual_boundary_signed_identity]
  constructor <;> intro h <;> linarith

/- These exact masks are not independent random signs. A positive signed
margin still requires an actual target-specific arithmetic supplier. -/
end GRWTSK.NumberTheory.Primes.GoldbachBoundarySignedPrimeMasks
