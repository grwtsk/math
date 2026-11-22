/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE; Lean elaboration, kernel replay, axiom audit: NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FrozenPrimeBeaconCardinality
import Mathlib.NumberTheory.PrimeCounting

/-!
# Exact finite prime supply for the sixteen-dimensional frozen atlas

The arithmetic check is local and finite. It concerns the ACTUAL predicate
Nat.Prime and Mathlib's actual prime-counting function, not a substituted
prime list or unrelated positive kernel.

The reduction to nth-prime is unconditional, but the executable finite
certificate uses kernel-reduced decidability and has NOT_RUN evidence
until checked on the root Lean 4.34.1 / pinned Mathlib installation.
If the direct computation is too expensive, replace only the local
finite-count proof with smaller independently checked certificates.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FinitePrimeSupply16

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeBeaconCardinality

/-- The finite source statement. Only primes strictly below 38874 count. -/
def EnoughPrimesBelow38874 : Prop :=
  4095 < Nat.primeCounting' 38874

/-- A proof of this finite inequality suffices for the cutoff-based atlas.
This is not an unbounded prime-number-theory statement. -/
theorem prefixFits16_of_count (h : EnoughPrimesBelow38874) : PrefixFits16 := by
  have hc : 4095 < Nat.count Nat.Prime 38874 := h
  have hn : Nat.nth Nat.Prime 4095 < 38874 :=
    Nat.nth_lt_of_lt_count hc
  unfold PrefixFits16
  omega

/-- Finite arithmetic certificate: 4096 actual primes are below 38874.
No native_decide, sorry, admit, or new axiom is permitted. -/
theorem enoughPrimesBelow38874 : EnoughPrimesBelow38874 := by
  unfold EnoughPrimesBelow38874
  set_option maxRecDepth 100000 in
    decide

/-- The original outstanding bound now has a direct finite supplier. -/
theorem prefixFits16 : PrefixFits16 :=
  prefixFits16_of_count enoughPrimesBelow38874

/-- Every selected, injectively labeled primary beacon lies within
the 16-bit numerical universe, with no arithmetic assumptions. -/
theorem everyBeaconPrimeAtMost65536
    (b : Beacon 4) : beaconPrimeLabel b ≤ 65536 :=
  beaconPrimeLabel_le_of_prefix prefixFits16 b

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FinitePrimeSupply16
