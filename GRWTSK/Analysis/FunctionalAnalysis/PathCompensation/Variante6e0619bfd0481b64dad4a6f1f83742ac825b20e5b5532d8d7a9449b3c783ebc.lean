import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.ExactCompensation
import Mathematics.SemiLocalDefect.ResidueDeflection.Path

/-!
# Pathwise trace compensation

Local compensation terms telescope along the typed path.  The resulting
bound retains every local defect and source packet norm.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

open Mathematics.GraphAccess

universe uHilbert uTest

noncomputable def pathCompensation
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (test : Test) : ℝ :=
  match path with
  | .nil _ => 0
  | .cons arc rest =>
      system.packet.energy arc.tail
          (system.compensationDefect arc)
          test +
        pathCompensation system rest test

def pathCompensationBudget
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      PolarTraceSystem cut Hilbert Test}
    (certificate :
      TraceCompensationBudget system)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (test : Test) : ℝ :=
  match path with
  | .nil _ => 0
  | .cons arc rest =>
      certificate.budget arc *
          system.packet.packetNormSq
            arc.tail test +
        pathCompensationBudget
          certificate rest test

theorem pathEnergy_difference_eq_compensation
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (test : Test)
    (safe :
      path.AllArcs
        (fun arc =>
          cut.safeArc arc = true)) :
    system.packetEnergy target test -
        system.packetEnergy source test =
      pathCompensation system path test := by
  induction path with
  | nil =>
      simp [pathCompensation]
  | cons arc rest induction =>
      rcases safe with ⟨arcSafe, restSafe⟩
      rw [pathCompensation]
      have localDifference :=
        packetEnergy_difference_eq_compensationDefect
          system arc test arcSafe
      have downstream :=
        induction restSafe
      linarith

theorem pathEnergy_compensation_bound
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (certificate :
      TraceCompensationBudget system)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (test : Test)
    (safe :
      path.AllArcs
        (fun arc =>
          cut.safeArc arc = true)) :
    abs
        (system.packetEnergy target test -
          system.packetEnergy source test) ≤
      pathCompensationBudget
        certificate path test := by
  rw [pathEnergy_difference_eq_compensation
    system path test safe]
  induction path with
  | nil =>
      simp [pathCompensation,
        pathCompensationBudget]
  | cons arc rest induction =>
      rcases safe with ⟨arcSafe, restSafe⟩
      rw [pathCompensation,
        pathCompensationBudget]
      have localTraceBound :
          abs
              (system.packet.energy arc.tail
                (system.compensationDefect arc)
                test) ≤
            certificate.budget arc *
              system.packet.packetNormSq
                arc.tail test :=
        le_trans
          (system.packet.abs_energy_le
            arc.tail
            (system.compensationDefect arc)
            test)
          (mul_le_mul_of_nonneg_right
            (certificate.defect_norm_le
              arc arcSafe)
            (system.packet.packetNormSq_nonnegative
              arc.tail test))
      exact le_trans
        (abs_add_le _ _)
        (add_le_add
          localTraceBound
          (induction restSafe))

theorem pathEnergy_invariant_of_exactCompensation
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (certificate :
      ExactTraceCompensation system)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (test : Test)
    (safe :
      path.AllArcs
        (fun arc =>
          cut.safeArc arc = true)) :
    system.packetEnergy target test =
      system.packetEnergy source test := by
  induction path with
  | nil =>
      rfl
  | cons arc rest induction =>
      rcases safe with ⟨arcSafe, restSafe⟩
      exact (induction restSafe).trans
        (packetEnergy_invariant_of_exactCompensation
          system certificate arc test arcSafe)

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
