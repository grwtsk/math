/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical Lean source candidate. Lean elaboration, kernel replay,
transitive axiom audit and independent proof review: NOT_RUN. -/
import Mathlib

/-!
# Largest future-observation congruence of a unary algebra

MSC2020 08A30 (congruence relations), with 08A60 (unary algebras)
as the ambient algebraic category.

## Consumer and source fidelity

The preceding MSC00/01/03/05/06 installments distinguish formal proof,
source-witnessed historical links, finite union coverage and
inventory-scoped Galois implications. This new result supplies a different
algebraic safeguard for comparing an interpretive or proof register:
two states may be identified as having the same observable mathematical
behavior only when every admitted ordered sequence of transformation steps
preserves the chosen observation. Equality of their PRESENT summaries is
not enough. The input actions and the observation must be independently
specified; neither is inferred from cultural labels or provenance. The
equivalence quotient does not recover the underlying state identities:
the source archive must retain the original typed history separately.

The file imports Mathlib, not the uncompiled prior coverage candidates.
The source consumer is a congruence-safe comparison of explanatory or
proof-revision processes with a declared family of allowed operations.
It does not identify a historical author, validate a translation, or
authorize operational effects.

## Exact hypotheses and primary mathematical proof

Let S be any set, A any set of action symbols, with a TOTAL deterministic
unary operation delta_a : S -> S for each a in A. Let O be any set of
observations and o : S -> O. No finiteness, commutativity, injectivity,
surjectivity, topology or equality-decision hypothesis is required.
For a word w=[a1,...,ak], let delta_w be delta_ak composed with ... with
delta_a1, with delta_empty the identity. Thus

  delta_(u ++ v)(s) = delta_v(delta_u(s)).

Define s ~ t iff o(delta_w(s)) = o(delta_w(t)) for EVERY finite word w.
It is an equivalence relation by reflexivity, symmetry, and transitivity
of equality. The empty word proves that ~ respects the current output.
For any action a, all future words w starting at delta_a(s) correspond
exactly to the words a::w starting at s. Hence ~ is stable under EVERY
operation delta_a. Iteration proves stability under arbitrary words.

Most importantly, suppose R is ANY binary relation on S, with no
equivalence assumption needed, that respects observations and is stable
under each delta_a. An induction on the length of w proves
R(s,t) -> R(delta_w(s),delta_w(t)). Applying the output-respect condition
gives o(delta_w(s))=o(delta_w(t)) for every w. Thus R is contained in ~.
Therefore ~ is the greatest operation-compatible equivalence contained
in the immediate-output equality relation. The Setoid quotient by ~
inherits every unary operation and the observation; representative
independence is exactly the proved congruence property. Quotienting does
NOT prove that two original state identities or source histories are
equal; it proves equality of their complete observations.

An independent finite-prefix characterization is
  s ~ t iff for every n, s and t agree after every word of length <= n.
It follows by choosing n=length(w). No single fixed n is supplied for
infinite S.

## Separate finite-state corollary (written proof, not a Lean declaration)

If S is nonempty and finite of size m, agreement on words of length
at most m-1 ALREADY implies behavioral equivalence. Define E_k to
mean agreement on words of length <=k. These are nested equivalence
relations. E_(k+1) splits E_k precisely when a pair with equal
k-signatures has an action successor with unequal k-signatures.
If E_k=E_(k+1), E_k is stable under each action and hence is contained
in ~ by the maximality theorem; the reverse containment is automatic.
Thus once refinement stops it stays stopped. Each strict refinement
increases the number of partition blocks by at least one. Initially
there is at least one block and there can never be more than m; after
at most m-1 strict refinements stability must have occurred. Therefore
E_(m-1)=~. For empty S the universal pair statement is vacuous.

This partition argument is the classical Moore-style finite-machine
refinement, not a claim to prove or improve Hopcroft's O(n log n)
algorithm. The quantitative m-1 corollary is checked by finite Python
models but is NOT formally encoded in this Lean file.

## Hostile examples and alternate routes

Take S={0,1,2}, one action a with
  delta_a(0)=2, delta_a(1)=0, delta_a(2)=2,
