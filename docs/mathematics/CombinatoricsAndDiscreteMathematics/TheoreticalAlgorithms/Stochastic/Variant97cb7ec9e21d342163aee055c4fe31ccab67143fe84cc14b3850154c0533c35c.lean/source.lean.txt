import Boolean.Cube.BooleanNetwork.Asynchronous

namespace Boolean.Cube

namespace BooleanNetwork

/-- A finite transition-mass record, kept as numerator and denominator. -/
structure TransitionMass where
  numerator : Nat
  denominator : Nat
deriving Repr, DecidableEq

/-- A stochastic Boolean network records a finite transition weight for each edge. -/
structure StochasticNetwork (n : Nat) where
  transitionWeight : Hypercube.Point n → Hypercube.Point n → Nat

namespace StochasticNetwork

/-- Total outgoing transition weight from a state. -/
def outgoingWeight {n : Nat}
    (N : StochasticNetwork n)
    (x : Hypercube.Point n) :
    Nat :=
  ListTools.sumNat
    ((Hypercube.vertices n).map
      (fun y => N.transitionWeight x y))

/-- Transition mass from `x` to `y`, represented by finite weights. -/
def transitionMass {n : Nat}
    (N : StochasticNetwork n)
    (x y : Hypercube.Point n) :
    TransitionMass where
  numerator := N.transitionWeight x y
  denominator := N.outgoingWeight x

/-- Positive one-step stochastic transition. -/
def PositiveTransition {n : Nat}
    (N : StochasticNetwork n)
    (x y : Hypercube.Point n) :
    Prop :=
  N.transitionWeight x y > 0

/-- Finite support of one stochastic transition row. -/
def support {n : Nat}
    (N : StochasticNetwork n)
    (x : Hypercube.Point n) :
    List (Hypercube.Point n) :=
  (Hypercube.vertices n).filter
    (fun y => decide (N.transitionWeight x y > 0))

/-- Endpoint reached after following a list of future states. -/
def endpointFrom {n : Nat}
    (x : Hypercube.Point n) :
    List (Hypercube.Point n) → Hypercube.Point n
  | [] => x
  | y :: rest => endpointFrom y rest

/-- Product of transition weights along a finite state path. -/
def pathWeightFrom {n : Nat}
    (N : StochasticNetwork n) :
    Hypercube.Point n → List (Hypercube.Point n) → Nat
  | _x, [] => 1
  | x, y :: rest =>
      N.transitionWeight x y *
        N.pathWeightFrom y rest

/-- Product of outgoing row weights along a finite state path. -/
def pathDenominatorFrom {n : Nat}
    (N : StochasticNetwork n) :
    Hypercube.Point n → List (Hypercube.Point n) → Nat
  | _x, [] => 1
  | x, y :: rest =>
      N.outgoingWeight x *
        N.pathDenominatorFrom y rest

/-- Transition mass of a finite path. -/
def pathMassFrom {n : Nat}
    (N : StochasticNetwork n)
    (x : Hypercube.Point n)
    (path : List (Hypercube.Point n)) :
    TransitionMass where
  numerator := N.pathWeightFrom x path
  denominator := N.pathDenominatorFrom x path

/-- A finite path has positive stochastic weight. -/
def PositivePath {n : Nat}
    (N : StochasticNetwork n)
    (x : Hypercube.Point n)
    (path : List (Hypercube.Point n)) :
    Prop :=
  N.pathWeightFrom x path > 0

/-- State `x` reaches state `y` through a finite path of positive weight. -/
def Reaches {n : Nat}
    (N : StochasticNetwork n)
    (x y : Hypercube.Point n) :
    Prop :=
  ∃ path : List (Hypercube.Point n),
    endpointFrom x path = y ∧ N.PositivePath x path

/-- Enumerate all future-state lists of a fixed length. -/
def paths (n : Nat) :
    Nat → List (List (Hypercube.Point n))
  | 0 => [[]]
  | t + 1 =>
      (Hypercube.vertices n).flatMap
        (fun y =>
          (paths n t).map
            (fun rest => y :: rest))

/-- Unnormalized state weight after `t` stochastic updates. -/
def stateWeightAfter {n : Nat}
    (N : StochasticNetwork n)
    (x : Hypercube.Point n)
    (t : Nat)
    (y : Hypercube.Point n) :
    Nat :=
  ListTools.sumNat
    ((paths n t).map
      (fun path =>
        if Hypercube.pointEq (endpointFrom x path) y then
          N.pathWeightFrom x path
        else
          0))

