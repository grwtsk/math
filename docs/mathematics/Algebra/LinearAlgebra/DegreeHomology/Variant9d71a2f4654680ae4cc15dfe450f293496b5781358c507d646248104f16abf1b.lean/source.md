# Complete source: GRWTSK.Algebra.LinearAlgebra.DegreeHomology.Variant9d71a2f4654680ae4cc15dfe450f293496b5781358c507d646248104f16abf1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59618bc547261f4f90c298a52e13bc85ee01f2ff` · SHA-256 `9d71a2f4654680ae4cc15dfe450f293496b5781358c507d646248104f16abf1b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.FiniteChain

/-!
# Degreewise integral homology

Cycles and boundaries are formed from the certified graded differential.
The inclusion of boundaries into cycles is proved from `∂² = 0`; it is not an
extra digest assertion.
-/

namespace Mathematics.Homology

namespace FiniteIntegralChain

/-- Integral cycles in one degree. -/
def cycles
    (chain : FiniteIntegralChain) :
    (degree : Nat) →
      Submodule ℤ (FiniteFree (chain.rank degree))
  | 0 => ⊤
  | Nat.succ lowerDegree =>
      LinearMap.ker (chain.boundaryMap lowerDegree)

/-- Every incoming boundary is a cycle. -/
theorem boundary_mem_cycles
    (chain : FiniteIntegralChain) (degree : Nat)
    (value : FiniteFree (chain.rank (Nat.succ degree))) :
    chain.boundaryMap degree value ∈ chain.cycles degree := by
  cases degree with
  | zero =>
      exact Submodule.mem_top
  | succ lowerDegree =>
      change chain.boundaryMap lowerDegree
          (chain.boundaryMap (Nat.succ lowerDegree) value) = 0
      calc
        chain.boundaryMap lowerDegree
              (chain.boundaryMap (Nat.succ lowerDegree) value) =
            ((chain.boundaryMap lowerDegree).comp
              (chain.boundaryMap (Nat.succ lowerDegree))) value := rfl
        _ = (0 :
              FiniteFree (chain.rank (Nat.succ (Nat.succ lowerDegree))) →ₗ[ℤ]
                FiniteFree (chain.rank lowerDegree)) value := by
          rw [chain.boundaryMap_squared lowerDegree]
        _ = 0 := rfl

/-- The incoming differential with codomain restricted to cycles. -/
def boundaryIntoCycles
    (chain : FiniteIntegralChain) (degree : Nat) :
    FiniteFree (chain.rank (Nat.succ degree)) →ₗ[ℤ]
      chain.cycles degree where
  toFun value :=
    ⟨chain.boundaryMap degree value,
      chain.boundary_mem_cycles degree value⟩
  map_add' left right := by
    apply Subtype.ext
    exact map_add (chain.boundaryMap degree) left right
  map_smul' scalar value := by
    apply Subtype.ext
    exact map_smul (chain.boundaryMap degree) scalar value

/-- Integral boundaries as a submodule of cycles. -/
def boundaries
    (chain : FiniteIntegralChain) (degree : Nat) :
    Submodule ℤ (chain.cycles degree) :=
  LinearMap.range (chain.boundaryIntoCycles degree)

/-- Degree-`r` homology is `ker ∂r / im ∂(r+1)`. -/
abbrev DegreeHomology
    (chain : FiniteIntegralChain) (degree : Nat) :=
  chain.cycles degree ⧸ chain.boundaries degree

end FiniteIntegralChain

end Mathematics.Homology
```
