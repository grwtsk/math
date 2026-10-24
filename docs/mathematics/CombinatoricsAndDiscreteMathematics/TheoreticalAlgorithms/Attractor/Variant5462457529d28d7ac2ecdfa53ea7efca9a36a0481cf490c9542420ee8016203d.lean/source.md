# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Attractor.Variant5462457529d28d7ac2ecdfa53ea7efca9a36a0481cf490c9542420ee8016203d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07e3c6d649bed3b2eab1d20a629a4b35e76e15dd` · SHA-256 `07ca2b4a5eb3c83e81a30d79e996c9c00f66302a2295490490fb7f8e674c5874`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CyclicAttractor.Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CyclicAttractor.Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2","mathematical_subject":"Computation.DataStructures","original_sha256":"3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/BooleanNetwork/Attractor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.BooleanNetwork.Dynamics


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CyclicAttractor.Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2

namespace Boolean.Cube

namespace BooleanNetwork

/-- Test whether a finite state list contains a state. -/
def containsState {n : Nat}
    (x : Hypercube.Point n)
    (xs : List (Hypercube.Point n)) :
    Bool :=
  ListTools.anyTrue
    (xs.map
      (fun y => Hypercube.pointEq x y))

/-- Drop all states before the first occurrence of `x`. -/
def suffixFromState {n : Nat}
    (x : Hypercube.Point n) :
    List (Hypercube.Point n) → List (Hypercube.Point n)
  | [] => []
  | y :: ys =>
      if Hypercube.pointEq x y then
        y :: ys
      else
        suffixFromState x ys

/--
Follow a deterministic orbit until the current state has appeared before.

The returned list is the cyclic suffix of the visited states. The fuel argument
keeps the function executable and total.
-/
def cycleFromAux {n : Nat}
    (N : BooleanNetwork.Network n) :
    Nat → List (Hypercube.Point n) → Hypercube.Point n →
      List (Hypercube.Point n)
  | 0, _seen, _x => []
  | fuel + 1, seen, x =>
      if BooleanNetwork.containsState x seen then
        BooleanNetwork.suffixFromState x seen
      else
        BooleanNetwork.cycleFromAux N fuel (seen ++ [x]) (N.step x)

/-- Cyclic attractor reached from `x`, represented as one cyclic state list. -/
def cyclicAttractorFrom {n : Nat}
    (N : BooleanNetwork.Network n)
    (x : Hypercube.Point n) :
    List (Hypercube.Point n) :=
  BooleanNetwork.cycleFromAux N
    ((Hypercube.vertices n).length + 1) [] x

/-- Predicate-valued membership in a cyclic attractor list. -/
def InCycle {n : Nat}
    (cycle : List (Hypercube.Point n))
    (x : Hypercube.Point n) :
    Prop :=
  BooleanNetwork.containsState x cycle = true

/-- Boolean subset test for finite state lists. -/
def stateSetSubset {n : Nat}
    (xs ys : List (Hypercube.Point n)) :
    Bool :=
  ListTools.allTrue
    (xs.map
      (fun x => BooleanNetwork.containsState x ys))

/-- Boolean equality test for finite state sets, ignoring cyclic rotation. -/
def sameStateSet {n : Nat}
    (xs ys : List (Hypercube.Point n)) :
    Bool :=
  BooleanNetwork.stateSetSubset xs ys &&
    BooleanNetwork.stateSetSubset ys xs

/-- Test whether a cycle representative is already present. -/
def containsCycle {n : Nat}
    (cycle : List (Hypercube.Point n))
    (cycles : List (List (Hypercube.Point n))) :
    Bool :=
  ListTools.anyTrue
    (cycles.map
      (fun known => BooleanNetwork.sameStateSet cycle known))

/-- Boolean emptiness test for cycle lists. -/
def cycleIsEmpty {n : Nat}
    (cycle : List (Hypercube.Point n)) :
    Bool :=
  match cycle with
  | [] => true
  | _ :: _ => false

/-- Insert a cycle representative unless an equal state set is already present. -/
def insertCycle {n : Nat}
    (cycle : List (Hypercube.Point n))
    (cycles : List (List (Hypercube.Point n))) :
    List (List (Hypercube.Point n)) :=
  if BooleanNetwork.cycleIsEmpty cycle then
    cycles
  else if BooleanNetwork.containsCycle cycle cycles then
    cycles
  else
    cycles ++ [cycle]

