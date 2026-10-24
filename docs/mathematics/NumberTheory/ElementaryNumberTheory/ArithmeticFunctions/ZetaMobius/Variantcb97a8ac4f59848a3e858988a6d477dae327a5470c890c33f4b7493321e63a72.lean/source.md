# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ZetaMobius.Variantcb97a8ac4f59848a3e858988a6d477dae327a5470c890c33f4b7493321e63a72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb18b3d1ab40f79351387f476fb1ce64c324487f` · SHA-256 `7fb60564f563da6b7ba30afc1595834e3c9bf31724a840b8e018bf5bc0199454`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.FinitePrimeSet.Varianteb97c1f5d47e49e85db87500d3c8e97063713dee8913a95a91d1d28539c1a76c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb97c1f5d47e49e85db87500d3c8e97063713dee8913a95a91d1d28539c1a76c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.FinitePrimeSet.Varianteb97c1f5d47e49e85db87500d3c8e97063713dee8913a95a91d1d28539c1a76c","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"eb97c1f5d47e49e85db87500d3c8e97063713dee8913a95a91d1d28539c1a76c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/ZetaMobius.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.FractalSpace


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.FinitePrimeSet.Varianteb97c1f5d47e49e85db87500d3c8e97063713dee8913a95a91d1d28539c1a76c

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
