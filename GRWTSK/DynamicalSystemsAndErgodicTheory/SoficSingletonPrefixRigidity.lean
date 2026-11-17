/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_REVIEW_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficSingletonPrefixCapacity

set_option autoImplicit false
noncomputable section

/-!
# Exact rooted prefix languages: finite capacity and first-return rigidity

An exact rooted presentation accepts **all and only** the finite initial
segments of one fixed infinite trace. The edge relation may be nondeterministic.
This module packages the sharp-capacity theorem of
SoficSingletonPrefixCapacity into source-independent consumers:

* finite exact presentability is equivalent to equality of two infinite tails;
* a first tail collision at position j gives **exact** minimum vertex count j;
* a single finite distinguishing observation excludes every graph below its
  certified capacity, regardless of nondeterminism;
* absence of equal tails excludes *every* finite exact rooted graph.

The existing exactRoot_of_equal_tails constructs the promised chain followed
by one cycle. The sharper assertion that **every** smallest graph is rooted
edge-labeled isomorphic to that chain-and-cycle model is a separate remaining
uniqueness obligation, not silently inferred from equality of minimum sizes.

These are theorems about the read-label trace, not the states of the system
producing that trace. No recurrence of arithmetic, tape, or spectral source
states is asserted. A Riemann95 or zero-height application must furnish the
original source-to-trace identity and preserve its full assumptions.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficSingletonPrefixRigidity

open ExactSoficLanguageCover SoficSingletonPrefixCapacity

universe u v
variable {A : Type u} {V : Type v}

/-- Equality of the complete future label traces, not agreement at a finite
precision or equality of source configurations. -/
def EqualTails (trace : ℕ → A) (i j : ℕ) : Prop :=
  ∀ k : ℕ, trace (i + k) = trace (j + k)

/-- A trace is eventually periodic, with a positive period j - i.
The notation makes no assertion about the least period. -/
def HasTailReturn (trace : ℕ → A) : Prop :=
  ∃ i j : ℕ, i < j ∧ EqualTails trace i j

/-- A first tail collision is an ordered repeated tail at j and the
absence of any repeated pair with a smaller right endpoint. In particular,
all tails starting at positions below j are distinct. -/
def FirstTailReturn (trace : ℕ → A) (i j : ℕ) : Prop :=
  i < j ∧ EqualTails trace i j ∧
    ∀ a b : ℕ, a < b → b < j → ¬ EqualTails trace a b

/-- A finite graph on some Fin n, with a chosen root, accepts exactly
one trace's chronological prefixes. This is stronger than a graph admitting
one path following the trace and differs from whole-factor soficity. -/
def HasFiniteExactRoot (trace : ℕ → A) : Prop :=
  ∃ n : ℕ, ∃ G : LabeledGraph (Fin n) A, ∃ root : Fin n,
    ExactRoot G root trace

/-- Finite exact rooted presentation is equivalent to a genuine full-tail
return, even when arbitrary nondeterministic edge relations are allowed. -/
theorem finite_exactRoot_iff_tailReturn (trace : ℕ → A) :
    HasFiniteExactRoot trace ↔ HasTailReturn trace := by
  constructor
  · rintro ⟨n, G, root, hExact⟩
    obtain ⟨i, j, hij, _, htail⟩ := equal_tails_of_exactRoot hExact
    exact ⟨i, j, hij, htail⟩
  · rintro ⟨i, j, hij, htail⟩
    obtain ⟨G, root, hExact⟩ := exactRoot_of_equal_tails hij htail
    exact ⟨j, G, root, hExact⟩

/-- Universal non-presentation is exactly non-eventual periodicity of the
**labels**. It does not rule out an unrelated finite automaton admitting
one nonperiodic path (e.g. the one-state full shift). -/
theorem no_finite_exactRoot_iff_distinct_tails (trace : ℕ → A) :
    ¬ HasFiniteExactRoot trace ↔
      ∀ i j : ℕ, i < j → ∃ k : ℕ, trace (i + k) ≠ trace (j + k) := by
  rw [finite_exactRoot_iff_tailReturn]
  constructor
  · intro hnone i j hij
    by_contra hseparate
    have hequal : EqualTails trace i j := by
      intro k
      by_contra hne
      exact hseparate ⟨k, hne⟩
    exact hnone ⟨i, j, hij, hequal⟩
  · rintro hdistinct ⟨i, j, hij, hequal⟩
    obtain ⟨k, hne⟩ := hdistinct i j hij
    exact hne (hequal k)