/-- Cyclic attractors reached from all finite cube states, before deduplication. -/
def cyclicAttractorsWithRepetitions {n : Nat}
    (N : BooleanNetwork.Network n) :
    List (List (Hypercube.Point n)) :=
  (Hypercube.vertices n).map
    (fun x => BooleanNetwork.cyclicAttractorFrom N x)

/--
Enumerate cyclic attractors of a deterministic Boolean network.

Cycles reached from different states are identified by their finite state set,
so rotations of the same cycle produce one representative.
-/
def cyclicAttractors {n : Nat}
    (N : BooleanNetwork.Network n) :
    List (List (Hypercube.Point n)) :=
  (Hypercube.vertices n).foldl
    (fun cycles x =>
      BooleanNetwork.insertCycle
        (BooleanNetwork.cyclicAttractorFrom N x)
        cycles)
    []

/-- Basin membership for an enumerated cyclic attractor representative. -/
def InAttractorBasin {n : Nat}
    (N : BooleanNetwork.Network n)
    (cycle : List (Hypercube.Point n))
    (x : Hypercube.Point n) :
    Prop :=
  BooleanNetwork.sameStateSet
    (BooleanNetwork.cyclicAttractorFrom N x)
    cycle = true

/-- Count the finite basin of one cyclic attractor representative. -/
def basinSize {n : Nat}
    (N : BooleanNetwork.Network n)
    (cycle : List (Hypercube.Point n)) :
    Nat :=
  ListTools.countTrue
    ((Hypercube.vertices n).map
      (fun x =>
        BooleanNetwork.sameStateSet
          (BooleanNetwork.cyclicAttractorFrom N x)
          cycle))

/-- A cyclic attractor together with the size of its basin. -/
structure CyclicAttractor (n : Nat) where
  cycle : List (Hypercube.Point n)
  basinSize : Nat

/-- Enumerate cyclic attractors and attach basin-size counts. -/
def cyclicAttractorTable {n : Nat}
    (N : BooleanNetwork.Network n) :
    List (BooleanNetwork.CyclicAttractor n) :=
  (BooleanNetwork.cyclicAttractors N).map
    (fun cycle =>
      { cycle := cycle
        basinSize := BooleanNetwork.basinSize N cycle })

@[simp] theorem containsState_nil {n : Nat}
    (x : Hypercube.Point n) :
    BooleanNetwork.containsState x [] = false := rfl

@[simp] theorem suffixFromState_nil {n : Nat}
    (x : Hypercube.Point n) :
    BooleanNetwork.suffixFromState x [] = [] := rfl

@[simp] theorem cycleIsEmpty_nil {n : Nat} :
    BooleanNetwork.cycleIsEmpty ([] : List (Hypercube.Point n)) = true := rfl

@[simp] theorem cycleIsEmpty_cons {n : Nat}
    (x : Hypercube.Point n)
    (xs : List (Hypercube.Point n)) :
    BooleanNetwork.cycleIsEmpty (x :: xs) = false := rfl

@[simp] theorem cyclicAttractorsWithRepetitions_eq_map {n : Nat}
    (N : BooleanNetwork.Network n) :
    BooleanNetwork.cyclicAttractorsWithRepetitions N =
      (Hypercube.vertices n).map
        (fun x => BooleanNetwork.cyclicAttractorFrom N x) := rfl

@[simp] theorem cyclicAttractorTable_eq_map {n : Nat}
    (N : BooleanNetwork.Network n) :
    BooleanNetwork.cyclicAttractorTable N =
      (BooleanNetwork.cyclicAttractors N).map
        (fun cycle =>
          { cycle := cycle
            basinSize := BooleanNetwork.basinSize N cycle }) := rfl

theorem basinSize_eq_count {n : Nat}
    (N : BooleanNetwork.Network n)
    (cycle : List (Hypercube.Point n)) :
    BooleanNetwork.basinSize N cycle =
      ListTools.countTrue
        ((Hypercube.vertices n).map
          (fun x =>
            BooleanNetwork.sameStateSet
              (BooleanNetwork.cyclicAttractorFrom N x)
              cycle)) := rfl

end BooleanNetwork

end Boolean.Cube
```
