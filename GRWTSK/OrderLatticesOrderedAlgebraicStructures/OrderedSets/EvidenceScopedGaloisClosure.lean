/- Copyright (c) 2026 grwtsk contributors. MIT.
Source-level mathematical candidate. Lean elaboration, fresh kernel replay,
transitive axiom audit and independent historical review: NOT_RUN. -/
import Mathlib

/-!
# Evidence-scoped Galois closure and the limits of recorded implications

MSC2020 06A15: Galois correspondences, closure operators (ordered sets).

## Mathematical consumer and exact objects

The MSC05 source FiniteContextCoverage.lean counts the UNION of independently
validated contexts of selected sources. That is an existential operation.
This file instead models contexts COMMON to every source in an explicit
inventory. The two constructions are not interchanged. This file imports
Mathlib rather than any previously uncompiled cross-cultural candidate.

For source set P, context set B, and a supplied binary incidence r, define

  eligible(P,B) = {s in P | for each c in B, r(s,c)}
  shared(A) = {c | for each s in A, r(s,c)}
  inferred(P,B) = shared(eligible(P,B)).

Incidence r(s,c) is a SOURCE VALIDATION PREMISE. Its existence as a field
does not authenticate a source, document transmission, or confer an identity.
A context is a declared audit attribute, not an ethnic or psychological trait.

## Complete primary argument, alternate return, and hostile cases

For any A subset P, A subset eligible(P,B) iff B subset shared(A).
Both maps reverse inclusion. The latter equivalence proves the Galois law.
Every B lies in inferred(P,B), since eligible sources satisfy each requirement
in B. If B subset D, eligible(P,D) subset eligible(P,B), and applying the
antitone shared map gives inferred(P,B) subset inferred(P,D).
A source eligible for B satisfies every context shared by eligible(P,B);
conversely B subset inferred(P,B). Hence eligible(P,inferred(P,B)) =
eligible(P,B), and the inferred operator is idempotent.

The fixed points of this extensive, monotone and idempotent operator form
a lattice: the intersection of two fixed points is fixed; their least
closed upper bound is the closure of their union. The same proof yields
an independent Moore-family characterization: inferred(P,B) is the
intersection of all closed supersets of B. These are elementary instances
of the standard formal-concept/Galois-polarity construction, not a new
general lattice theorem.

Hostile inventory expansion: let sources and contexts be Bool and set
r(s,c) iff s=true or c=false. For inventory {true}, recorded premise
{false} implies conclusion {true}; when the source false is added with
its unchanged row (false context only), the implication fails. Shrinking
a source inventory preserves implications; enlarging need not. At an empty
inventory every unguarded implication holds vacuously. SupportedImplication
therefore requires at least one eligible witness.

Hostile nondistributivity: on the three-element source and attribute sets
with r(i,j) iff i=j and all sources present, the closed context sets
are empty, the three singletons, and the full set: the five-element M3
diamond. For distinct singleton x,y,z, x meet (y join z)=x, whereas
(x meet y) join (x meet z)=empty. A concept lattice is not automatically
distributive. This last model is a written check, not an M3 Lean theorem.

## Mathematical and cross-cultural comparison

Primary prior art: Bernhard Ganter and Rudolf Wille, Formal Concept Analysis:
Mathematical Foundations (Springer English edition 1999; German edition
1996), chapters 0 and 1, DOI 10.1007/978-3-642-59830-2;
Rudolf Wille, Restructuring lattice theory: An approach based on
hierarchies of concepts, in I. Rival (ed.), Ordered Sets (1982),
pp. 445-470. The existing provider-derived ConceptPublic.lean supplies
general concept polars/lattices; this file contributes a narrower
inventory-specific proof and a consumer-facing implication audit.

Historical comparisons are separate typed claims. Augustine (De magistro),
Anselm (Proslogion), the Ge'ez Hatata attributed to Zera Yacob (whose
authorship is disputed), Descartes, classical Indian Nyaya discussion,
Chinese later Mohist Canons and Islamic traditions are possible
bidirectional comparanda in inquiry, proof and classification. None is
declared an author of these modern formal-concept results. The documented
Arabic-to-Latin translation of al-Khwarizmi's algebra by Robert of Chester
belongs to a distinct transmission history, and does not prove a causal
link to Descartes or to formal concept analysis. A 2026 study by Lea Cantor
and Jonathan Egid reports further archival material on the disputed Hatata
authorship; its existence does not settle authenticity. Direct checking
of the original-language editions and influence chains: NOT_RUN.

Equal evidence standards, equity, meaningful learner choice,
self-actualization, consent/withdrawal for living participants,
contestability and human agency are MODERN research-design aims,
not empirical consequences of this mathematical closure and not
beliefs inferred for historical individuals. No real-world group ability,
fairness result, or actual documentary witness is proved by the code.

