# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Authorization.Basic

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9741b959949e1ab58e244447dada201ccb1f51d3` · SHA-256 `4674511b861015572d708f1b4cab07ff70d661735f7fa2756e3088eb293e78af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
universe u

namespace GRWTSK.Genesis

def MayAct {Action : Type u}
    (authenticated current : Prop)
    (scope : Action → Prop) (a : Action) : Prop :=
  authenticated ∧ current ∧ scope a

theorem requires_authentication
    {Action : Type u}
    {authenticated current : Prop}
    {scope : Action → Prop} {a : Action}
    (h : MayAct authenticated current scope a) :
    authenticated :=
  h.1

theorem revocation_blocks
    {Action : Type u}
    {authenticated current : Prop}
    {scope : Action → Prop} {a : Action}
    (revoked : ¬ current) :
    ¬ MayAct authenticated current scope a := by
  intro h
  exact revoked h.2.1

theorem no_authority_expansion
    {Action : Type u}
    {authenticated current : Prop}
    {root child : Action → Prop} {a : Action}
    (narrowed : ∀ x, child x → root x)
    (h : MayAct authenticated current child a) :
    MayAct authenticated current root a :=
  ⟨h.1, h.2.1, narrowed a h.2.2⟩

-- Fixture-only positive control; this value does not authenticate a principal.
example : MayAct True True (fun (_ : Unit) => True) () :=
  ⟨True.intro, True.intro, True.intro⟩

#print axioms requires_authentication
#print axioms revocation_blocks
#print axioms no_authority_expansion

end GRWTSK.Genesis

namespace GRWTSK.Genesis

-- Orthogonal propositions; no field supplies a fact in another field.
structure ApprovalJudgments where
  mathematicalValidity : Prop
  evidentiaryAdmission : Prop
  explanatoryCompleteness : Prop
  operationalAuthorization : Prop
  publicAuthorization : Prop

-- A countermodel to automatic promotion, even with three mathematical judgments true.
theorem mathematical_judgments_do_not_force_operational_or_public :
    ∃ j : ApprovalJudgments,
      j.mathematicalValidity ∧ j.evidentiaryAdmission ∧
      j.explanatoryCompleteness ∧
      ¬ j.operationalAuthorization ∧ ¬ j.publicAuthorization := by
  exact ⟨⟨True, True, True, False, False⟩,
    True.intro, True.intro, True.intro, id, id⟩

-- Admissibility can accompany a false proposition; it is not a truth predicate.
theorem investigation_admission_is_not_truth :
    ∃ (claim diction bridge : Prop),
      (diction ∧ bridge) ∧ ¬ claim := by
  exact ⟨False, True, True, ⟨True.intro, True.intro⟩, id⟩

-- Sound accepted entailment establishes its exact conclusion; no runtime grant follows.
theorem accepted_entailment {premises conclusion : Prop}
    (accepted : premises) (sound_derivation : premises → conclusion) :
    conclusion :=
  sound_derivation accepted

#print axioms mathematical_judgments_do_not_force_operational_or_public
#print axioms investigation_admission_is_not_truth
#print axioms accepted_entailment

end GRWTSK.Genesis
```