and output o(0)=o(1)=false, o(2)=true. States 0,1 agree NOW, but
after a their outputs differ, so immediate-output equality is NOT
an algebraic congruence. Lean proves both the collision and its failure
of stability. With two actions rotate(i)=i+1 mod 3 and reset(i)=0,
the words [rotate,reset] and [reset,rotate] produce different outcomes
from 0; chronological operation order cannot be discarded.
If outputs are constant, every state is behaviorally equivalent even
when original identities differ: the quotient is observational, not a
lossless archive. The latter two are exact finite diagnostic checks.

For finite S, the distinct route computes the greatest fixed point of
a refining partition E -> { (s,t) in E | all a preserve E }, starting
at current-output equality; it equals the word-based relation by the
maximality proof. A separate exhaustive Python diagnostic compared both
routes for every 3-state/2-action binary-output table and every
4-state/1-action binary-output table (9,928 complete systems in total).

## Prior art and historical comparison, by separate evidence type

Edward F. Moore, "Gedanken-Experiments on Sequential Machines",
in C. E. Shannon and J. McCarthy (eds.), Automata Studies,
Princeton University Press (1956), pp. 129-154,
DOI 10.1515/9781400882618-006, is direct mathematical prior art for
distinguishability by experiments and finite-state minimization.
John E. Hopcroft, "An n log n algorithm for minimizing states in a
finite automaton", Theory of Machines and Computations (1971),
pp. 189-196, DOI 10.1016/B978-0-12-417750-5.50022-1, provides
a more efficient partition-refinement algorithm. The present proof
is the elementary general-unary-algebra statement, not new priority.

Historical context retained from the existing ledger: Augustine
(e.g. De magistro) and Anselm (Proslogion) represent distinct
late-antique/medieval Christian modes of argument; the Ge'ez Hatata
attributed to Zera Yacob has disputed authorship; Descartes,
classical Indian Nyaya analyses of inference, later Chinese
Mohist canons, and independent Arabic/Persian scholarship supply
other source-mediated comparanda. None is claimed to have defined
this modern congruence or transmitted it to Moore. Robert of
Chester's Arabic-to-Latin translation of al-Khwarizmi's algebra is
a documented textual-transfer case in a DIFFERENT subject, not proof
of Descartes' personal use or influence on automata. The original
languages, primary editions, contested Hatata attribution and
specific influence chains remain independently unreviewed here.
Analogy does not establish historical transmission.

Equal documentary standards and review opportunities, representative
coverage, learner self-actualization and freedom to choose registers,
consent and withdrawal for living participants, contestability,
and human agency are CONTEMPORARY design goals. The quotient theorem
does not establish real-world equity, consent, psychology, ability,
cognitive identity or empirical educational outcomes.

Verification boundary: the Lean file has no intentional sorry/new axiom.
Native Lean elaboration/build, kernel replay, imported transitive axiom
audit, independent theoretical review and original-language historical
source audit: NOT_RUN. An independent finite experiment is corroboration,
not a substitute for kernel or historical verification.
-/

namespace GRWTSK.GeneralAlgebraicSystems.AlgebraicStructures.FutureObservationCongruence

universe u v w

variable {State : Type u} {Action : Type v} {Label : Type w}

/-- A deterministic family of total unary operations, with no added laws. -/
structure UnarySystem (State : Type u) (Action : Type v) where
  step : Action → State → State

/-- Execute actions in their original chronological list order. -/
def run (M : UnarySystem State Action) : List Action → State → State
  | [], s => s
  | a :: word, s => run M word (M.step a s)

@[simp] theorem run_nil (M : UnarySystem State Action) (s : State) :
    run M [] s = s := rfl

@[simp] theorem run_cons (M : UnarySystem State Action) (a : Action)
    (word : List Action) (s : State) :
    run M (a :: word) s = run M word (M.step a s) := rfl

/-- Concatenated action lists compose in their actual chronological order. -/
theorem run_append (M : UnarySystem State Action) (u v : List Action)
    (s : State) :
    run M (u ++ v) s = run M v (run M u s) := by
  induction u generalizing s with
  | nil => rfl
  | cons a u ih =>
      change run M (u ++ v) (M.step a s) =
        run M v (run M u (M.step a s))
      exact ih (M.step a s)

/-- Exact observational agreement after every possible operation word. -/
def BehavioralEq (M : UnarySystem State Action) (observe : State → Label)
    (s t : State) : Prop :=
  ∀ word : List Action, observe (run M word s) = observe (run M word t)

