/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source candidate. Native elaboration, kernel replay, and axiom audit: NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.RelationalHolonomySpinCompletion
import Mathlib

/-!
# Finite separation of relational types by spin-graph observations

Consumer: the conservatively lifted `pendingLoop` paths in
`RelationalHolonomySpinCompletion.lean`. A source type is recovered from a
finite, stage-dependent tuple of observations when every pair with distinct
source types has an explicitly supplied separating stage.

This is a conditional, finite-inventory theorem. The separating witness is
not constructed by adding spin sheets. A derived classifier is a mathematical
function; effective execution requires computable witnesses and observations.
No neural, physical-spin, analytic-Weil, RH, or GRH inference is asserted.

Comparison: finite separation is a finite-cover/partition-refinement argument,
not a consequence of graph covering alone. Unlike endpoint-only observation,
`pendingLoop` retains the complete ordered source history. The two-sheet lift
itself can be observationally uninformative. A concrete infinite-inventory
countermodel is recorded below.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy

universe u v w z t

section FiniteSeparation

variable {P : Type u} [Fintype P]
variable {Kind : Type v} {Obs : Nat → Type w}

/-- The typed observation tuple up to and including stage `N`.
    Its coordinates may have different types. -/
def observationPrefix (readout : (n : Nat) → P → Obs n)
    (N : Nat) (p : P) : (i : Fin (N + 1)) → Obs i.val :=
  fun i => readout i.val p

/-- A fully supplied stage for every ordered source pair. -/
def separationHorizon (witness : P → P → Nat) : Nat :=
  (Finset.univ : Finset (P × P)).sup (fun pq => witness pq.1 pq.2)

/-- The finite supremum pays for every ordered pair, including empty carriers. -/
theorem witness_le_horizon (witness : P → P → Nat) (p q : P) :
    witness p q ≤ separationHorizon witness := by
  classical
  unfold separationHorizon
  exact Finset.le_sup (Finset.mem_univ (p, q))

/-- Different source types cannot have equal accumulated signatures once the
    chosen separator for each pair is included in the observation horizon. -/
theorem type_eq_of_prefix_eq
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n)
    (witness : P → P → Nat)
    (distinguishes : ∀ p q, typeOf p ≠ typeOf q →
      readout (witness p q) p ≠ readout (witness p q) q)
    (p q : P)
    (heq : observationPrefix readout (separationHorizon witness) p =
           observationPrefix readout (separationHorizon witness) q) :
    typeOf p = typeOf q := by
  by_contra hdiff
  have hi : witness p q < separationHorizon witness + 1 :=
    Nat.lt_succ_of_le (witness_le_horizon witness p q)
  have hobs : readout (witness p q) p = readout (witness p q) q :=
    congrFun heq ⟨witness p q, hi⟩
  exact (distinguishes p q hdiff) hobs

/-- A partial decoder: a signature occurring in the finite inventory is
    assigned the type of one of its representatives. Other signatures are
    deliberately unclassified rather than silently assigned a default. -/
noncomputable def prefixClassifier
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n)
    (N : Nat) : ((i : Fin (N + 1)) → Obs i.val) → Option Kind := by
  classical
  exact fun signature =>
    if h : ∃ p : P, observationPrefix readout N p = signature then
      some (typeOf (Classical.choose h))
    else none

/-- A fiber-constant type map is exactly recovered by the partial classifier. -/
theorem prefixClassifier_correct
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n)
    (N : Nat)
    (constantOnFibers : ∀ p q,
      observationPrefix readout N p = observationPrefix readout N q →
      typeOf p = typeOf q)
    (p : P) :
    prefixClassifier typeOf readout N (observationPrefix readout N p) =
      some (typeOf p) := by
  classical
  unfold prefixClassifier
  have h : ∃ q : P,
      observationPrefix readout N q = observationPrefix readout N p :=
    ⟨p, rfl⟩
  simp only [dif_pos h]
  exact congrArg some (constantOnFibers (Classical.choose h) p
    (Classical.choose_spec h))

