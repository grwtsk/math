# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitInvariantLaw.Variant6fbee60e8e567e36a39f1047d5e794bec9d8e011f63d52a1c3ff0710d5b530ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d63a17029e012f0465a4f86e6e38feb8494e595a` · SHA-256 `6fbee60e8e567e36a39f1047d5e794bec9d8e011f63d52a1c3ff0710d5b530ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
