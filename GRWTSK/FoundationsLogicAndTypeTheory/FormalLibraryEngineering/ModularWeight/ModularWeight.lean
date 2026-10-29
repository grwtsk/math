import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Orbit

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

def phaseMirror (n : Nat) : Nat :=
  60 - n

def phaseWeight (n : Nat) : Nat :=
  4 + 2 * ((Nat.min n (60 - n)) / 5)

theorem phaseWeight_reflection (n : Nat) (h : n ≤ 60) :
    phaseWeight n = phaseWeight (phaseMirror n) := by
  unfold phaseWeight phaseMirror
  rw [Nat.sub_sub_self h]
  exact congrArg (fun x => 4 + 2 * (x / 5)) (Nat.min_comm n (60 - n))

def canonicalFiberWeight : CanonicalFiber -> Nat
  | .pipelineCenter => 16
  | .pipelinePhase => 16
  | .poleFamily => 12
  | .residueAlgebra => 14
  | .sourceTreeGeometry => 16
  | .targetBoundary => 8
  | .finiteWitness => 8
  | .modularCarrier => 8
  | .researchCorpus => 6
  | .validationShell => 10
  | .braidConformance => 10
  | .buildShell => 2

theorem sourceTreeGeometry_weight :
    canonicalFiberWeight CanonicalFiber.sourceTreeGeometry = 16 := by
  rfl

end Think.RadoProjectedModularHeatflow
