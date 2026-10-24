# Complete source: GRWTSK.Algebra.GroupTheory.LocalSystem.Variant583a04b0fe5173b75d9c40f81f120446cdbe4df856adbca7f40bf5d9503761d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eed63091d634094d96d67b55c226c7c68427884d` · SHA-256 `583a04b0fe5173b75d9c40f81f120446cdbe4df856adbca7f40bf5d9503761d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.GramField

/-!
# Integral local systems and scalar extension

The monodromy acts on an integral lattice and on its real scalar extension.
Their compatibility is exact data.  No cover or metric is inferred from the
monodromy alone.
-/

namespace Mathematics.Homology

abbrev IntegralFiber (rank : Nat) := Fin rank → ℤ
abbrev RealFiber (rank : Nat) := Fin rank → ℝ

/-- Coordinatewise scalar extension from an integral fiber to a real fiber. -/
def integralFiberToReal
    {rank : Nat} (vector : IntegralFiber rank) :
    RealFiber rank :=
  fun index ↦ (vector index : ℝ)

/-- A fixed-rank certified integral local system over a loop group. -/
structure IntegralLocalSystem
    (Loop : Type*) [Group Loop] (rank : Nat) where
  integralMonodromy :
    Loop →* (IntegralFiber rank ≃ₗ[ℤ] IntegralFiber rank)
  realMonodromy :
    Loop →* (RealFiber rank ≃ₗ[ℝ] RealFiber rank)
  scalarExtensionCompatible :
    ∀ loop vector,
      realMonodromy loop (integralFiberToReal vector) =
        integralFiberToReal (integralMonodromy loop vector)
  monodromyDigest : Digest
  localSystemCertificate : ObjectAddress

end Mathematics.Homology
```