Assurance: no intentional sorry/new axiom. Native Lean compilation,
fresh kernel check, axiom audit, independent proof review, and original
manuscript validation: NOT_RUN. Publication cannot upgrade those statuses.
-/

namespace GRWTSK.OrderLatticesOrderedAlgebraicStructures.OrderedSets.EvidenceScopedGaloisClosure

universe u v

variable {Source : Type u} {Context : Type v}

/-- Contexts supported by every member of a source set. -/
def shared (r : Source → Context → Prop) (A : Set Source) : Set Context :=
  {c | ∀ s ∈ A, r s c}

/-- Recorded sources meeting every required context. -/
def eligible (r : Source → Context → Prop) (P : Set Source)
    (B : Set Context) : Set Source :=
  {s | s ∈ P ∧ ∀ c ∈ B, r s c}

/-- Context closure relative to an explicit recorded inventory. -/
def inferred (r : Source → Context → Prop) (P : Set Source)
    (B : Set Context) : Set Context :=
  shared r (eligible r P B)

/-- A finite-inventory or closed-world implication; no witness is implied. -/
def RecordedImplication (r : Source → Context → Prop) (P : Set Source)
    (B D : Set Context) : Prop :=
  D ⊆ inferred r P B

/-- A recorded implication that actually has an eligible source witness. -/
def SupportedImplication (r : Source → Context → Prop) (P : Set Source)
    (B D : Set Context) : Prop :=
  (eligible r P B).Nonempty ∧ RecordedImplication r P B D

