# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.SupportedClaims

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acd6a2790c1cec55a715e136068aab4b6c2183e7` · SHA-256 `81ae62835a62cdb8b1b71ad24987736103e896cdae00d75a18328b34cdf6e78f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI Codex. -/
import Init

/-!
# Claims supported by nonempty observation fibers

An observer may distinguish only some admissible traces. A claim is supported
at an observation when at least one admissible trace produces that observation
and the claim holds on every such trace. Refutation is support for the negated
claim. In particular, an impossible observation supports neither a claim nor
its negation.

The soundness statements require an actual trace to be admissible and to have
the stated observation. This module does not establish coverage of any real
execution model, reliability of any observation mechanism, authority to obtain
an observation, or any clinical or ethical duty. The finite examples below are
abstract mathematical fixtures, not records of external actions.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.Observation

universe u v w

variable {Trace : Type u} {View : Type v} {CoarseView : Type w}

/-- An admissible trace belongs to the fiber of the given observation. -/
def Compatible (admissible : Trace → Prop) (observe : Trace → View)
    (seen : View) (trace : Trace) : Prop :=
  admissible trace ∧ observe trace = seen

/-- The observation is realized by at least one admissible trace. -/
def NonemptyFiber (admissible : Trace → Prop) (observe : Trace → View)
    (seen : View) : Prop :=
  ∃ trace, Compatible admissible observe seen trace

/-- Support includes nonemptiness; a universal claim over an empty fiber is
insufficient. -/
def Supports (admissible : Trace → Prop) (observe : Trace → View)
    (claim : Trace → Prop) (seen : View) : Prop :=
  NonemptyFiber admissible observe seen ∧
    ∀ trace, Compatible admissible observe seen trace → claim trace

/-- Refutation supports the pointwise negation on the same nonempty fiber. -/
def Refutes (admissible : Trace → Prop) (observe : Trace → View)
    (claim : Trace → Prop) (seen : View) : Prop :=
  Supports admissible observe (fun trace => ¬ claim trace) seen

theorem supports_nonempty (admissible : Trace → Prop) (observe : Trace → View)
    (claim : Trace → Prop) (seen : View)
    (supported : Supports admissible observe claim seen) :
    NonemptyFiber admissible observe seen :=
  supported.1

theorem refutes_nonempty (admissible : Trace → Prop) (observe : Trace → View)
    (claim : Trace → Prop) (seen : View)
    (refuted : Refutes admissible observe claim seen) :
    NonemptyFiber admissible observe seen :=
  refuted.1

/-- Soundness is conditional on the actual trace lying in the modeled fiber. -/
theorem supports_sound (admissible : Trace → Prop) (observe : Trace → View)
    (claim : Trace → Prop) (seen : View) (actual : Trace)
    (supported : Supports admissible observe claim seen)
    (actual_admissible : admissible actual) (actual_observation : observe actual = seen) :
    claim actual :=
  supported.2 actual ⟨actual_admissible, actual_observation⟩

theorem refutes_sound (admissible : Trace → Prop) (observe : Trace → View)
    (claim : Trace → Prop) (seen : View) (actual : Trace)
    (refuted : Refutes admissible observe claim seen)
    (actual_admissible : admissible actual) (actual_observation : observe actual = seen) :
    ¬ claim actual :=
  refuted.2 actual ⟨actual_admissible, actual_observation⟩

theorem not_supports_of_empty_fiber (admissible : Trace → Prop)
    (observe : Trace → View) (claim : Trace → Prop) (seen : View)
    (empty : ¬ NonemptyFiber admissible observe seen) :
    ¬ Supports admissible observe claim seen :=
  fun supported => empty supported.1

theorem not_refutes_of_empty_fiber (admissible : Trace → Prop)
    (observe : Trace → View) (claim : Trace → Prop) (seen : View)
    (empty : ¬ NonemptyFiber admissible observe seen) :
    ¬ Refutes admissible observe claim seen :=
  fun refuted => empty refuted.1

/-- Opposite outcomes with the same observation exclude both support and
refutation, even though the fiber is nonempty. -/
theorem ambiguity_of_opposite_compatible (admissible : Trace → Prop)
    (observe : Trace → View) (claim : Trace → Prop) (seen : View)
    (positive negative : Trace)
    (positive_compatible : Compatible admissible observe seen positive)
    (negative_compatible : Compatible admissible observe seen negative)
    (positive_claim : claim positive) (negative_claim : ¬ claim negative) :
    ¬ Supports admissible observe claim seen ∧
      ¬ Refutes admissible observe claim seen :=
  ⟨fun supported => negative_claim (supported.2 negative negative_compatible),
    fun refuted => refuted.2 positive positive_compatible positive_claim⟩

/-- A supported claim and a refutation cannot coexist at one observation. -/
theorem supports_refutes_inconsistent (admissible : Trace → Prop)
    (observe : Trace → View) (claim : Trace → Prop) (seen : View) :
    ¬ (Supports admissible observe claim seen ∧
      Refutes admissible observe claim seen) := by
  intro both
  cases both.1.1 with
  | intro trace compatible =>
      exact both.2.2 trace compatible (both.1.2 trace compatible)

