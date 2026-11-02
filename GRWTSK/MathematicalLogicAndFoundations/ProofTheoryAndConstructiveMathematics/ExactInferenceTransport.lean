import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.FiniteHornSemantics
import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.TheoreticalQualification

/-!
# Exact representation transport of conjunctive inference

Local attribution: grwtsk contributors. MIT.

Connect the finite inference/certificate family to the independently authored
ExactRepresentation source. A genuine bijection of atom types preserves every
joint-premise application, derivability, and finite goal-query membership.
Transport of proof-bearing applications additionally requires the actual
source/model proposition comparison for each atom; no declaration-name match
or string-based SourceClaim can substitute for that hypothesis.

This is an exact renaming/representation theorem on supplied finite inventories,
not arbitrary Lean.Expr elaboration, finite-source extraction, source authentication,
SAT complexity, or performance improvement. General lossy maps are not covered.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom audit:
NOT_RUN. Historical verification is not inherited by imported source changes.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

open GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.TheoreticalQualification
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.LeastDependencyClosure

universe u v

/-- Map both the whole conjunction and its conclusion. A list of separate
one-premise rules is NOT the image of one conjunctive source application. -/
def encodeRule {Source : Type u} {Model : Type v}
    (r : ExactRepresentation Source Model) (rule : Rule Source) : Rule Model :=
  ⟨rule.premises.map r.encode, r.encode rule.conclusion⟩

def encodeRules {Source : Type u} {Model : Type v}
    (r : ExactRepresentation Source Model) (rules : List (Rule Source)) :
    List (Rule Model) :=
  rules.map (encodeRule r)

def encodeFacts {Source : Type u} {Model : Type v}
    (r : ExactRepresentation Source Model) (facts : List Source) : List Model :=
  facts.map r.encode

/-- A derivation over the source lists gives a derivation over their genuine
image. This half uses no inverse representation law. -/
theorem derivable_encode_forward {Source : Type u} {Model : Type v}
    (r : ExactRepresentation Source Model)
    (rules : List (Rule Source)) (facts : List Source) {a : Source}
    (h : Derivable (fun rule => rule ∈ rules) (fun p => p ∈ facts) a) :
    Derivable (fun rule => rule ∈ encodeRules r rules)
      (fun p => p ∈ encodeFacts r facts) (r.encode a) := by
  induction h with
  | assumption hf =>
      apply Derivable.assumption
      change r.encode _ ∈ facts.map r.encode
      exact List.mem_map.mpr ⟨_, hf, rfl⟩
  | application rule hr _ ih =>
      apply Derivable.application (encodeRule r rule)
        (List.mem_map.mpr ⟨rule, hr, rfl⟩)
      intro p hp
      change p ∈ rule.premises.map r.encode at hp
      obtain ⟨q, hq, heq⟩ := List.mem_map.mp hp
      subst p
      exact ih q hq

