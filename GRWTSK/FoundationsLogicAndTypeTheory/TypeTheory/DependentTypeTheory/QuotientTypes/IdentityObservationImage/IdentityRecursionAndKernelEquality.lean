/-
IdentityRecursionAndKernelEquality — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556
Organized SHA-256: 6731d5d5721fb0cb21f7269b937b64d94c6895fc4e35cd695587a5c265acff4c
PMD: 510.0.070.020.080 quotient types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Full existing Q/State/universe/dimension signatures, identity transition, constant-resolution encoding, private finite-trace induction and both directions of exact causal equivalence iff encoder equality. The private helper remains in this same module as its caller. No equality of concrete states, information recovery or general-dynamics reduction is inferred. -/

import DAF.Causal.QuantizerTower
import BitMatrix.Quantization.Core

/-!
# Boolean-matrix quantizers as causal observations

This domain adapter connects the generic DAF causal recursion to
`BitMatrix.Quantizer`.  It remains downstream of both abstractions: the owning
DAF causal modules do not import the BitMatrix domain.
-/

open ObservableRecursion

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.IdentityObservationImage.Variant9e52da1da78b99e6


open BitMatrix

universe uQ

/-- The identity recursion observed by one existing Boolean-matrix quantizer. -/
def quantizerIdentitySystem
    {State : Type uQ}
    {m n : Nat}
    (Q : Quantizer State m n) :
    System PUnit State PUnit where
  Observation := fun _ => BitMatrix m n
  step := fun _ state => state
  observe := fun _ => Q.encode


private theorem quantizerIdentitySystem_run
    {State : Type uQ}
    {m n : Nat}
    (Q : Quantizer State m n)
    (inputs : List PUnit)
    (x : State) :
    (quantizerIdentitySystem Q).run inputs x = x := by
  induction inputs generalizing x with
  | nil => rfl
  | cons input rest ih =>
      simpa [quantizerIdentitySystem] using ih x


/-- For identity recursion, causal equivalence is static indistinguishability. -/
theorem causalEquivalent_identity_iff_indistinguishable
    {State : Type uQ}
    {m n : Nat}
    (Q : Quantizer State m n)
    (x y : State) :
    (quantizerIdentitySystem Q).CausalEquivalent x y ↔
      Q.Indistinguishable x y := by
  constructor
  · intro h
    change Q.encode x = Q.encode y
    exact h [] PUnit.unit
  · intro h inputs ρ
    rw [quantizerIdentitySystem_run, quantizerIdentitySystem_run]
    exact h


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.IdentityObservationImage.Variant9e52da1da78b99e6