/-- The central finite discovery theorem: a single common finite stage and
    a source-correct partial type decoder exist. No minimality of `N` claimed. -/
theorem finite_type_discovery
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n)
    (witness : P → P → Nat)
    (distinguishes : ∀ p q, typeOf p ≠ typeOf q →
      readout (witness p q) p ≠ readout (witness p q) q) :
    ∃ N : Nat, ∃ classify :
      (((i : Fin (N + 1)) → Obs i.val) → Option Kind),
      ∀ p, classify (observationPrefix readout N p) = some (typeOf p) := by
  refine ⟨separationHorizon witness,
    prefixClassifier typeOf readout (separationHorizon witness), ?_⟩
  intro p
  apply prefixClassifier_correct typeOf readout
    (separationHorizon witness)
  intro x y hxy
  exact type_eq_of_prefix_eq typeOf readout witness distinguishes x y hxy

/-- The classifier cannot hallucinate a source label for an unobserved
    signature; every successful return has an actual inventory representative. -/
theorem prefixClassifier_has_source
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n)
    (N : Nat) (signature : (i : Fin (N + 1)) → Obs i.val)
    (k : Kind)
    (hk : prefixClassifier typeOf readout N signature = some k) :
    ∃ p : P, observationPrefix readout N p = signature ∧ typeOf p = k := by
  classical
  unfold prefixClassifier at hk
  split_ifs at hk with h
  · exact ⟨Classical.choose h, Classical.choose_spec h, Option.some.inj hk⟩
  · cases hk

end FiniteSeparation

section SpinSourceReturn

variable {V : Type u} {E : V → V → Type v} {a : V}
variable {P : Type w} [Fintype P]
variable {Kind : Type z} {Obs : Nat → Type t}

/-- Source-indexed, stage-typed readout on the exact `pendingLoop` construction. -/
def spinReadout
    (history : P → Path E a a)
    (observe : (n : Nat) →
      Path (iterEdge E n) (iterAnchor a n) (iterAnchor a n) → Obs n)
    (n : Nat) (p : P) : Obs n :=
  observe n (pendingLoop (history p) n)

/-- Consumer of the original spin-loop model: all finite source types are
    identified if an independent observation-separation witness is supplied.
    Every retry remains an exact lifting of its source path by
    `pendingLoop_recover` in the imported module. -/
theorem finite_spin_type_discovery
    (history : P → Path E a a)
    (typeOf : P → Kind)
    (observe : (n : Nat) →
      Path (iterEdge E n) (iterAnchor a n) (iterAnchor a n) → Obs n)
    (witness : P → P → Nat)
    (distinguishes : ∀ p q, typeOf p ≠ typeOf q →
      spinReadout history observe (witness p q) p ≠
      spinReadout history observe (witness p q) q) :
    ∃ N : Nat, ∃ classify :
      (((i : Fin (N + 1)) → Obs i.val) → Option Kind),
      ∀ p,
        classify (observationPrefix (spinReadout history observe) N p) =
          some (typeOf p) := by
  exact finite_type_discovery typeOf (spinReadout history observe)
    witness distinguishes

end SpinSourceReturn

section Countermodels

/-- A completely constant observer cannot distinguish two different
    types regardless of how many times the representation is enlarged. -/
theorem constant_readout_not_separating
    {P : Type u} {Kind : Type v} (typeOf : P → Kind)
    (p q : P) (different : typeOf p ≠ typeOf q) :
    ¬ (∀ x y : P, typeOf x ≠ typeOf y →
      ∃ n : Nat, (fun _ : P => PUnit.unit) x ≠
                 (fun _ : P => PUnit.unit) y) := by
  intro h
  rcases h p q different with ⟨n, impossible⟩
  exact impossible rfl

/-- With infinitely many source loops, pairwise eventual separation need not
    have any common finite horizon. This is a countermodel, not a spin claim. -/
def delayedNatReadout (n p : Nat) : Nat :=
  if p ≤ n then p + 1 else 0

