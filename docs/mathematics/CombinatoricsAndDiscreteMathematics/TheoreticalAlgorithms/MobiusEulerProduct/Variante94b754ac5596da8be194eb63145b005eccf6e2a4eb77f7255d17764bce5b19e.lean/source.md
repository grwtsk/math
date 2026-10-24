# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MobiusEulerProduct.Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7a51724aa6e28e1cd249456d4f0a61772563171` · SHA-256 `e94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Arithmetic.FinitePhaseBitmatrixAlgebra
import Think.Targets.Statements
import Think.Targets.ConjectureLedger

set_option autoImplicit false

namespace Think.Arithmetic.MobiusEulerProduct

/-
Finite Mobius/Euler-product bridge surface.

The finite product over a listed prime window expands by choosing either `1`
or `-p^{-s}` from each listed prime. This file records that finite
square-free coefficient rule and keeps the infinite Euler product, PNT, and RH
arrows as analytic residues rather than finite witness authority.
-/

structure PrimeWindow where
  primes : List Nat
  certifiedPrimeWindow : Bool
deriving Repr, DecidableEq

structure SquarefreeSupport where
  n : Nat
  primeFactorsInWindow : Bool
  squarefree : Bool
  factorCount : Nat
deriving Repr, DecidableEq

inductive FiniteMobiusCoefficient : Type
  | plusOne
  | minusOne
  | zero
deriving Repr, DecidableEq

def coefficientFromFactorCount (factorCount : Nat) :
    FiniteMobiusCoefficient :=
  if factorCount % 2 = 0 then
    FiniteMobiusCoefficient.plusOne
  else
    FiniteMobiusCoefficient.minusOne

def finiteMobiusCoefficientFromSupport
    (support : SquarefreeSupport) : FiniteMobiusCoefficient :=
  if support.primeFactorsInWindow then
    if support.squarefree then
      coefficientFromFactorCount support.factorCount
    else
      FiniteMobiusCoefficient.zero
  else
    FiniteMobiusCoefficient.zero

def finiteSubproductsWithFactorCount : List Nat → List (Nat × Nat)
  | [] => [(1, 0)]
  | p :: ps =>
      let rest := finiteSubproductsWithFactorCount ps
      rest ++ rest.map (fun term => (p * term.1, term.2 + 1))

def findSubproductFactorCount :
    List (Nat × Nat) → Nat → Option Nat
  | [], _ => none
  | term :: rest, n =>
      if term.1 = n then
        some term.2
      else
        findSubproductFactorCount rest n

def finiteMobiusCoefficient
    (window : PrimeWindow) (n : Nat) : FiniteMobiusCoefficient :=
  match
    findSubproductFactorCount
      (finiteSubproductsWithFactorCount window.primes) n with
  | some factorCount => coefficientFromFactorCount factorCount
  | none => FiniteMobiusCoefficient.zero

inductive EulerProductBridgeResidue : Type
  | infiniteProductConvergenceNotProved
  | analyticContinuationNotProved
  | pntBridgeNotProved
  | rhEquivalenceNotProved
deriving Repr, DecidableEq

structure MobiusEulerProductSurface where
  window : PrimeWindow
  finiteCoefficientLaw : Bool
  infiniteEulerProductClaim : Bool
  pntClaim : Bool
  rhClaim : Bool
  residues : List EulerProductBridgeResidue
deriving Repr, DecidableEq

def defaultPrimeWindow : PrimeWindow :=
  { primes := [2, 3, 5]
    certifiedPrimeWindow := true }

def defaultEulerProductBridgeResidues : List EulerProductBridgeResidue :=
  [ EulerProductBridgeResidue.infiniteProductConvergenceNotProved
  , EulerProductBridgeResidue.analyticContinuationNotProved
  , EulerProductBridgeResidue.pntBridgeNotProved
  , EulerProductBridgeResidue.rhEquivalenceNotProved
  ]

def defaultMobiusEulerProductSurface : MobiusEulerProductSurface :=
  { window := defaultPrimeWindow
    finiteCoefficientLaw := true
    infiniteEulerProductClaim := false
    pntClaim := false
    rhClaim := false
    residues := defaultEulerProductBridgeResidues }

theorem finite_squarefree_even_factor_count_coeff_plus
    (window : PrimeWindow) (n factorCount : Nat)
    (hTerm :
      findSubproductFactorCount
        (finiteSubproductsWithFactorCount window.primes) n =
          some factorCount)
    (hEven : factorCount % 2 = 0) :
    finiteMobiusCoefficient window n =
      FiniteMobiusCoefficient.plusOne := by
  simp [finiteMobiusCoefficient, hTerm, coefficientFromFactorCount, hEven]

