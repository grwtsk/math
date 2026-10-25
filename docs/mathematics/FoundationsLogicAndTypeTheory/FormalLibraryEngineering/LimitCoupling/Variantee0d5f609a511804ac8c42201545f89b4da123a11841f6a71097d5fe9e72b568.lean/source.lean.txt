/-!
# Compatible coupling construction

Finite marginal contraction does not construct this certificate.  Either this
coupling object or a separate direct construction is required.
-/

namespace Mathematics.StratifiedBoundary

structure CompatibleLimitCoupling
    (FiniteKernel LimitKernel : Type u) where
  finiteKernel : Nat → FiniteKernel
  projectivelyCompatible : Prop
  compatibilityProof : projectivelyCompatible
  limitKernel : LimitKernel
  constructionValid : Prop
  constructionProof : constructionValid
  compatibilityProofRef : String
  limitKernelConstructionRef : String

theorem compatible_couplings_construct_limit_kernel
    {FiniteKernel LimitKernel : Type u}
    (certificate :
      CompatibleLimitCoupling FiniteKernel LimitKernel) :
    ∃ kernel : LimitKernel,
      kernel = certificate.limitKernel ∧
        certificate.constructionValid :=
  ⟨certificate.limitKernel, rfl, certificate.constructionProof⟩

end Mathematics.StratifiedBoundary
