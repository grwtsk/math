/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreeTwistBlockEnergy
import Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar

set_option autoImplicit false
noncomputable section

/-! Literal cyclic pullback and twist; the pullback is not declared a
primitive character of the larger modulus. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingModThreeTwistSource
open DirichletModThreeQuadraticConstruction DirichletModThreeExactEigenvector
variable (N : ℕ) [NeZero N] (h3 : 3 ∣ N)

def residueReduction : ZMod N →+* ZMod 3 := ZMod.castHom h3 (ZMod 3)
def pulledCharacter (j : ZMod N) : ℂ := modThreeQuadratic (residueReduction N h3 j)
def twistedCharacter (k j : ZMod N) : ℂ := ZMod.stdAddChar (k*j)*pulledCharacter N h3 j

theorem actual_pulled_neighbor (j : ZMod N) :
    pulledCharacter N h3 (j+1)+pulledCharacter N h3 (j-1) = -pulledCharacter N h3 j := by
  simpa [pulledCharacter,map_add,map_sub] using
    genuine_mod_three_neighbor modThreeQuadratic modThreeQuadratic_one
      modThreeQuadratic_two (residueReduction N h3 j)

theorem actual_twisted_neighbor (k j : ZMod N) :
    twistedCharacter N h3 k (j+1)+twistedCharacter N h3 k (j-1) =
      ZMod.stdAddChar (k*j)*
        (ZMod.stdAddChar k*pulledCharacter N h3 (j+1)+
         ZMod.stdAddChar (-k)*pulledCharacter N h3 (j-1)) := by
  have hp : ZMod.stdAddChar (k*(j+1))=
      ZMod.stdAddChar (k*j)*ZMod.stdAddChar k := by
    rw [mul_add,mul_one,AddChar.map_add_eq_mul]
  have hm : ZMod.stdAddChar (k*(j-1))=
      ZMod.stdAddChar (k*j)*ZMod.stdAddChar (-k) := by
    rw [mul_sub,mul_one,sub_eq_add_neg,AddChar.map_add_eq_mul]
  unfold twistedCharacter
  rw [hp,hm]
  ring

/- N=3M is supplied by h3, and the genuine finite cyclic phase eliminates
seam ambiguity. The next bridge must turn the two phases into cosine and
sine components and identify the residue-fiber cardinalities for full norm
accounting. No analytic-zero residual supplier is provided. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingModThreeTwistSource
