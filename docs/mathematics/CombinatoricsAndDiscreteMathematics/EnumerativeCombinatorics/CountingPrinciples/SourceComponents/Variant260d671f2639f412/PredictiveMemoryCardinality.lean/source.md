# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.SourceComponents.Variant260d671f2639f412.PredictiveMemoryCardinality

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a8266f7ef3b336c12301ffdeb4addd133cb3852` · SHA-256 `a86bbeafa73d39d791d334de900261dc4e9d61af8ec937571394b509111482e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
PredictiveMemoryCardinality — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962
Organized SHA-256: 2206834a934a04d495fa1be69d1c14dbae99411013add88ab0f2898210608834
PMD: 510.7.010.010 counting principles (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- All exact finite cardinality inequalities, preserving every Fintype/Finite premise, local instance and source export alias. Exact original namespaces and imports remain; no added containing namespace or open binding. Only declared same-source public companions are added. Source documentation may describe archived components. Provider resolution, namespace coimport compatibility and elaboration are unreplayed. -/

import DAF.Causal.CausalState
import Mathlib.Data.Fintype.Card
import Mathlib.SetTheory.Cardinal.Finite
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.SourceComponents.Variant260d671f2639f412.PredictiveRepresentationDynamics
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.SourceComponents.Variant260d671f2639f412.EffectiveMemoryFactor

/-!
# Predictive representations and causal-state minimality

A predictive representation stores a memory value that evolves under every
input and reproduces every current observation.  Equality of represented
memories therefore implies equality of all future observed behavior, but the
converse is deliberately not asserted without an explicit exactness
hypothesis.

Restricting memory to the encoder image yields a canonical surjective factor
onto causal observational state.  This factor commutes with every transition
and read operation, is unique on the realized image, and gives the finite
information bound

`card CausalState ≤ card EffectiveMemory ≤ card Memory`.

An exact representation is precisely one whose kernel is causal equivalence;
only then does the universal factor become an equivalence.
-/

namespace ObservableRecursion

universe uI uS uR uO uM

variable {Input : Type uI}
variable {State : Type uS}
variable {Resolution : Type uR}

namespace PredictiveRepresentation

variable {M : System Input State Resolution}
variable (R : PredictiveRepresentation M)

/-! ## Executing represented memory -/

/-- A surjective effective-memory factor bounds the number of causal states. -/
theorem card_causalState_le_effectiveMemory
    [Fintype (EffectiveMemory R)]
    [Fintype (System.CausalState M)] :
    Fintype.card (System.CausalState M) ≤
      Fintype.card (EffectiveMemory R) :=
  Fintype.card_le_of_surjective R.effectiveToCausal
    R.effectiveToCausal_surjective

/-- The realized memory image has no more elements than the ambient memory. -/
theorem card_effectiveMemory_le_memory
    [Fintype (PredictiveRepresentation.Memory R)]
    [Fintype (EffectiveMemory R)] :
    Fintype.card (EffectiveMemory R) ≤
      Fintype.card (PredictiveRepresentation.Memory R) :=
  Fintype.card_le_of_injective Subtype.val Subtype.val_injective

/-- Every finite predictive memory has at least as many states as causal state. -/
theorem card_causalState_le_memory
    [Fintype (PredictiveRepresentation.Memory R)]
    [Fintype (EffectiveMemory R)]
    [Fintype (System.CausalState M)] :
    Fintype.card (System.CausalState M) ≤
      Fintype.card (PredictiveRepresentation.Memory R) :=
  (R.card_causalState_le_effectiveMemory).trans
    R.card_effectiveMemory_le_memory

/--
Finite ambient memory alone suffices to instantiate the image and quotient
cardinalities: the effective image embeds into memory and surjects onto causal
state.  The concrete state type itself need not be finite.
-/
theorem card_causalState_le_memory_of_finite_memory
    [Fintype (PredictiveRepresentation.Memory R)] :
    Nat.card (System.CausalState M) ≤
      Fintype.card (PredictiveRepresentation.Memory R) := by
  letI : Finite (EffectiveMemory R) :=
    Finite.of_injective Subtype.val Subtype.val_injective
  letI : Finite (System.CausalState M) :=
    Finite.of_surjective R.effectiveToCausal
      R.effectiveToCausal_surjective
  letI : Fintype (EffectiveMemory R) :=
    Fintype.ofFinite (EffectiveMemory R)
  letI : Fintype (System.CausalState M) :=
    Fintype.ofFinite (System.CausalState M)
  rw [Nat.card_eq_fintype_card]
  exact R.card_causalState_le_memory

/-- Finite-state specialization when concrete state is also finite. -/
theorem card_causalState_le_memory_of_finite_state
    [Finite State]
    [Fintype (PredictiveRepresentation.Memory R)] :
    Nat.card (System.CausalState M) ≤
      Fintype.card (PredictiveRepresentation.Memory R) :=
  R.card_causalState_le_memory_of_finite_memory

/--
Instance-light form of the same theorem: finite memory induces finite
image/quotient types automatically, so no chosen `Fintype` enumeration of
either quotient and no finiteness assumption on concrete state is required.
-/
theorem natCard_causalState_le_memory
    [Finite (PredictiveRepresentation.Memory R)] :
    Nat.card (System.CausalState M) ≤
      Nat.card (PredictiveRepresentation.Memory R) := by
  letI : Finite R.EffectiveMemory :=
    Finite.of_injective Subtype.val Subtype.val_injective
  letI : Finite M.CausalState :=
    Finite.of_surjective R.effectiveToCausal
      R.effectiveToCausal_surjective
  exact
    (Nat.card_le_card_of_surjective R.effectiveToCausal
        R.effectiveToCausal_surjective).trans
      (Nat.card_le_card_of_injective Subtype.val Subtype.val_injective)

end PredictiveRepresentation

end ObservableRecursion

/-! Public aliases matching the project-wide representation API. -/

export ObservableRecursion (PredictiveRepresentation)

namespace PredictiveRepresentation

export ObservableRecursion.PredictiveRepresentation
  (EffectiveMemory
   toEffectiveMemory
   effectiveStep
   effectiveRead
   effectiveToCausal
   effectiveToCausal_toEffectiveMemory
   effectiveToCausal_surjective
   effectiveToCausal_step
   effectiveToCausal_read
   effectiveToCausal_unique
   causalState_terminal
   Exact
   effectiveToCausal_injective_of_exact
   effectiveMemoryEquivCausalState
   card_causalState_le_effectiveMemory
   card_effectiveMemory_le_memory
   card_causalState_le_memory
   card_causalState_le_memory_of_finite_memory
   card_causalState_le_memory_of_finite_state
   natCard_causalState_le_memory)

end PredictiveRepresentation
```
