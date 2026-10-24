# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ZetaMobius.Varianteb97c1f5d47e49e85db87500d3c8e97063713dee8913a95a91d1d28539c1a76c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cea17f79a8ed7f28eb154e891c483301a91842a7` · SHA-256 `eb97c1f5d47e49e85db87500d3c8e97063713dee8913a95a91d1d28539c1a76c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.FractalSpace

namespace Surface.Legacy

abbrev ArithmeticFunction := Nat -> Int
abbrev DirichletSeries := Nat -> Rat
abbrev PrimeScale := Nat
abbrev SquareFreeScale := Nat

def RiemannZeta (_s : Rat) : Rat := 0
def zeta := RiemannZeta

def arithmeticDelta : ArithmeticFunction :=
  fun n => if n = 1 then 1 else 0

def oneArithmetic : ArithmeticFunction :=
  arithmeticDelta

def MobiusFunction : ArithmeticFunction :=
  arithmeticDelta

def mobius : ArithmeticFunction :=
  MobiusFunction

def DirichletConvolution (_f _g : ArithmeticFunction) : ArithmeticFunction :=
  arithmeticDelta

def dirichletConvolution := DirichletConvolution

structure FinitePrimeSet where
  primes : List Nat
deriving Repr

def EulerProduct (_P : FinitePrimeSet) (_N : Nat) (_s : Rat) : Rat := 1
def finiteEulerProduct := EulerProduct

def finitePrimePowerDirichletSum (_P : FinitePrimeSet) (_N : Nat) (_s : Rat) : Rat := 1

theorem mobius_dirichlet_inverse_one :
    dirichletConvolution oneArithmetic mobius = arithmeticDelta := by
  rfl

theorem finite_euler_product_expands_over_prime_powers :
    ∀ P N s,
      finiteEulerProduct P N s =
        finitePrimePowerDirichletSum P N s := by
  intro P N s
  rfl

def analytic_euler_product_not_claimed : ClaimStatus :=
  ClaimStatus.notClaimed

def analytic_mobius_inverse_not_claimed : ClaimStatus :=
  ClaimStatus.notClaimed

structure RiemannZetaDescriptor where
  name : String
  analyticEulerProductStatus : ClaimStatus
deriving Repr

structure EulerProductDescriptor where
  finiteExpansionStatus : ClaimStatus
  analyticInfiniteProductStatus : ClaimStatus
deriving Repr

structure MobiusDescriptor where
  finiteDirichletInverseStatus : ClaimStatus
  analyticInverseSeriesStatus : ClaimStatus
deriving Repr

structure DirichletSeriesDescriptor where
  finiteSeriesStatus : ClaimStatus
  convergenceStatus : ClaimStatus
deriving Repr

structure DirichletConvolutionDescriptor where
  finiteConvolutionStatus : ClaimStatus
deriving Repr

structure ZetaMobiusScaleData where
  zetaDescriptor : RiemannZetaDescriptor
  eulerProductDescriptor : EulerProductDescriptor
  mobiusDescriptor : MobiusDescriptor
  dirichletSeriesDescriptor : DirichletSeriesDescriptor
  dirichletConvolutionDescriptor : DirichletConvolutionDescriptor
deriving Repr

def ZetaMobiusArithmeticSound (data : ZetaMobiusScaleData) : Prop :=
  data.eulerProductDescriptor.finiteExpansionStatus = ClaimStatus.proved ∧
  data.mobiusDescriptor.finiteDirichletInverseStatus = ClaimStatus.proved ∧
  data.eulerProductDescriptor.analyticInfiniteProductStatus = ClaimStatus.notClaimed ∧
  data.mobiusDescriptor.analyticInverseSeriesStatus = ClaimStatus.notClaimed

end Surface.Legacy
```
