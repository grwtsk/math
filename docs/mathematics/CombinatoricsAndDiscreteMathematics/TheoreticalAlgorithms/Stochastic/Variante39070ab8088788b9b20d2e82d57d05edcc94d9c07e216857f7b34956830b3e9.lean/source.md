# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Stochastic.Variante39070ab8088788b9b20d2e82d57d05edcc94d9c07e216857f7b34956830b3e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd118ce36bc31b5938534c868d888040f37233be` · SHA-256 `e8c63014cbf62abbfff7acd34dd00213a5059299c7c884e36a75ad79d03fb6b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TransitionMass.Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TransitionMass.Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c","mathematical_subject":"Computation.DataStructures","original_sha256":"97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/BooleanNetwork/Stochastic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.BooleanNetwork.Asynchronous


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TransitionMass.Variant97cb7ec9e21d342163aee055c4fe31ccab67143fe84cc14b3850154c0533c35c

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
```
