import Boolean.Cube.Hypercube

namespace Boolean.Cube

/-- A Boolean network is a discrete-time update rule on a hypercube state space. -/
structure BooleanNetwork.Network (n : Nat) where
  step : Hypercube.Point n → Hypercube.Point n

/-- Iterate a Boolean network for `t` discrete steps. -/
def BooleanNetwork.iterate {n : Nat} (N : BooleanNetwork.Network n) :
    Nat → Hypercube.Point n → Hypercube.Point n
  | 0, x => x
  | t + 1, x => BooleanNetwork.iterate N t (N.step x)

/--
State transition matrix of a Boolean network.

Rows are current states. Columns are next states. A `1` at `(i,j)` means state
`i` transitions to state `j`.
-/
def BooleanNetwork.transitionMatrix {n : Nat} (N : BooleanNetwork.Network n) :
    Matrix (2 ^ n) (2 ^ n) :=
  fun i j =>
    Hypercube.pointEq
      (Hypercube.pointOfIndex n j.val)
      (N.step (Hypercube.pointOfIndex n i.val))

/--
A coordinate-level dependency test.

The output coordinate `target` depends on input coordinate `source` when flipping
`source` changes that target output for at least one state.
-/
def BooleanNetwork.dependsOn {n : Nat}
    (N : BooleanNetwork.Network n)
    (source target : Fin n) :
    Bool :=
  ListTools.anyTrue
    ((Hypercube.vertices n).map
      (fun x =>
        Hypercube.boolDiff
          (N.step x target)
          (N.step (Hypercube.flip x source) target)))

/--
Dependency diagram as a Boolean matrix.

A `1` at `(source,target)` records structural entailment:
the source coordinate can affect the target coordinate after one update.
-/
def BooleanNetwork.dependencyMatrix {n : Nat} (N : BooleanNetwork.Network n) :
    Matrix n n :=
  fun source target => BooleanNetwork.dependsOn N source target

end Boolean.Cube
