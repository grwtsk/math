/-
Complete bounded coordinate data and supplied formula-agreeing mixed-radix equivalence
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 46f3923eb08b8087d56afc6f7cb7c477e5097298326c3c2f5c8b0de7181bc50e
Organized SHA-256: 7db2e66beb99aba0b9020dab1439132befa137a92a93440edb7d372bcee6e3ce
PMD: 510.2.010 elementary number theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import Mathlib.Data.Nat.Pairing
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.Prime.Nth
import Mathlib.Data.Nat.PrimeFin

/-!
# Sequential-prime carrier addresses

This module formalizes the finite data and coding boundary used by the
source-relative carrier construction.  It deliberately separates concrete
coding functions from certificates whose mathematical obligations (prime
enumeration, mixed-radix bijectivity, and canonical increasing enumeration)
must be supplied before those functions are treated as exact equivalences.
-/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087

/-- A finite coordinate together with the cardinality of every axis. -/
structure FiberCoordinate where
  values : List Nat
  axisCardinalities : List Nat
  sameLength : values.length = axisCardinalities.length
  inBounds : ∀ index : Fin values.length,
    values[index] < axisCardinalities[index.cast sameLength]

/-- Least-significant-coordinate-first mixed-radix evaluation. -/
def mixedRadixValues : List Nat → List Nat → Nat
  | [], _ => 0
  | _, [] => 0
  | value :: values, radix :: radices =>
      value + radix * mixedRadixValues values radices

/-- Evaluate a checked fiber coordinate in the fixed mixed-radix convention. -/
def FiberCoordinate.mixedRadix (coordinate : FiberCoordinate) : Nat :=
  mixedRadixValues coordinate.values coordinate.axisCardinalities

/--
A certificate that a selected coordinate representation is exactly the
documented mixed-radix finite equivalence.  No certificate is synthesized from
cardinality alone.
-/
structure MixedRadixEquivalence
    (Coordinate : Type)
    (cardinality : Nat)
    (formula : Coordinate → Nat) where
  equivalence : Coordinate ≃ Fin cardinality
  agreesWithFormula : ∀ coordinate,
    (equivalence coordinate).val = formula coordinate


end GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087
