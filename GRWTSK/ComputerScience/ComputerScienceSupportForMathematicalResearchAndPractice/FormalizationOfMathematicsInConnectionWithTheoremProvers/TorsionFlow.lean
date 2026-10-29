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
