/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.CertifiedSoficFiniteOptimizer
import Mathlib

/-!
# Exhaustive finite bounded enumeration of ORIGINAL certified sofic paths

The original `DefectSoficSystem.sandwich.lower` is the ONLY relation enumerated.
The finite vertex and alphabet enumerations are the original state and label
carriers. There is no candidate/admissible-edge promotion, word quotient,
source-occurrence identification, or search-rank-to-proof coercion.

Unlike `FiniteStateCoverage`, this construction derives finite catalogue
coverage from a total original-edge decider and exact rational edge allowances.
Every bounded certified trace has a catalogue entry with the SAME ordered word,
SAME signed defect and SAME real allowance, not merely a cheaper surrogate.
It preserves the actual `CertifiedTrace` proof. The algorithm compares only
rational costs; the fields carrying real source observations remain unchanged.

An unbounded/global infimum theorem requires ONE separate hypothesis:
nonnegative-cost cycle erasure (or some other demonstrated path shortening)
reduces every certified source-target path to length <= number of states without
increasing allowance. Finiteness alone does NOT supply this fact in Lean.
The existing finite optimizer and the source-anchored return theorems are reused.

Native compilation/kernel/axiom audit: NOT_RUN. Python finite tests are not
Lean verification or source-to-runtime refinement.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficBoundedCatalogue

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficOptimalBudget
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficFiniteOptimizer

universe u v w

/-- Complete, finite original state/label inputs and an actual decision
procedure for the CERTIFIED lower edge, plus exact rational allowance data.
The edge decider is for the original relation, not a stronger discovered graph.
-/
structure FiniteRationalCertifiedGraph (Vertex : Type u) (Label : Type v)
    [Fintype Vertex] [Fintype Label] where
  system : DefectSoficSystem Vertex Label
  edgeCost : Vertex → Label → Vertex → ℚ
  decideLower : ∀ s l t, Decidable (system.sandwich.lower s l t)
  rationalAllowance : ∀ {s t : Vertex} {l : Label},
    system.sandwich.lower s l t →
      ((edgeCost s l t : ℚ) : ℝ) = system.edgeAllowance s l t

variable {Vertex : Type u} {Label : Type v}
  [Fintype Vertex] [Fintype Label] [DecidableEq Vertex] [DecidableEq Label]

/-- Empty certified word at the original state, paying exactly zero. -/
def FiniteRationalCertifiedGraph.emptyRoute
    (G : FiniteRationalCertifiedGraph Vertex Label) (s : Vertex) :
    RationalCertifiedRoute G.system s s where
  word := []
  defect := 0
  allowance := 0
  rationalCost := 0
  trace := CertifiedTrace.nil s
  cost_correct := by norm_num

/-- Prepending ONE actual certified edge, preserving all original trace data. -/
def FiniteRationalCertifiedGraph.prepend
    (G : FiniteRationalCertifiedGraph Vertex Label)
    (s : Vertex) (l : Label) (m : Vertex)
    (edge : G.system.sandwich.lower s l m) {t : Vertex}
    (tail : RationalCertifiedRoute G.system m t) :
    RationalCertifiedRoute G.system s t where
  word := l :: tail.word
  defect := G.system.edgeDefect s l m + tail.defect
  allowance := G.system.edgeAllowance s l m + tail.allowance
  rationalCost := G.edgeCost s l m + tail.rationalCost
  trace := CertifiedTrace.cons edge tail.trace
  cost_correct := by
    change (((G.edgeCost s l m + tail.rationalCost : ℚ) : ℝ) =
      G.system.edgeAllowance s l m + tail.allowance)
    rw [Rat.cast_add, G.rationalAllowance edge, tail.cost_correct]

/-- All ORIGINAL certified routes of EXACTLY `n` edges from `s` to `t`.
Finite-state and finite-label enumeration is exhaustive; rejected lower edges
produce no entry. Each entry is a genuine proof-bearing certified trace. -/
def FiniteRationalCertifiedGraph.routesExactly
    (G : FiniteRationalCertifiedGraph Vertex Label) (t : Vertex) :
    (n : ℕ) → (s : Vertex) → List (RationalCertifiedRoute G.system s t)
  | 0, s =>
      if h : s = t then
        by subst t; exact [G.emptyRoute s]
      else []
  | n + 1, s =>
      (Finset.univ : Finset Label).toList.flatMap fun l =>
        (Finset.univ : Finset Vertex).toList.flatMap fun m =>
          letI : Decidable (G.system.sandwich.lower s l m) := G.decideLower s l m
          if edge : G.system.sandwich.lower s l m then
            (G.routesExactly t n m).map (G.prepend s l m edge)
          else []

/-- Enumerate all lengths 0,...,cutoff using the ACTUAL proof-carrying paths. -/
def FiniteRationalCertifiedGraph.routesWithin
    (G : FiniteRationalCertifiedGraph Vertex Label) (s t : Vertex)
    (cutoff : ℕ) : List (RationalCertifiedRoute G.system s t) :=
  (List.range (cutoff + 1)).flatMap fun n => G.routesExactly t n s

