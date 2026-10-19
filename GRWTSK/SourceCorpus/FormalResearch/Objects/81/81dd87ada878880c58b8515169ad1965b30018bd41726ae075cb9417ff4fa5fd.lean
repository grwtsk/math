import Mathematics.AbelReynolds.Template

/-!
# Class--prime factorization

Class binding and prime specialization are distinct total maps.  A bound class
template may retain typed prime holes, but its class values cannot depend on a
prime environment.
-/

namespace Mathematics.AbelReynolds

universe u v

structure ClassPrimeFactorization
    (ClassEnvironment : Type u)
    (PrimeEnvironment : Type v)
    (BoundClass Output : Type*) where
  bindClass : ClassEnvironment → BoundClass
  bindPrime : BoundClass → PrimeEnvironment → Output
  evalTemplate : ClassEnvironment → PrimeEnvironment → Output
  factors :
    ∀ classEnvironment primeEnvironment,
      evalTemplate classEnvironment primeEnvironment =
        bindPrime (bindClass classEnvironment) primeEnvironment

theorem ClassPrimeFactorization.class_binding_deterministic
    {ClassEnvironment : Type u}
    {PrimeEnvironment : Type v}
    {BoundClass Output : Type*}
    (factorization :
      ClassPrimeFactorization
        ClassEnvironment PrimeEnvironment BoundClass Output)
    (classEnvironment : ClassEnvironment) :
    factorization.bindClass classEnvironment =
      factorization.bindClass classEnvironment :=
  rfl

structure PrimeBinding where
  hole : PrimeHole
  value : Value
  validationCertificateId : String

def PrimeBinding.SortCorrect (binding : PrimeBinding) : Prop :=
  binding.value.sort = binding.hole.sort

def PrimeBinding.BoundaryCorrect
    (binding : PrimeBinding)
    (target : BoundaryKey)
    (transports : List BoundaryTransport) : Prop :=
  MayConsume binding.hole.boundary target transports

end Mathematics.AbelReynolds