/-- Conversely, only a genuine decoder left inverse licenses transport back.
This proof uses the existing least-model soundness theorem, not a guessed
inverse map for arbitrary source labels. -/
theorem derivable_encode_reverse {Source : Type u} {Model : Type v}
    (r : ExactRepresentation Source Model)
    (rules : List (Rule Source)) (facts : List Source) {b : Model}
    (h : Derivable (fun rule => rule ∈ encodeRules r rules)
      (fun p => p ∈ encodeFacts r facts) b) :
    Derivable (fun rule => rule ∈ rules) (fun p => p ∈ facts) (r.decode b) := by
  apply derivable_sound
    (holds := fun x : Model =>
      Derivable (fun rule => rule ∈ rules) (fun p => p ∈ facts) (r.decode x))
    (by
      intro x hx
      change x ∈ facts.map r.encode at hx
      obtain ⟨p, hp, heq⟩ := List.mem_map.mp hx
      rw [← heq, r.decode_encode]
      exact Derivable.assumption hp)
    (by
      intro mappedRule hr hp
      change mappedRule ∈ rules.map (encodeRule r) at hr
      obtain ⟨original, horig, heq⟩ := List.mem_map.mp hr
      subst mappedRule
      change Derivable (fun rule => rule ∈ rules)
        (fun p => p ∈ facts) (r.decode (r.encode original.conclusion))
      rw [r.decode_encode]
      apply Derivable.application original horig
      intro p hmem
      have hencoded : r.encode p ∈ (encodeRule r original).premises := by
        change r.encode p ∈ original.premises.map r.encode
        exact List.mem_map.mpr ⟨p, hmem, rfl⟩
      have hp' := hp (r.encode p) hencoded
      simpa only [r.decode_encode] using hp')
    h

/-- Both directions: semantic derivability is invariant under an actual atom
bijection with every source rule and premise transported in place. -/
theorem derivable_encode_iff {Source : Type u} {Model : Type v}
    (r : ExactRepresentation Source Model)
    (rules : List (Rule Source)) (facts : List Source) (a : Source) :
    Derivable (fun rule => rule ∈ rules) (fun p => p ∈ facts) a ↔
      Derivable (fun rule => rule ∈ encodeRules r rules)
        (fun p => p ∈ encodeFacts r facts) (r.encode a) := by
  constructor
  · intro h
    exact derivable_encode_forward r rules facts h
  · intro h
    have hd := derivable_encode_reverse r rules facts h
    simpa only [r.decode_encode] using hd

/-- The two optimized Boolean queries agree on corresponding selected goals.
Each side independently requires a complete finite inventory of its own type.
No bijection of arbitrary metadata, Lean declarations or missing source rules
is inferred by this theorem. -/
theorem decideSourceGoalPruned_encode_iff {Source : Type u} {Model : Type v}
    [DecidableEq Source] [DecidableEq Model]
    (r : ExactRepresentation Source Model)
    (sourceInventory : FiniteInventory Source)
    (modelInventory : FiniteInventory Model)
    (rules : List (Rule Source)) (facts : List Source)
    (sourceGoals : Source → Prop) [DecidablePred sourceGoals]
    (modelGoals : Model → Prop) [DecidablePred modelGoals]
    (a : Source) (hsource : sourceGoals a) (hmodel : modelGoals (r.encode a)) :
    (decideSourceGoalPruned sourceInventory rules facts sourceGoals a = true ↔
      decideSourceGoalPruned modelInventory
        (encodeRules r rules) (encodeFacts r facts)
        modelGoals (r.encode a) = true) := by
  exact (decideSourceGoalPruned_eq_true_iff
    sourceInventory rules facts sourceGoals a hsource).trans
    ((derivable_encode_iff r rules facts a).trans
      (decideSourceGoalPruned_eq_true_iff modelInventory
        (encodeRules r rules) (encodeFacts r facts)
        modelGoals (r.encode a) hmodel).symm)

/-- Proof-carrying transport additionally needs a pointwise property bridge.
SourceClaim is deliberately not copied; relabelled atoms do not authenticate
the original claimed Git/declaration identity. -/
def encodeInstantiatedApplication {Source : Type u} {Model : Type v}
    (r : ExactRepresentation Source Model)
    (SourceMeaning : Source → Prop) (ModelMeaning : Model → Prop)
    (comparison : ∀ a, SourceMeaning a ↔ ModelMeaning (r.encode a))
    (application : InstantiatedApplication Source SourceMeaning) :
    InstantiatedApplication Model ModelMeaning where
  sourceClaim := none
  rule := encodeRule r application.rule
  consequence := by
    intro hmodel
    have hsource : ∀ p, p ∈ application.rule.premises → SourceMeaning p := by
      intro p hp
      apply (comparison p).mpr
      apply hmodel (r.encode p)
      change r.encode p ∈ application.rule.premises.map r.encode
      exact List.mem_map.mpr ⟨p, hp, rfl⟩
    exact (comparison application.rule.conclusion).mp
      (application.consequence hsource)

def encodeInstantiatedFact {Source : Type u} {Model : Type v}
    (r : ExactRepresentation Source Model)
    (SourceMeaning : Source → Prop) (ModelMeaning : Model → Prop)
    (comparison : ∀ a, SourceMeaning a ↔ ModelMeaning (r.encode a))
    (fact : InstantiatedFact Source SourceMeaning) :
    InstantiatedFact Model ModelMeaning where
  sourceClaim := none
  atom := r.encode fact.atom
  evidence := (comparison fact.atom).mp fact.evidence

/-- The source-side proof of every fact transports without a new assumption
about the proposition at its image. -/
theorem encodeInstantiatedFact_sound {Source : Type u} {Model : Type v}
    (r : ExactRepresentation Source Model)
    (P : Source → Prop) (Q : Model → Prop)
    (comparison : ∀ a, P a ↔ Q (r.encode a))
    (fact : InstantiatedFact Source P) :
    Q (encodeInstantiatedFact r P Q comparison fact).atom :=
  (encodeInstantiatedFact r P Q comparison fact).evidence

/-- Reuse the independent theoretical-qualification theorem to make the
universal source-to-model return conditional on a proven property comparison,
rather than on the representation round-trip alone. -/
theorem forall_meaning_encode_iff {Source : Type u} {Model : Type v}
    (r : ExactRepresentation Source Model)
    (P : Source → Prop) (Q : Model → Prop)
    (comparison : ∀ a, P a ↔ Q (r.encode a)) :
    (∀ a, P a) ↔ (∀ b, Q b) :=
  source_forall_iff_model_forall r P Q comparison

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