/-- The certified word's exact length is preserved by the enumerator. -/
theorem FiniteRationalCertifiedGraph.routesExactly_length
    (G : FiniteRationalCertifiedGraph Vertex Label)
    (t : Vertex) (n : ℕ) (s : Vertex)
    (r : RationalCertifiedRoute G.system s t)
    (h : r ∈ G.routesExactly t n s) : r.word.length = n := by
  induction n generalizing s with
  | zero =>
      by_cases hs : s = t
      · subst t
        simp only [routesExactly, dif_pos rfl, List.mem_singleton] at h
        subst r
        rfl
      · simp [routesExactly, hs] at h
  | succ n ih =>
      change r ∈ ((Finset.univ : Finset Label).toList.flatMap fun l =>
        (Finset.univ : Finset Vertex).toList.flatMap fun m =>
          letI : Decidable (G.system.sandwich.lower s l m) :=
            G.decideLower s l m
          if edge : G.system.sandwich.lower s l m then
            (G.routesExactly t n m).map (G.prepend s l m edge)
          else []) at h
      obtain ⟨l, _, hlabel⟩ := List.mem_flatMap.mp h
      obtain ⟨m, _, hmiddle⟩ := List.mem_flatMap.mp hlabel
      letI : Decidable (G.system.sandwich.lower s l m) := G.decideLower s l m
      by_cases edge : G.system.sandwich.lower s l m
      · simp only [dif_pos edge] at hmiddle
        obtain ⟨r0, hr0, heq⟩ := List.mem_map.mp hmiddle
        subst r
        change (l :: r0.word).length = n + 1
        simp [ih m r0 hr0]
      · simp [dif_neg edge] at hmiddle

/-- The algorithm recovers EVERY bounded original certified trace, and
retains its EXACT word, signed defect and real allowance. No path identity
is rebuilt from a matrix trace or diffusion rank. -/
theorem FiniteRationalCertifiedGraph.routesExactly_complete
    (G : FiniteRationalCertifiedGraph Vertex Label)
    {s t : Vertex} {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace G.system s word t defect allowance) :
    ∃ r : RationalCertifiedRoute G.system s t,
      r ∈ G.routesExactly t word.length s ∧
      r.word = word ∧ r.defect = defect ∧ r.allowance = allowance := by
  induction trace with
  | nil vertex =>
      refine ⟨G.emptyRoute vertex, ?_, rfl, rfl, rfl⟩
      simp [routesExactly]
  | @cons s m t l word defect allowance edge tail ih =>
      obtain ⟨r, hr, hw, hd, hb⟩ := ih
      refine ⟨G.prepend s l m edge r, ?_, ?_, ?_, ?_⟩
      · change G.prepend s l m edge r ∈
          ((Finset.univ : Finset Label).toList.flatMap fun x =>
            (Finset.univ : Finset Vertex).toList.flatMap fun y =>
              letI : Decidable (G.system.sandwich.lower s x y) :=
                G.decideLower s x y
              if h : G.system.sandwich.lower s x y then
                (G.routesExactly t word.length y).map (G.prepend s x y h)
              else [])
        apply List.mem_flatMap.mpr
        refine ⟨l, by simp, ?_⟩
        apply List.mem_flatMap.mpr
        refine ⟨m, by simp, ?_⟩
        letI : Decidable (G.system.sandwich.lower s l m) := G.decideLower s l m
        simp only [dif_pos edge]
        exact List.mem_map.mpr ⟨r, hr, rfl⟩
      · exact congrArg (l :: ·) hw
      · exact congrArg (G.system.edgeDefect s l m + ·) hd
      · exact congrArg (G.system.edgeAllowance s l m + ·) hb

/-- All bounded original certified paths are covered by the finite list. -/
theorem FiniteRationalCertifiedGraph.routesWithin_complete
    (G : FiniteRationalCertifiedGraph Vertex Label)
    (cutoff : ℕ)
    {s t : Vertex} {word : List Label} {defect allowance : ℝ}
    (trace : CertifiedTrace G.system s word t defect allowance)
    (hlength : word.length ≤ cutoff) :
    ∃ r : RationalCertifiedRoute G.system s t,
      r ∈ G.routesWithin s t cutoff ∧
      r.word = word ∧ r.defect = defect ∧ r.allowance = allowance := by
  obtain ⟨r, hr, hw, hd, hb⟩ := G.routesExactly_complete trace
  refine ⟨r, ?_, hw, hd, hb⟩
  unfold routesWithin
  apply List.mem_flatMap.mpr
  refine ⟨word.length, ?_, hr⟩
  exact List.mem_range.mpr (Nat.lt_succ_of_le hlength)

