# Complete source: GRWTSK.Logic.Certificates.ProofCoverage

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2442265284f2c5e155ac68c63949e1cc5b467e27` · SHA-256 `245a8ccf241beb97e823bb25fb78de59e3e2c858123e101a7895394739f643ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Finset.Basic

/-!
# CCC evidence payloads

Formal core of CCC/0.1, directed and conceptually selected by grwtsk contributors;
the supplied specification credits OpenAI ChatGPT for technical synthesis.
This Lean implementation separates proposal labels, finite checks, implications,
universal proofs, and exact target proofs. Revision parameters are identity tokens,
not an implementation of provenance authentication or publication acceptance.
There are no coercions between cap types. The explicit adapters below consume
the missing coverage or premise proofs. Permissions are independent payloads.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v w

/-- Evidence kinds are tags, not a permission or theorem-strength ordering. -/
inductive EvidenceGrade where
  | exploratory
  | finite
  | conditional
  | uniform
  | terminal
  deriving DecidableEq, Repr

/-- An unresolved proposal contains no proof of its target. -/
structure ExploratoryCap {Revision : Type u} (revision : Revision) (Target : Prop) where
  description : String

/-- A finite cap proves precisely its named finite domain. -/
structure FiniteCap {Revision : Type u} (revision : Revision) (Index : Type v)
    (predicate : Index → Prop) where
  domain : Finset Index
  checked : ∀ x ∈ domain, predicate x

/-- A premise name is provenance metadata; its proposition is the actual premise. -/
structure NamedPremise where
  name : String
  statement : Prop

/-- All listed premises must be proved, independently of their names. -/
def PremisesHold (premises : List NamedPremise) : Prop :=
  ∀ p ∈ premises, p.statement

/-- An implication does not assert that its premises hold. -/
structure ConditionalCap {Revision : Type u} (revision : Revision) (Target : Prop) where
  premises : List NamedPremise
  consequence : PremisesHold premises → Target

/-- Universal evidence includes a proof on the entire declared index type. -/
structure UniformCap {Revision : Type u} (revision : Revision) (Index : Type v)
    (predicate : Index → Prop) where
  proved : ∀ x, predicate x

/-- A terminal mathematical cap contains the exact target proof. External CI,
human release authorization, and semantic source recognition remain separate. -/
structure TerminalCap {Revision : Type u} (revision : Revision) (Target : Prop) where
  proved : Target

/-- Finite evidence becomes universal only with an actual coverage theorem. -/
theorem finite_to_uniform {Revision : Type u} {revision : Revision} {Index : Type v}
    {predicate : Index → Prop} (cap : FiniteCap revision Index predicate)
    (coverage : ∀ x, x ∈ cap.domain) : UniformCap revision Index predicate :=
  ⟨fun x ↦ cap.checked x (coverage x)⟩

/-- Conditional evidence becomes terminal only after every listed premise is proved. -/
theorem conditional_to_terminal {Revision : Type u} {revision : Revision} {Target : Prop}
    (cap : ConditionalCap revision Target) (premises : PremisesHold cap.premises) :
    TerminalCap revision Target :=
  ⟨cap.consequence premises⟩

/-- The target here is exactly the cap's universally quantified proposition. -/
theorem uniform_to_terminal {Revision : Type u} {revision : Revision} {Index : Type v}
    {predicate : Index → Prop} (cap : UniformCap revision Index predicate) :
    TerminalCap revision (∀ x, predicate x) :=
  ⟨cap.proved⟩

/-- An operational permission proves only the independently specified action guard. -/
structure OperationalPermit {Effect : Type u} (Authorized : Effect → Prop)
    (effect : Effect) where
  authorized : Authorized effect

/-- Rights permission is a separate guard, not a consequence of mathematical evidence. -/
structure RightsPermit {Effect : Type u} (Permitted : Effect → Prop) (effect : Effect) where
  permitted : Permitted effect

/-- An effect requires both guards. Mathematical caps are deliberately absent. -/
structure EffectPermit {Effect : Type u} (Authorized Permitted : Effect → Prop)
    (effect : Effect) where
  operational : OperationalPermit Authorized effect
  rights : RightsPermit Permitted effect

theorem effect_permit_authorized {Effect : Type u} {Authorized Permitted : Effect → Prop}
    {effect : Effect} (permit : EffectPermit Authorized Permitted effect) : Authorized effect :=
  permit.operational.authorized

theorem effect_permit_rights {Effect : Type u} {Authorized Permitted : Effect → Prop}
    {effect : Effect} (permit : EffectPermit Authorized Permitted effect) : Permitted effect :=
  permit.rights.permitted

/-- No cap can provide a terminal proof of falsehood. -/
theorem no_false_terminal {Revision : Type u} (revision : Revision) :
    ¬ Nonempty (TerminalCap revision False) := by
  rintro ⟨cap⟩
  exact cap.proved

/-- Model fixture: even an exact true theorem does not create a denied permission. -/
theorem denied_effect_has_no_permit {Effect : Type u} (effect : Effect) :
    ¬ Nonempty (EffectPermit (fun _ : Effect ↦ True) (fun _ ↦ False) effect) := by
  rintro ⟨permit⟩
  exact permit.rights.permitted

end GRWTSK.ProofHorizon.CorkscrewChamberCap
```