/-- Agreement for every experiment whose length is at most a bound. -/
def PrefixEq (M : UnarySystem State Action) (observe : State → Label)
    (n : Nat) (s t : State) : Prop :=
  ∀ word : List Action, word.length ≤ n →
    observe (run M word s) = observe (run M word t)

theorem behavioral_refl (M : UnarySystem State Action)
    (observe : State → Label) (s : State) :
    BehavioralEq M observe s s := by
  intro word
  rfl

theorem behavioral_symm (M : UnarySystem State Action)
    (observe : State → Label) {s t : State}
    (h : BehavioralEq M observe s t) :
    BehavioralEq M observe t s := by
  intro word
  exact (h word).symm

theorem behavioral_trans (M : UnarySystem State Action)
    (observe : State → Label) {s t q : State}
    (h : BehavioralEq M observe s t)
    (h' : BehavioralEq M observe t q) :
    BehavioralEq M observe s q := by
  intro word
  exact (h word).trans (h' word)

/-- Behavioral equivalence respects the visible current observation. -/
theorem behavioral_current (M : UnarySystem State Action)
    (observe : State → Label) {s t : State}
    (h : BehavioralEq M observe s t) :
    observe s = observe t := by
  exact h []

/-- Behavioral equivalence is stable under each permitted unary operation. -/
theorem behavioral_step (M : UnarySystem State Action)
    (observe : State → Label) (a : Action) {s t : State}
    (h : BehavioralEq M observe s t) :
    BehavioralEq M observe (M.step a s) (M.step a t) := by
  intro word
  exact h (a :: word)

/-- It is also stable under all ordered action histories. -/
theorem behavioral_run (M : UnarySystem State Action)
    (observe : State → Label) (word : List Action) {s t : State}
    (h : BehavioralEq M observe s t) :
    BehavioralEq M observe (run M word s) (run M word t) := by
  intro future
  simpa only [run_append] using h (word ++ future)

/-- Stability under the family of unary operations, for an arbitrary relation. -/
def Stable (M : UnarySystem State Action)
    (R : State → State → Prop) : Prop :=
  ∀ (a : Action) (s t : State), R s t → R (M.step a s) (M.step a t)

/-- A relation is contained in the current-observation equality kernel. -/
def OutputRespecting (observe : State → Label)
    (R : State → State → Prop) : Prop :=
  ∀ s t : State, R s t → observe s = observe t

theorem behavioral_stable (M : UnarySystem State Action)
    (observe : State → Label) :
    Stable M (BehavioralEq M observe) := by
  intro a s t h
  exact behavioral_step M observe a h

theorem behavioral_output_respecting (M : UnarySystem State Action)
    (observe : State → Label) :
    OutputRespecting observe (BehavioralEq M observe) := by
  intro s t h
  exact behavioral_current M observe h

/-- Every stable relation is preserved by an arbitrary finite operation word. -/
theorem stable_run (M : UnarySystem State Action)
    (R : State → State → Prop) (hR : Stable M R)
    (word : List Action) {s t : State} (hst : R s t) :
    R (run M word s) (run M word t) := by
  induction word generalizing s t with
  | nil =>
      exact hst
  | cons a word ih =>
      change R (run M word (M.step a s))
        (run M word (M.step a t))
      exact ih (hR a s t hst)

/-- Maximality: every operation-stable output-respecting relation is contained
    in future-observation equivalence, even if it was not an equivalence. -/
theorem behavioral_greatest (M : UnarySystem State Action)
    (observe : State → Label) (R : State → State → Prop)
    (hR : Stable M R) (hO : OutputRespecting observe R)
    {s t : State} (hst : R s t) :
    BehavioralEq M observe s t := by
  intro word
  exact hO _ _ (stable_run M R hR word hst)

/-- Behavioral equivalence is the exact limit of every finite prefix test. -/
theorem behavioral_iff_all_prefix (M : UnarySystem State Action)
    (observe : State → Label) (s t : State) :
    BehavioralEq M observe s t ↔
      ∀ n : Nat, PrefixEq M observe n s t := by
  constructor
  · intro h n word _
    exact h word
  · intro h word
    exact h word.length word (Nat.le_refl _)

theorem prefix_antitone (M : UnarySystem State Action)
    (observe : State → Label) {m n : Nat} (hmn : m ≤ n)
    {s t : State} (h : PrefixEq M observe n s t) :
    PrefixEq M observe m s t := by
  intro word hw
  exact h word (Nat.le_trans hw hmn)

/-- The underlying observational equivalence as a Setoid. -/
def behavioralSetoid (M : UnarySystem State Action)
    (observe : State → Label) : Setoid State where
  r := BehavioralEq M observe
  iseqv := ⟨(fun s => behavioral_refl M observe s),
    (fun {_ _} h => behavioral_symm M observe h),
    (fun {_ _ _} h h' => behavioral_trans M observe h h')⟩

/-- The operation descends to observation-equivalence classes. -/
def quotientStep (M : UnarySystem State Action)
    (observe : State → Label) (a : Action) :
    Quotient (behavioralSetoid M observe) →
      Quotient (behavioralSetoid M observe) :=
  Quotient.lift
    (fun s : State => Quotient.mk (behavioralSetoid M observe) (M.step a s))
    (by
      intro s t h
      exact Quotient.sound (behavioral_step M observe a h))

/-- The observation is well-defined on the same quotient. -/
def quotientObserve (M : UnarySystem State Action)
    (observe : State → Label) :
    Quotient (behavioralSetoid M observe) → Label :=
  Quotient.lift observe
    (by
      intro s t h
      exact behavioral_current M observe h)

def quotientSystem (M : UnarySystem State Action)
    (observe : State → Label) :
    UnarySystem (Quotient (behavioralSetoid M observe)) Action where
  step := quotientStep M observe

@[simp] theorem quotient_step_mk (M : UnarySystem State Action)
    (observe : State → Label) (a : Action) (s : State) :
    quotientStep M observe a (Quotient.mk (behavioralSetoid M observe) s) =
      Quotient.mk (behavioralSetoid M observe) (M.step a s) := rfl

@[simp] theorem quotient_observe_mk (M : UnarySystem State Action)
    (observe : State → Label) (s : State) :
    quotientObserve M observe (Quotient.mk (behavioralSetoid M observe) s) =
      observe s := rfl

/-- The canonical quotient map commutes with the ENTIRE operation word. -/
theorem quotient_run_mk (M : UnarySystem State Action)
    (observe : State → Label) (word : List Action) (s : State) :
    run (quotientSystem M observe) word
        (Quotient.mk (behavioralSetoid M observe) s) =
      Quotient.mk (behavioralSetoid M observe) (run M word s) := by
  induction word generalizing s with
  | nil => rfl
  | cons a word ih =>
      change run (quotientSystem M observe) word
        (quotientStep M observe a
          (Quotient.mk (behavioralSetoid M observe) s)) =
        Quotient.mk (behavioralSetoid M observe) (run M word (M.step a s))
      rw [quotient_step_mk, ih]

/-- Equality in the quotient is exactly behavioral indistinguishability,
    not equality of source identities or original action histories. -/
theorem behavioral_iff_quotient_eq (M : UnarySystem State Action)
    (observe : State → Label) (s t : State) :
    BehavioralEq M observe s t ↔
      (Quotient.mk (behavioralSetoid M observe) s :
        Quotient (behavioralSetoid M observe)) =
      Quotient.mk (behavioralSetoid M observe) t := by
  constructor
  · intro h
    exact Quotient.sound h
  · intro h
    exact Quotient.exact h

/-- Synthetic finite counterexample: same current output, different next output. -/
private def toyStep (_ : Unit) (s : Fin 3) : Fin 3 :=
  if s = 0 then 2 else if s = 1 then 0 else 2

private def toySystem : UnarySystem (Fin 3) Unit where
  step := toyStep

private def toyObserve (s : Fin 3) : Bool :=
  s == 2

theorem toy_same_current :
    toyObserve (0 : Fin 3) = toyObserve (1 : Fin 3) := by
  decide

theorem toy_one_step_separates :
    toyObserve (run toySystem [()] (0 : Fin 3)) ≠
      toyObserve (run toySystem [()] (1 : Fin 3)) := by
  decide

theorem toy_not_behaviorally_equal :
    ¬ BehavioralEq toySystem toyObserve (0 : Fin 3) (1 : Fin 3) := by
  intro h
  exact toy_one_step_separates (h [()])

theorem toy_current_equality_not_stable :
    ¬ Stable toySystem (fun s t => toyObserve s = toyObserve t) := by
  intro h
  have hStep := h () (0 : Fin 3) (1 : Fin 3) toy_same_current
  exact toy_one_step_separates hStep

end GRWTSK.GeneralAlgebraicSystems.AlgebraicStructures.FutureObservationCongruence