/-- Unnormalized finite distribution after `t` stochastic updates. -/
def distributionAfter {n : Nat}
    (N : StochasticNetwork n)
    (x : Hypercube.Point n)
    (t : Nat) :
    Hypercube.Point n → Nat :=
  fun y => N.stateWeightAfter x t y

/-- Finite support of the unnormalized distribution after `t` updates. -/
def supportAfter {n : Nat}
    (N : StochasticNetwork n)
    (x : Hypercube.Point n)
    (t : Nat) :
    List (Hypercube.Point n) :=
  (Hypercube.vertices n).filter
    (fun y => decide (N.stateWeightAfter x t y > 0))

@[simp] theorem transitionMass_numerator {n : Nat}
    (N : StochasticNetwork n)
    (x y : Hypercube.Point n) :
    (N.transitionMass x y).numerator =
      N.transitionWeight x y := rfl

@[simp] theorem transitionMass_denominator {n : Nat}
    (N : StochasticNetwork n)
    (x y : Hypercube.Point n) :
    (N.transitionMass x y).denominator =
      N.outgoingWeight x := rfl

@[simp] theorem endpointFrom_nil {n : Nat}
    (x : Hypercube.Point n) :
    endpointFrom x [] = x := rfl

@[simp] theorem endpointFrom_cons {n : Nat}
    (x y : Hypercube.Point n)
    (rest : List (Hypercube.Point n)) :
    endpointFrom x (y :: rest) =
      endpointFrom y rest := rfl

@[simp] theorem pathWeightFrom_nil {n : Nat}
    (N : StochasticNetwork n)
    (x : Hypercube.Point n) :
    N.pathWeightFrom x [] = 1 := rfl

@[simp] theorem pathWeightFrom_cons {n : Nat}
    (N : StochasticNetwork n)
    (x y : Hypercube.Point n)
    (rest : List (Hypercube.Point n)) :
    N.pathWeightFrom x (y :: rest) =
      N.transitionWeight x y * N.pathWeightFrom y rest := rfl

@[simp] theorem pathDenominatorFrom_nil {n : Nat}
    (N : StochasticNetwork n)
    (x : Hypercube.Point n) :
    N.pathDenominatorFrom x [] = 1 := rfl

@[simp] theorem pathDenominatorFrom_cons {n : Nat}
    (N : StochasticNetwork n)
    (x y : Hypercube.Point n)
    (rest : List (Hypercube.Point n)) :
    N.pathDenominatorFrom x (y :: rest) =
      N.outgoingWeight x * N.pathDenominatorFrom y rest := rfl

@[simp] theorem pathMassFrom_numerator {n : Nat}
    (N : StochasticNetwork n)
    (x : Hypercube.Point n)
    (path : List (Hypercube.Point n)) :
    (N.pathMassFrom x path).numerator =
      N.pathWeightFrom x path := rfl

@[simp] theorem pathMassFrom_denominator {n : Nat}
    (N : StochasticNetwork n)
    (x : Hypercube.Point n)
    (path : List (Hypercube.Point n)) :
    (N.pathMassFrom x path).denominator =
      N.pathDenominatorFrom x path := rfl

end StochasticNetwork

/-- Deterministic networks as one-edge stochastic networks. -/
def Network.toStochastic {n : Nat}
    (N : BooleanNetwork.Network n) :
    BooleanNetwork.StochasticNetwork n where
  transitionWeight := fun x y =>
    if Hypercube.pointEq (N.step x) y then 1 else 0

/-- Count how many coordinate choices take `x` to `y`. -/
def AsynchronousNetwork.transitionWeight {n : Nat}
    (N : BooleanNetwork.AsynchronousNetwork n)
    (x y : Hypercube.Point n) :
    Nat :=
  ListTools.countTrue
    ((List.finRange n).map
      (fun i => Hypercube.pointEq y (N.updateAt i x)))

/-- Asynchronous coordinate choice as a finite stochastic transition system. -/
def AsynchronousNetwork.toStochastic {n : Nat}
    (N : BooleanNetwork.AsynchronousNetwork n) :
    BooleanNetwork.StochasticNetwork n where
  transitionWeight := N.transitionWeight

@[simp] theorem Network.toStochastic_transitionWeight {n : Nat}
    (N : BooleanNetwork.Network n)
    (x y : Hypercube.Point n) :
    (N.toStochastic).transitionWeight x y =
      if Hypercube.pointEq (N.step x) y then 1 else 0 := rfl

@[simp] theorem AsynchronousNetwork.toStochastic_transitionWeight {n : Nat}
    (N : BooleanNetwork.AsynchronousNetwork n)
    (x y : Hypercube.Point n) :
    (N.toStochastic).transitionWeight x y =
      N.transitionWeight x y := rfl

end BooleanNetwork

end Boolean.Cube