theorem delayedNat_pairwise_separating :
    ∀ p q : Nat, p ≠ q →
      ∃ n : Nat, delayedNatReadout n p ≠ delayedNatReadout n q := by
  intro p q hpq
  refine ⟨max p q, ?_⟩
  have hp : p ≤ max p q := le_max_left p q
  have hq : q ≤ max p q := le_max_right p q
  simp only [delayedNatReadout, if_pos hp, if_pos hq]
  omega

theorem delayedNat_no_uniform_horizon :
    ∀ N : Nat, ∃ p q : Nat, p ≠ q ∧
      ∀ n : Nat, n ≤ N → delayedNatReadout n p = delayedNatReadout n q := by
  intro N
  refine ⟨N + 1, N + 2, by omega, ?_⟩
  intro n hn
  have hp : ¬ N + 1 ≤ n := by omega
  have hq : ¬ N + 2 ≤ n := by omega
  simp only [delayedNatReadout, if_neg hp, if_neg hq]

end Countermodels


/-!
## Necessary and sufficient observation criteria

The earlier finite_type_discovery theorem proves the forward direction:
eventually separating readouts on a finite source inventory give a common
finite horizon and a correct partial classifier. We now prove the reverse
direction. A correct classifier at a finite horizon cannot assign different
source types to identical observation prefixes, hence must have seen a
distinguishing coordinate for every pair of different source types.

The result is exact for the same dependent observationPrefix, spinReadout,
and Option-valued classifier as the original source; no type or label is
fabricated for an unobserved signature. The finite-inventory assumption is
needed only when deriving a uniform horizon from pairwise eventual
separation. The necessity direction applies by elementary logic even
when observations are computationally inaccessible.
-/

section ExactClassificationCriterion

variable {P : Type u} [Fintype P]
variable {Kind : Type v} {Obs : Nat → Type w}

/-- Correct classification at a fixed horizon forces the intended types
to be constant on the actual observation-prefix fibers. -/
theorem classifier_correct_implies_type_constant
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n)
    (N : Nat)
    (classify : ((i : Fin (N + 1)) → Obs i.val) → Option Kind)
    (hcorrect : ∀ p, classify (observationPrefix readout N p) =
      some (typeOf p))
    (p q : P)
    (hsame : observationPrefix readout N p =
      observationPrefix readout N q) :
    typeOf p = typeOf q := by
  have h := congrArg classify hsame
  rw [hcorrect p, hcorrect q] at h
  exact Option.some.inj h

/-- A correct partial classifier exists at this fixed horizon precisely
when all observationally identical source loops have the same type. -/
theorem exists_classifier_iff_prefix_fibers_constant
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n)
    (N : Nat) :
    (∃ classify : (((i : Fin (N + 1)) → Obs i.val) → Option Kind),
      ∀ p, classify (observationPrefix readout N p) =
        some (typeOf p)) ↔
      ∀ p q, observationPrefix readout N p =
        observationPrefix readout N q → typeOf p = typeOf q := by
  constructor
  · rintro ⟨classify, hcorrect⟩ p q hsame
    exact classifier_correct_implies_type_constant
      typeOf readout N classify hcorrect p q hsame
  · intro hfibers
    refine ⟨prefixClassifier typeOf readout N, ?_⟩
    intro p
    exact prefixClassifier_correct typeOf readout N hfibers p

/-- A finite successful classifier necessarily separates EVERY pair
of different source types at some observed stage, without assuming a
minimal horizon or an effective observation algorithm. -/
theorem classifier_implies_eventual_separation
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n)
    (N : Nat)
    (classify : ((i : Fin (N + 1)) → Obs i.val) → Option Kind)
    (hcorrect : ∀ p, classify (observationPrefix readout N p) =
      some (typeOf p))
    (p q : P) (hdiff : typeOf p ≠ typeOf q) :
    ∃ n : Nat, readout n p ≠ readout n q := by
  classical
  by_contra hno
  have hall : ∀ n : Nat, readout n p = readout n q := by
    intro n
    by_contra hneq
    exact hno ⟨n, hneq⟩
  have hprefix :
      observationPrefix readout N p =
        observationPrefix readout N q := by
    funext i
    exact hall i.val
  exact hdiff (classifier_correct_implies_type_constant
    typeOf readout N classify hcorrect p q hprefix)