theorem shared_antitone (r : Source → Context → Prop) {A A' : Set Source}
    (h : A ⊆ A') : shared r A' ⊆ shared r A := by
  intro c hc s hs
  exact hc s (h hs)

theorem eligible_antitone (r : Source → Context → Prop) (P : Set Source)
    {B D : Set Context} (h : B ⊆ D) :
    eligible r P D ⊆ eligible r P B := by
  intro s hs
  exact ⟨hs.1, fun c hc => hs.2 c (h hc)⟩

/-- The exact inventory-relative antitone Galois law. -/
theorem relative_galois (r : Source → Context → Prop) (P : Set Source)
    {A : Set Source} (hA : A ⊆ P) (B : Set Context) :
    A ⊆ eligible r P B ↔ B ⊆ shared r A := by
  constructor
  · intro h c hc s hs
    exact (h hs).2 c hc
  · intro h s hs
    exact ⟨hA hs, fun c hc => h hc s hs⟩

theorem inferred_extensive (r : Source → Context → Prop)
    (P : Set Source) (B : Set Context) :
    B ⊆ inferred r P B := by
  intro c hc s hs
  exact hs.2 c hc

theorem inferred_mono (r : Source → Context → Prop)
    (P : Set Source) {B D : Set Context} (h : B ⊆ D) :
    inferred r P B ⊆ inferred r P D := by
  exact shared_antitone r (eligible_antitone r P h)

/-- The eligible-source fiber is preserved exactly by closure. -/
theorem eligible_after_closure (r : Source → Context → Prop)
    (P : Set Source) (B : Set Context) :
    eligible r P (inferred r P B) = eligible r P B := by
  apply Set.Subset.antisymm
  · exact eligible_antitone r P (inferred_extensive r P B)
  · intro s hs
    refine ⟨hs.1, ?_⟩
    intro c hc
    exact hc s hs

theorem inferred_idem (r : Source → Context → Prop)
    (P : Set Source) (B : Set Context) :
    inferred r P (inferred r P B) = inferred r P B := by
  change shared r (eligible r P (inferred r P B)) =
    shared r (eligible r P B)
  rw [eligible_after_closure r P B]

def Closed (r : Source → Context → Prop) (P : Set Source)
    (B : Set Context) : Prop :=
  inferred r P B = B

theorem least_closed (r : Source → Context → Prop) (P : Set Source)
    {B D : Set Context} (h : B ⊆ D) (hD : Closed r P D) :
    inferred r P B ⊆ D := by
  have hm := inferred_mono r P h
  change inferred r P D = D at hD
  rw [hD] at hm
  exact hm

theorem closed_inferred (r : Source → Context → Prop)
    (P : Set Source) (B : Set Context) :
    Closed r P (inferred r P B) := by
  exact inferred_idem r P B

theorem closed_inter (r : Source → Context → Prop)
    (P : Set Source) {B D : Set Context}
    (hB : Closed r P B) (hD : Closed r P D) :
    Closed r P (B ∩ D) := by
  change inferred r P (B ∩ D) = B ∩ D
  apply Set.Subset.antisymm
  · intro c hc
    constructor
    · have hb : B ∩ D ⊆ B := by
        intro x hx
        exact hx.1
      have hcb := inferred_mono r P hb hc
      change inferred r P B = B at hB
      rw [hB] at hcb
      exact hcb
    · have hd : B ∩ D ⊆ D := by
        intro x hx
        exact hx.2
      have hcd := inferred_mono r P hd hc
      change inferred r P D = D at hD
      rw [hD] at hcd
      exact hcd
  · exact inferred_extensive r P (B ∩ D)

/-- The join of closed context sets: closure of union, not bare union. -/
def closedJoin (r : Source → Context → Prop) (P : Set Source)
    (B D : Set Context) : Set Context :=
  inferred r P (B ∪ D)

theorem closedJoin_closed (r : Source → Context → Prop)
    (P : Set Source) (B D : Set Context) :
    Closed r P (closedJoin r P B D) := by
  change inferred r P (inferred r P (B ∪ D)) =
    inferred r P (B ∪ D)
  exact inferred_idem r P (B ∪ D)

theorem subset_closedJoin_left (r : Source → Context → Prop)
    (P : Set Source) (B D : Set Context) :
    B ⊆ closedJoin r P B D := by
  intro c hc
  exact inferred_extensive r P (B ∪ D) (Or.inl hc)

theorem subset_closedJoin_right (r : Source → Context → Prop)
    (P : Set Source) (B D : Set Context) :
    D ⊆ closedJoin r P B D := by
  intro c hc
  exact inferred_extensive r P (B ∪ D) (Or.inr hc)

theorem closedJoin_least (r : Source → Context → Prop)
    (P : Set Source) {B D H : Set Context}
    (hB : B ⊆ H) (hD : D ⊆ H) (hH : Closed r P H) :
    closedJoin r P B D ⊆ H := by
  have hu : B ∪ D ⊆ H := by
    intro c hc
    rcases hc with hc | hc
    · exact hB hc
    · exact hD hc
  exact least_closed r P hu hH

/-- Moore-family characterization of the same closure. -/
theorem inferred_iff_all_closed_supersets
    (r : Source → Context → Prop) (P : Set Source)
    (B : Set Context) (c : Context) :
    c ∈ inferred r P B ↔
      ∀ D : Set Context, B ⊆ D → Closed r P D → c ∈ D := by
  constructor
  · intro hc D hBD hD
    exact least_closed r P hBD hD hc
  · intro hc
    exact hc (inferred r P B)
      (inferred_extensive r P B) (closed_inferred r P B)

theorem recorded_iff_rows (r : Source → Context → Prop)
    (P : Set Source) (B D : Set Context) :
    RecordedImplication r P B D ↔
      eligible r P B ⊆ {s | ∀ c ∈ D, r s c} := by
  constructor
  · intro h s hs c hc
    exact h hc s hs
  · intro h c hc s hs
    exact h hs c hc

/-- Fewer sources preserve recorded implications; additions need not. -/
theorem implication_restrict (r : Source → Context → Prop)
    {P Q : Set Source} (hPQ : P ⊆ Q) (B D : Set Context)
    (h : RecordedImplication r Q B D) :
    RecordedImplication r P B D := by
  intro c hc s hs
  exact h hc s ⟨hPQ hs.1, hs.2⟩

theorem supported_has_witness (r : Source → Context → Prop)
    (P : Set Source) (B D : Set Context)
    (h : SupportedImplication r P B D) :
    ∃ s : Source, s ∈ P ∧ ∀ c ∈ B, r s c := by
  rcases h.1 with ⟨s, hs⟩
  exact ⟨s, hs.1, hs.2⟩

theorem empty_recorded_implication (r : Source → Context → Prop)
    (B D : Set Context) :
    RecordedImplication r (∅ : Set Source) B D := by
  intro c hc s hs
  have hfalse : s ∈ (∅ : Set Source) := hs.1
  exact False.elim hfalse

/-- Synthetic row table: true has both contexts; false has only false. -/
private def toyRelation (s c : Bool) : Prop :=
  s = true ∨ c = false

theorem toy_old_recorded :
    RecordedImplication toyRelation ({true} : Set Bool)
      ({false} : Set Bool) ({true} : Set Bool) := by
  intro c hc s hs
  change s = true ∨ c = false
  exact Or.inl (by simpa using hs.1)

theorem toy_expansion_breaks :
    ¬ RecordedImplication toyRelation (Set.univ : Set Bool)
      ({false} : Set Bool) ({true} : Set Bool) := by
  intro h
  have hs : false ∈ eligible toyRelation (Set.univ : Set Bool)
      ({false} : Set Bool) := by
    constructor
    · simp
    · intro c hc
      change false = true ∨ c = false
      right
      simpa using hc
  have hc : true ∈ ({true} : Set Bool) := by simp
  have hbad : toyRelation false true := h hc false hs
  have hnot : ¬ toyRelation false true := by simp [toyRelation]
  exact hnot hbad

end GRWTSK.OrderLatticesOrderedAlgebraicStructures.OrderedSets.EvidenceScopedGaloisClosure