/-- Any selected finite graph realizing the exact prefix language must
contain at least the first tail-return index. The minimality hypothesis
is essential: an arbitrary later collision only supplies an upper bound. -/
theorem firstTailReturn_card_le [Fintype V]
    {trace : ℕ → A} {i j : ℕ}
    (hfirst : FirstTailReturn trace i j)
    (G : LabeledGraph V A) (root : V)
    (hExact : ExactRoot G root trace) :
    j ≤ Fintype.card V := by
  obtain ⟨a, b, hab, hbound, hequal⟩ := equal_tails_of_exactRoot hExact
  by_contra h
  have hb : b < j := by omega
  exact (hfirst.2.2 a b hab hb) hequal

/-- The canonical chain-then-cycle construction from the first repeated
tail has precisely j states and accepts exactly the source prefixes. -/
theorem firstTailReturn_exists_exactRoot
    {trace : ℕ → A} {i j : ℕ}
    (hfirst : FirstTailReturn trace i j) :
    ∃ G : LabeledGraph (Fin j) A, ∃ root : Fin j,
      ExactRoot G root trace := by
  exact exactRoot_of_equal_tails hfirst.1 hfirst.2.1

/-- Sharp state complexity: under a certified first tail collision at j,
**every** finite rooted graph with the exact prefix language has at least
j states, and a graph on exactly j states exists. -/
theorem firstTailReturn_sharp_capacity
    {trace : ℕ → A} {i j : ℕ}
    (hfirst : FirstTailReturn trace i j) :
    (∃ G : LabeledGraph (Fin j) A, ∃ root : Fin j,
      ExactRoot G root trace) ∧
    (∀ (n : ℕ) (G : LabeledGraph (Fin n) A) (root : Fin n),
      ExactRoot G root trace → j ≤ n) := by
  constructor
  · exact firstTailReturn_exists_exactRoot hfirst
  · intro n G root hExact
    simpa using (firstTailReturn_card_le hfirst G root hExact)

/-- The exact capacity threshold is a *closed formula* in the first
return position. The upper bound is realized by an actual rooted graph,
not merely by an accepted read path. -/
theorem firstTailReturn_capacity_iff
    {trace : ℕ → A} {i j : ℕ}
    (hfirst : FirstTailReturn trace i j) (budget : ℕ) :
    (∃ (n : ℕ) (_ : n ≤ budget)
        (G : LabeledGraph (Fin n) A) (root : Fin n),
        ExactRoot G root trace) ↔ j ≤ budget := by
  constructor
  · rintro ⟨n, hn, G, root, hExact⟩
    exact (firstTailReturn_card_le hfirst G root hExact).trans hn
  · intro hj
    obtain ⟨G, root, hExact⟩ := firstTailReturn_exists_exactRoot hfirst
    exact ⟨j, hj, G, root, hExact⟩

/-- An *actual finite* read window certifies a universal cardinality lower
bound against every exact rooted graph. All b + 1 cuts are compared inside
this same length-n observation; witnesses outside the window do not count. -/
theorem card_ge_of_finite_window [Fintype V]
    {trace : ℕ → A} (G : LabeledGraph V A) (root : V)
    (hExact : ExactRoot G root trace) (n b : ℕ)
    (hbn : b ≤ n)
    (hseparates : ∀ i j, i < j → j ≤ b →
      ∃ k, j + k < n ∧ trace (i + k) ≠ trace (j + k)) :
    b + 1 ≤ Fintype.card V := by
  have hroot : ∃ finish, WordPath G root (tracePrefix trace n) finish :=
    (hExact _).2 (by simp [tracePrefix])
  obtain ⟨finish, hrun⟩ := hroot
  exact card_ge_of_distinguished_cuts hbn hrun
    (fun {word} {t} hp _ => (hExact word).1 ⟨t, hp⟩)
    hseparates

/-- Convenient exclusion form of the finite-window certificate: if a
candidate graph has at most b vertices, the same window proves that it
cannot be an exact prefix presentation. -/
theorem not_exactRoot_of_finite_window [Fintype V]
    {trace : ℕ → A} (G : LabeledGraph V A) (root : V)
    (n b : ℕ) (hbn : b ≤ n)
    (hsmall : Fintype.card V ≤ b)
    (hseparates : ∀ i j, i < j → j ≤ b →
      ∃ k, j + k < n ∧ trace (i + k) ≠ trace (j + k)) :
    ¬ ExactRoot G root trace := by
  intro hExact
  have hlarge := card_ge_of_finite_window G root hExact n b hbn hseparates
  omega

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficSingletonPrefixRigidity
