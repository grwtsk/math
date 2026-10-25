# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TorsionFlow.Variant6622d67c730593b50fa731b725998fb08f406b399e38765d7b4021e2796fb53e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f60b034a9c75958bfe36903f788704677e128496` · SHA-256 `6622d67c730593b50fa731b725998fb08f406b399e38765d7b4021e2796fb53e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.Derived.CheckedQuasiIsomorphism

/-!
# Folder.Rebuild.Derived.TorsionFlow

Discrete torsion-flow steps for finite shadow complexes.
-/

namespace Folder
namespace Rebuild
namespace Derived

structure TorsionFlowStep
    (A B : FiniteTorsionComplex) where
  mapLabel : String
  mass_nonincreasing : torsionMass B ≤ torsionMass A
  euler_preserved : eulerShadow B = eulerShadow A

structure TorsionFlow where
  T : Nat → FiniteTorsionComplex
  step : ∀ n, TorsionFlowStep (T n) (T (n + 1))

theorem torsion_flow_euler_invariant
    (F : TorsionFlow) :
    ∀ n, eulerShadow (F.T n) = eulerShadow (F.T 0) := by
  intro n
  induction n with
  | zero =>
      rfl
  | succ n ih =>
      exact (F.step n).euler_preserved.trans ih

theorem torsion_flow_mass_monotone
    (F : TorsionFlow) :
    ∀ n, torsionMass (F.T (n + 1)) ≤ torsionMass (F.T n) := by
  intro n
  exact (F.step n).mass_nonincreasing

theorem torsion_flow_step_composition_mass
    {A B C : FiniteTorsionComplex}
    (f : TorsionFlowStep A B)
    (g : TorsionFlowStep B C) :
    torsionMass C ≤ torsionMass A :=
  mass_nonincreasing_comp f.mass_nonincreasing g.mass_nonincreasing

end Derived
end Rebuild
end Folder
```