/-- Exact if-and-only-if completion of finite_type_discovery:
pairwise eventual observation separation is not merely sufficient
but also NECESSARY for some correct finite-prefix classifier. -/
theorem finite_classifier_iff_eventual_separation
    (typeOf : P → Kind) (readout : (n : Nat) → P → Obs n) :
    (∃ N : Nat, ∃ classify :
        (((i : Fin (N + 1)) → Obs i.val) → Option Kind),
      ∀ p, classify (observationPrefix readout N p) =
        some (typeOf p)) ↔
      ∀ p q : P, typeOf p ≠ typeOf q →
        ∃ n : Nat, readout n p ≠ readout n q := by
  constructor
  · rintro ⟨N, classify, hcorrect⟩ p q hdiff
    exact classifier_implies_eventual_separation
      typeOf readout N classify hcorrect p q hdiff
  · intro hseparates
    classical
    let witness : P → P → Nat := fun p q =>
      if h : typeOf p ≠ typeOf q then
        Classical.choose (hseparates p q h)
      else 0
    have hdisting :
        ∀ p q, typeOf p ≠ typeOf q →
          readout (witness p q) p ≠ readout (witness p q) q := by
      intro p q hpq
      simpa [witness, hpq] using
        (Classical.choose_spec (hseparates p q hpq))
    exact finite_type_discovery typeOf readout witness hdisting

end ExactClassificationCriterion

section SpinClassificationCriterion

variable {V : Type u} {E : V → V → Type v} {a : V}
variable {P : Type w} [Fintype P]
variable {Kind : Type z} {Obs : Nat → Type t}

/-- Exact criterion for the EXISTING staged pending-loop spin reader:
a finite correct classifier exists iff the supplied observations
eventually separate every pair of different source types. Merely
adding spin sheets proves neither half's hypotheses automatically. -/
theorem finite_spin_classifier_iff_eventual_separation
    (history : P → Path E a a) (typeOf : P → Kind)
    (observe : (n : Nat) →
      Path (iterEdge E n) (iterAnchor a n) (iterAnchor a n) → Obs n) :
    (∃ N : Nat, ∃ classify :
        (((i : Fin (N + 1)) → Obs i.val) → Option Kind),
      ∀ p, classify
          (observationPrefix (spinReadout history observe) N p) =
          some (typeOf p)) ↔
      ∀ p q : P, typeOf p ≠ typeOf q →
        ∃ n : Nat, spinReadout history observe n p ≠
          spinReadout history observe n q := by
  exact finite_classifier_iff_eventual_separation
    typeOf (spinReadout history observe)

end SpinClassificationCriterion

/-! The infinite source obstruction also excludes actual correct finite
decoders, not just a common pair-separation horizon. -/

/-- The original delayed-natural readout distinguishes each pair
eventually but NO finite prefix permits a globally correct decoder
of the source natural number. No finite-source premise is inserted. -/
theorem delayedNat_no_correct_finite_classifier :
    ¬ ∃ N : Nat, ∃ classify :
        (((i : Fin (N + 1)) → Nat) → Option Nat),
      ∀ p : Nat,
        classify (fun i => delayedNatReadout i.val p) = some p := by
  rintro ⟨N, classify, hcorrect⟩
  obtain ⟨p, q, hpq, hsamen⟩ := delayedNat_no_uniform_horizon N
  have hpref :
      (fun i : Fin (N + 1) => delayedNatReadout i.val p) =
      (fun i : Fin (N + 1) => delayedNatReadout i.val q) := by
    funext i
    have hi : i.val ≤ N := by omega
    exact hsamen i.val hi
  have htypes : some p = some q := by
    calc
      some p = classify
          (fun i : Fin (N + 1) => delayedNatReadout i.val p) :=
        (hcorrect p).symm
      _ = classify
          (fun i : Fin (N + 1) => delayedNatReadout i.val q) :=
        congrArg classify hpref
      _ = some q := hcorrect q
  exact hpq (Option.some.inj htypes)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