theorem compatible_coarsening (admissible : Trace → Prop)
    (observe : Trace → View) (coarsen : View → CoarseView)
    (seen : View) (trace : Trace)
    (compatible : Compatible admissible observe seen trace) :
    Compatible admissible (fun value => coarsen (observe value)) (coarsen seen) trace :=
  ⟨compatible.1, congrArg coarsen compatible.2⟩

theorem nonempty_fiber_coarsening (admissible : Trace → Prop)
    (observe : Trace → View) (coarsen : View → CoarseView) (seen : View)
    (nonempty : NonemptyFiber admissible observe seen) :
    NonemptyFiber admissible (fun value => coarsen (observe value)) (coarsen seen) := by
  cases nonempty with
  | intro trace compatible =>
      exact ⟨trace, compatible_coarsening admissible observe coarsen seen trace compatible⟩

/-- A coarser view cannot add support relative to a realizable finer view.
The finer nonemptiness witness is essential: coarsening can merge an impossible
finer observation with a possible one. -/
theorem supports_of_coarsened_support (admissible : Trace → Prop)
    (observe : Trace → View) (coarsen : View → CoarseView)
    (claim : Trace → Prop) (seen : View)
    (fine_nonempty : NonemptyFiber admissible observe seen)
    (coarse_support : Supports admissible (fun value => coarsen (observe value))
      claim (coarsen seen)) :
    Supports admissible observe claim seen :=
  ⟨fine_nonempty, fun trace compatible =>
    coarse_support.2 trace
      (compatible_coarsening admissible observe coarsen seen trace compatible)⟩

theorem refutes_of_coarsened_refutation (admissible : Trace → Prop)
    (observe : Trace → View) (coarsen : View → CoarseView)
    (claim : Trace → Prop) (seen : View)
    (fine_nonempty : NonemptyFiber admissible observe seen)
    (coarse_refutation : Refutes admissible (fun value => coarsen (observe value))
      claim (coarsen seen)) :
    Refutes admissible observe claim seen :=
  supports_of_coarsened_support admissible observe coarsen
    (fun trace => ¬ claim trace) seen fine_nonempty coarse_refutation

namespace FiniteExamples

/-- Both Boolean traces are admissible abstract alternatives. -/
def admitted (_ : Bool) : Prop := True

/-- A lost receipt provides the same observation for either abstract outcome. -/
def lostReceipt (_ : Bool) : Bool := false

/-- The Boolean trace denotes the abstract outcome in this finite fixture. -/
def occurred (trace : Bool) : Prop := trace = true

theorem lost_receipt_nonempty : NonemptyFiber admitted lostReceipt false :=
  ⟨false, True.intro, rfl⟩

theorem lost_receipt_ambiguous :
    ¬ Supports admitted lostReceipt occurred false ∧
      ¬ Refutes admitted lostReceipt occurred false := by
  apply ambiguity_of_opposite_compatible admitted lostReceipt occurred false true false
  · exact ⟨True.intro, rfl⟩
  · exact ⟨True.intro, rfl⟩
  · rfl
  · intro impossible
    cases impossible

theorem impossible_observation_empty : ¬ NonemptyFiber admitted lostReceipt true := by
  intro nonempty
  cases nonempty with
  | intro trace compatible =>
      have impossible : false = true := compatible.2
      cases impossible

/-- The impossible observation yields neither conclusion, for every claim. -/
theorem impossible_observation_no_certainty (claim : Bool → Prop) :
    ¬ Supports admitted lostReceipt claim true ∧
      ¬ Refutes admitted lostReceipt claim true :=
  ⟨not_supports_of_empty_fiber admitted lostReceipt claim true impossible_observation_empty,
    not_refutes_of_empty_fiber admitted lostReceipt claim true impossible_observation_empty⟩

/-- A full observation does support its corresponding outcome. -/
theorem fine_observation_supports :
    Supports admitted (fun trace : Bool => trace) occurred true :=
  ⟨⟨true, True.intro, rfl⟩, fun _ compatible => compatible.2⟩

/-- Coarsening the full observation to the constant lost-receipt view loses
support; the converse of `supports_of_coarsened_support` is false. -/
theorem coarsening_can_lose_support :
    Supports admitted (fun trace : Bool => trace) occurred true ∧
      ¬ Supports admitted (fun trace : Bool => lostReceipt trace) occurred false :=
  ⟨fine_observation_supports, lost_receipt_ambiguous.1⟩

/-- A coarse supported tautology does not supply the missing witness for an
impossible finer observation. This shows why the coarsening theorem needs its
explicit finer nonemptiness hypothesis. -/
theorem fine_witness_is_necessary :
    Supports admitted (fun trace : Bool => lostReceipt (lostReceipt trace))
        (fun _ => True) (lostReceipt true) ∧
      ¬ Supports admitted lostReceipt (fun _ => True) true :=
  ⟨⟨⟨false, True.intro, rfl⟩, fun _ _ => True.intro⟩,
    not_supports_of_empty_fiber admitted lostReceipt (fun _ => True) true
      impossible_observation_empty⟩

end FiniteExamples

end GRWTSK.Logic.Observation
```
