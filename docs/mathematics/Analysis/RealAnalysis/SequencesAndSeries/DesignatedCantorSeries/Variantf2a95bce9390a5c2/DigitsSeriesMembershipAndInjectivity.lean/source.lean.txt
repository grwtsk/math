/-
DigitsSeriesMembershipAndInjectivity — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: f2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc
Organized SHA-256: a1f6321e3393ad8cb95368f19292481a8f150854fcf214e0857f451ee8c0255c
PMD: 510.5.010.020 sequences and series (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact Boolean-to-zero/two ternary digits, non-one/value equations, designated real series, Cantor membership and injectivity. The original Real.ofDigits and chosen-digit uniqueness providers remain historical imports. -/

import BitMatrix.Carrier.BooleanSpace
import Mathlib.Topology.Instances.CantorSet

/-!
# Analytic designated Cantor representation

This is the concrete exact-real specialization of the project scalar.  It is
Mathlib's middle-thirds Cantor subset of `Real`, not a floating approximation
or a symbolic replacement.  Mathlib proves that its chosen `{0,2}` ternary
sequence is unique and supplies the inverse digit map and homeomorphism.
-/

namespace BitMatrix.Topology

open Real

/-- Convert a Boolean stream to the selected ternary digits `0` and `2`. -/
def designatedTernaryExpansion
    (stream : BitMatrix.Carrier.BitStream) : Nat → Fin 3 :=
  fun index => if stream index then 2 else 0

theorem designatedTernaryExpansion_ne_one
    (stream : BitMatrix.Carrier.BitStream)
    (index : Nat) :
    designatedTernaryExpansion stream index ≠ 1 := by
  cases bit : stream index <;> simp [designatedTernaryExpansion, bit]

theorem designatedTernaryExpansion_value
    (stream : BitMatrix.Carrier.BitStream)
    (index : Nat) :
    (designatedTernaryExpansion stream index : Nat) =
      if stream index then 2 else 0 := by
  cases bit : stream index <;> simp [designatedTernaryExpansion, bit]

/-- The exact real series `Theta(b) = sum 2*b(n)/3^(n+1)`. -/
noncomputable def designatedCantorScalar
    (stream : BitMatrix.Carrier.BitStream) : Real :=
  Real.ofDigits (designatedTernaryExpansion stream)

theorem designatedCantorScalar_series
    (stream : BitMatrix.Carrier.BitStream) :
    designatedCantorScalar stream =
      ∑' index : Nat,
        (if stream index then (2 : Real) else 0) / (3 : Real) ^ (index + 1) := by
  simp only [designatedCantorScalar, Real.ofDigits, Real.ofDigitsTerm, div_eq_mul_inv]
  apply tsum_congr
  intro index
  by_cases bit : stream index <;>
    simp [designatedTernaryExpansion, bit]

theorem designatedCantorScalar_mem_cantorSet
    (stream : BitMatrix.Carrier.BitStream) :
    designatedCantorScalar stream ∈ cantorSet :=
  ofDigits_zero_two_sequence_mem_cantorSet
    (designatedTernaryExpansion_ne_one stream)

theorem designatedCantorScalar_injective :
    Function.Injective designatedCantorScalar := by
  intro left right equality
  have digitEquality := ofDigits_zero_two_sequence_unique
    (designatedTernaryExpansion_ne_one left)
    (designatedTernaryExpansion_ne_one right)
    equality
  funext index
  have atIndex := congrFun digitEquality index
  by_cases leftBit : left index <;> by_cases rightBit : right index <;>
    simp [designatedTernaryExpansion, leftBit, rightBit] at atIndex ⊢

end BitMatrix.Topology
