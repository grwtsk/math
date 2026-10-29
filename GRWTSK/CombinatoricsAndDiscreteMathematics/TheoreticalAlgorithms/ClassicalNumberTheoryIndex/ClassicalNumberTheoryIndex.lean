import Folder.Rebuild.NumberTheory.Mobius
import Folder.Rebuild.NumberTheory.EulerPhi
import Folder.Rebuild.NumberTheory.SigmaTau
import Folder.Rebuild.NumberTheory.FiniteEulerLogDerivative
import Folder.Rebuild.Exposition.AnchorIndex

/-!
# Folder.Rebuild.Exposition.ClassicalNumberTheoryIndex

Exposition index for the checked finite multiplicative-number-theory layer.
-/

namespace Folder
namespace Rebuild
namespace Exposition

def mobiusInversionAnchor : ClassicalAnchor where
  shortName := "Moebius inversion"
  paperOrBook := "Classical finite divisor-sum theory"
  theoremLabel := "mobius_inversion"
  mathematicalContent :=
    "Finite divisor-sum inversion is checked locally for positive natural inputs."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def eulerPhiAnchor : ClassicalAnchor where
  shortName := "Euler phi"
  paperOrBook := "Classical elementary number theory"
  theoremLabel := "eulerPhi_prime_power"
  mathematicalContent :=
    "Prime and prime-power formulas for Euler phi are repackaged as checked rebuild theorems."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.mathlibInternal

def divisorProblemAnchor : ClassicalAnchor where
  shortName := "Divisor functions"
  paperOrBook := "Classical divisor-sum theory"
  theoremLabel := "tau_prime / sigma_prime"
  mathematicalContent :=
    "The finite tau and sigma functions have checked prime and prime-power identities."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def finiteEulerProductAnchor : ClassicalAnchor where
  shortName := "Finite Euler product"
  paperOrBook := "Finite algebraic Euler-product scaffold"
  theoremLabel := "finite_geometric_euler_factor_mul"
  mathematicalContent :=
    "Finite Euler factors satisfy checked truncated geometric identities."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def analyticEulerProductAnchor : ClassicalAnchor where
  shortName := "Analytic Euler product"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "EulerProductForZetaHalfPlaneTarget"
  mathematicalContent :=
    "Infinite Euler-product convergence remains a theorem target, not a proof input."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def pntClassicalRouteAnchor : ClassicalAnchor where
  shortName := "Classical prime asymptotic route"
  paperOrBook := "Hadamard, de la Vallee Poussin, and Tauberian references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The analytic route through continuation, boundary nonvanishing, and Tauberian input remains a target."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def classicalNumberTheoryAnchors : List ClassicalAnchor :=
  [ mobiusInversionAnchor
  , eulerPhiAnchor
  , divisorProblemAnchor
  , finiteEulerProductAnchor
  , analyticEulerProductAnchor
  , pntClassicalRouteAnchor
  ]

end Exposition
end Rebuild
end Folder