/-- Every emitted catalogue entry has length at most its stated cutoff. -/
theorem FiniteRationalCertifiedGraph.routesWithin_length
    (G : FiniteRationalCertifiedGraph Vertex Label)
    (s t : Vertex) (cutoff : ℕ)
    (r : RationalCertifiedRoute G.system s t)
    (h : r ∈ G.routesWithin s t cutoff) :
    r.word.length ≤ cutoff := by
  unfold routesWithin at h
  obtain ⟨n, hn, hr⟩ := List.mem_flatMap.mp h
  have hlen := G.routesExactly_length t n s r hr
  have hn' : n ≤ cutoff := Nat.lt_succ_iff.mp (List.mem_range.mp hn)
  exact hlen.le.trans hn'

/-- The only remaining GLOBAL assumption is real certified cycle reduction:
all finite certified walks reduce within the state cardinality with no larger
allowance. All bounded catalogue enumeration/coverage is now constructed. -/
def FiniteRationalCertifiedGraph.CardinalityReduction
    (G : FiniteRationalCertifiedGraph Vertex Label) (s t : Vertex) : Prop :=
  ∀ {word : List Label} {defect allowance : ℝ},
    CertifiedTrace G.system s word t defect allowance →
      ∃ (shortWord : List Label) (shortDefect shortAllowance : ℝ),
        CertifiedTrace G.system s shortWord t shortDefect shortAllowance ∧
        shortWord.length ≤ Fintype.card Vertex ∧
        shortAllowance ≤ allowance

/-- A real route and card-bounded reduction CONSTRUCT the complete finite
coverage certificate needed by the published global-infimum optimizer.
Neither the catalogue nor its coverage is a newly assumed field. -/
noncomputable def FiniteRationalCertifiedGraph.completeCoverage
    (G : FiniteRationalCertifiedGraph Vertex Label) (s t : Vertex)
    (hroute : (CertifiedAllowanceSet G.system s t).Nonempty)
    (hreduce : G.CardinalityReduction s t) :
    FiniteStateCoverage G.system s t := by
  classical
  let N : ℕ := Fintype.card Vertex
  let catalogue := G.routesWithin s t N
  have nonempty : catalogue ≠ [] := by
    obtain ⟨b, w, d, tr⟩ := hroute
    obtain ⟨w', d', b', tr', hlen, hle⟩ := hreduce tr
    obtain ⟨r, hr, _, _, _⟩ := G.routesWithin_complete N tr' hlen
    intro hempty
    have : r ∈ catalogue := hr
    simp [hempty] at this
  obtain ⟨first, rest, hcat⟩ :
      ∃ first rest, catalogue = first :: rest := by
    cases h : catalogue with
    | nil => exact False.elim (nonempty h)
    | cons head tail => exact ⟨head, tail, h⟩
  refine {
    cutoff := N
    cutoff_le_card := le_refl N
    first := first
    rest := rest
    first_bounded := ?_
    rest_bounded := ?_
    reduced := ?_
    enumerated := ?_
  }
  · apply G.routesWithin_length s t N first
    change first ∈ catalogue
    rw [hcat]
    simp
  · intro r hr
    apply G.routesWithin_length s t N r
    change r ∈ catalogue
    rw [hcat]
    simp [hr]
  · intro word defect allowance tr
    exact hreduce tr
  · intro word defect allowance tr hlen
    obtain ⟨r, hr, _, _, heq⟩ := G.routesWithin_complete N tr hlen
    have hmem : r = first ∨ r ∈ rest := by
      change r ∈ catalogue at hr
      rw [hcat] at hr
      exact List.mem_cons.mp hr
    exact ⟨r, hmem, by rw [heq]⟩

/-- The finite rational optimizer now equals the infimum across EVERY
certified path, with the former arbitrary catalogue-coverage premise removed. -/
theorem FiniteRationalCertifiedGraph.optimized_eq_infimum
    (G : FiniteRationalCertifiedGraph Vertex Label)
    (s t : Vertex)
    (hroute : (CertifiedAllowanceSet G.system s t).Nonempty)
    (hreduce : G.CardinalityReduction s t) :
    (((G.completeCoverage s t hroute hreduce).optimizedCost : ℚ) : ℝ) =
      optimalCertifiedBudget G.system hroute := by
  exact (G.completeCoverage s t hroute hreduce).optimized_eq_global_infimum

/-- An actual immutable original source retains its full initial readout
error, plus the OPTIMAL computed finite path cost; nothing is set to zero. -/
theorem SourceAnchored.automatic_finite_source_return
    {Source : Type w} (A : SourceAnchored Source Vertex Label)
    (G : FiniteRationalCertifiedGraph Vertex Label)
    (hsystem : G.system = A.system)
    (x : Source) (target : Vertex)
    (hroute : (CertifiedAllowanceSet G.system (A.encode x) target).Nonempty)
    (hreduce : G.CardinalityReduction (A.encode x) target) :
    |A.original x - A.system.readout target| ≤
      A.initialAllowance x +
        ((G.completeCoverage (A.encode x) target hroute hreduce).optimizedCost : ℝ) := by
  cases hsystem
  exact A.finite_optimized_source_return x
    (G.completeCoverage (A.encode x) target hroute hreduce)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CertifiedSoficBoundedCatalogue