theorem finite_squarefree_odd_factor_count_coeff_minus
    (window : PrimeWindow) (n factorCount : Nat)
    (hTerm :
      findSubproductFactorCount
        (finiteSubproductsWithFactorCount window.primes) n =
          some factorCount)
    (hOdd : factorCount % 2 = 1) :
    finiteMobiusCoefficient window n =
      FiniteMobiusCoefficient.minusOne := by
  have hNotEven : factorCount % 2 ≠ 0 := by
    intro hEven
    rw [hEven] at hOdd
    contradiction
  simp [finiteMobiusCoefficient, hTerm, coefficientFromFactorCount, hNotEven]

theorem finite_nonsquarefree_coeff_zero
    (window : PrimeWindow) (n : Nat)
    (hNone :
      findSubproductFactorCount
        (finiteSubproductsWithFactorCount window.primes) n = none) :
    finiteMobiusCoefficient window n =
      FiniteMobiusCoefficient.zero := by
  simp [finiteMobiusCoefficient, hNone]

theorem support_squarefree_even_factor_count_coeff_plus
    (support : SquarefreeSupport)
    (hWindow : support.primeFactorsInWindow = true)
    (hSquarefree : support.squarefree = true)
    (hEven : support.factorCount % 2 = 0) :
    finiteMobiusCoefficientFromSupport support =
      FiniteMobiusCoefficient.plusOne := by
  simp
    [ finiteMobiusCoefficientFromSupport
    , coefficientFromFactorCount
    , hWindow
    , hSquarefree
    , hEven
    ]

theorem support_squarefree_odd_factor_count_coeff_minus
    (support : SquarefreeSupport)
    (hWindow : support.primeFactorsInWindow = true)
    (hSquarefree : support.squarefree = true)
    (hOdd : support.factorCount % 2 = 1) :
    finiteMobiusCoefficientFromSupport support =
      FiniteMobiusCoefficient.minusOne := by
  have hNotEven : support.factorCount % 2 ≠ 0 := by
    intro hEven
    rw [hEven] at hOdd
    contradiction
  simp
    [ finiteMobiusCoefficientFromSupport
    , coefficientFromFactorCount
    , hWindow
    , hSquarefree
    , hNotEven
    ]

theorem support_nonsquarefree_coeff_zero
    (support : SquarefreeSupport)
    (hSquarefree : support.squarefree = false) :
    finiteMobiusCoefficientFromSupport support =
      FiniteMobiusCoefficient.zero := by
  cases hWindow : support.primeFactorsInWindow <;>
    simp [finiteMobiusCoefficientFromSupport, hWindow, hSquarefree]

theorem support_out_of_window_coeff_zero
    (support : SquarefreeSupport)
    (hWindow : support.primeFactorsInWindow = false) :
    finiteMobiusCoefficientFromSupport support =
      FiniteMobiusCoefficient.zero := by
  simp [finiteMobiusCoefficientFromSupport, hWindow]

theorem default_surface_has_finite_coefficient_law :
    defaultMobiusEulerProductSurface.finiteCoefficientLaw = true := by
  rfl

theorem default_surface_denies_infinite_euler_product_claim :
    defaultMobiusEulerProductSurface.infiniteEulerProductClaim = false := by
  rfl

theorem default_surface_denies_pnt_claim :
    defaultMobiusEulerProductSurface.pntClaim = false := by
  rfl

theorem default_surface_denies_rh_claim :
    defaultMobiusEulerProductSurface.rhClaim = false := by
  rfl

theorem default_surface_retains_analytic_residue :
    EulerProductBridgeResidue.infiniteProductConvergenceNotProved ∈
        defaultMobiusEulerProductSurface.residues ∧
      EulerProductBridgeResidue.analyticContinuationNotProved ∈
        defaultMobiusEulerProductSurface.residues ∧
      EulerProductBridgeResidue.pntBridgeNotProved ∈
        defaultMobiusEulerProductSurface.residues ∧
      EulerProductBridgeResidue.rhEquivalenceNotProved ∈
        defaultMobiusEulerProductSurface.residues := by
  simp
    [ defaultMobiusEulerProductSurface
    , defaultEulerProductBridgeResidues
    ]

theorem finite_mobius_surface_does_not_clear_rh_boundary :
    defaultMobiusEulerProductSurface.rhClaim = false ∧
      Think.Targets.rhStatement.checked.hasResidue = true := by
  exact ⟨rfl, rfl⟩

theorem finite_mobius_surface_does_not_clear_pnt_bridge :
    defaultMobiusEulerProductSurface.pntClaim = false ∧
      EulerProductBridgeResidue.pntBridgeNotProved ∈
        defaultMobiusEulerProductSurface.residues := by
  simp
    [ defaultMobiusEulerProductSurface
    , defaultEulerProductBridgeResidues
    ]

end Think.Arithmetic.MobiusEulerProduct
```
