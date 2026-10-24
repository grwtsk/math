# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.System.Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01848d0ade5fbe253e669e207a9c5524e2405d9d` · SHA-256 `af8b8ff824671288315e8ca13fa4cfb437d89526125f50bc6ef67eaf0b5ebd52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FiniteProbabilityLaw.Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.FiniteProbabilityLaw.Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ConnesBitfield/System.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathematics.MobiusOntology.TwistedBitfield

/-!
# Finite random bitfield probability

The probability law is represented exactly by normalized nonnegative weights
on a finite bitfield.  No product-independence assumption is present.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FiniteProbabilityLaw.Variant220ad31828a41a5ffa18bed736eab159dbbcb0c444a134fff7b3a19ef8670cb6

namespace Mathematics.ConnesBitfield

open scoped BigOperators NNReal

universe u

structure FiniteProbabilityLaw
    (State : Type u) [Fintype State] where
  weight : State → ℝ≥0
  mass_one :
    ∑ state, weight state = 1

namespace FiniteProbabilityLaw

noncomputable def expectation
    {State : Type u} [Fintype State]
    (law : FiniteProbabilityLaw State)
    (observable : State → ℂ) : ℂ :=
  by
    classical
    exact
      ∑ state, (law.weight state : ℂ) * observable state

noncomputable def realExpectation
    {State : Type u} [Fintype State]
    (law : FiniteProbabilityLaw State)
    (observable : State → ℝ) : ℝ :=
  by
    classical
    exact
      ∑ state, (law.weight state : ℝ) * observable state

noncomputable def eventMass
    {State : Type u} [Fintype State]
    (law : FiniteProbabilityLaw State)
    (event : State → Prop) : ℝ≥0 := by
  classical
  exact
    ∑ state,
      if event state then law.weight state else 0

end FiniteProbabilityLaw

abbrev Bitfield (bits : Nat) :=
  Mathematics.MobiusOntology.BooleanBitfield bits

structure FiniteBitfieldMetric (bits : Nat) where
  distance :
    Bitfield bits → Bitfield bits → ℝ
  distanceNonnegative :
    ∀ left right,
      0 ≤ distance left right
  distanceSelf :
    ∀ state,
      distance state state = 0
  distanceSeparated :
    ∀ {left right},
      distance left right = 0 →
      left = right
  distanceSymmetric :
    ∀ left right,
      distance left right =
        distance right left
  triangle :
    ∀ left middle right,
      distance left right ≤
        distance left middle +
          distance middle right

def flipBit
    {bits : Nat}
    (index : Fin bits)
    (state : Bitfield bits) :
    Bitfield bits :=
  Function.update state index (!(state index))

def centeredBit
    {bits : Nat}
    (state : Bitfield bits)
    (index : Fin bits) : ℝ :=
  if state index then -1 else 1

def walshCharacter
    {bits : Nat}
    (state : Bitfield bits)
    (support : Finset (Fin bits)) : ℝ :=
  ∏ index ∈ support, centeredBit state index

structure RandomBitfieldSystem where
  bits : Nat
  metric : FiniteBitfieldMetric bits
  law : FiniteProbabilityLaw (Bitfield bits)
  admissible : Bitfield bits → Prop
  lawSupportedOnAdmissible :
    ∀ {state},
      law.weight state ≠ 0 →
      admissible state
  phase : Bitfield bits → Bitfield bits
  phase_involutive :
    Function.Involutive phase
  phasePreservesAdmissibility :
    ∀ {state},
      admissible state →
      admissible (phase state)
  phase_law_invariant :
    ∀ state,
      law.weight (phase state) = law.weight state

/--
The arithmetic encoding remains a separate interface.  Equivariance,
admissibility, provenance, discrepancy, and scale preservation are all proof
fields rather than consequences of the finite carrier.
-/
structure ArithmeticBitfieldEncoding
    (ArithmeticState Scale : Type*)
    (system : RandomBitfieldSystem) where
  encode : Scale → ArithmeticState → Bitfield system.bits
  arithmeticTwist : ArithmeticState → ArithmeticState
  equivariant :
    ∀ scale state,
      encode scale (arithmeticTwist state) =
        system.phase (encode scale state)
  admissible : Scale → ArithmeticState → Prop
  bitfieldAdmissible :
    Bitfield system.bits → Prop
  bitfieldAdmissibilityAgrees :
    ∀ state,
      bitfieldAdmissible state ↔
        system.admissible state
  preservesAdmissibility :
    ∀ {scale state},
      admissible scale state →
      bitfieldAdmissible (encode scale state)
  provenancePreservation : Prop
  provenancePreserved :
    provenancePreservation
  discrepancyObservablePreservation : Prop
  discrepancyObservablePreserved :
    discrepancyObservablePreservation
  scalePreservation : Prop
  scalePreserved :
    scalePreservation

theorem ArithmeticBitfieldEncoding.preservesSystemAdmissibility
    {ArithmeticState Scale : Type*}
    {system : RandomBitfieldSystem}
    (encoding :
      ArithmeticBitfieldEncoding
        ArithmeticState Scale system)
    {scale : Scale}
    {state : ArithmeticState}
    (admissible :
      encoding.admissible scale state) :
    system.admissible
      (encoding.encode scale state) :=
  (encoding.bitfieldAdmissibilityAgrees
      (encoding.encode scale state)).mp
    (encoding.preservesAdmissibility admissible)

end Mathematics.ConnesBitfield
```
