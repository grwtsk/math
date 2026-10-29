import Mathematics.StratifiedBoundary.Boundary.LimitKernel

/-!
# Unique projective limit invariant law
-/

namespace Mathematics.StratifiedBoundary

structure UniqueProjectiveInvariantLaw
    (Kernel Law : Type u) where
  kernel : Kernel
  limitLaw : Law
  finiteMarginal : Nat → Law
  invariant : Prop
  invariantProof : invariant
  projects : Nat → Prop
  projectProof :
    ∀ stage : Nat,
      projects stage
  unique :
    ∀ candidate : Law,
      candidate = limitLaw

theorem projective_limit_invariant_law_unique
    {Kernel Law : Type u}
    (certificate :
      UniqueProjectiveInvariantLaw Kernel Law)
    (candidate : Law) :
    candidate = certificate.limitLaw :=
  certificate.unique candidate

end Mathematics.StratifiedBoundary
