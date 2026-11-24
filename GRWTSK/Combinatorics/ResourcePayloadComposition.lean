import GRWTSK.Combinatorics.ResourceAttainability

/-!
# Sequential retained payload and empirical resource frontiers

Local mathematical attribution: grwtsk contributors.
Consumer: grwtsk/sofic PR 1, AI-01, manuscript section 5.12.
Coordination: https://github.com/grwtsk/math/issues/1851
SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom
audit and independent review: NOT_RUN. Source-only publication.

The first operation's output remains live throughout the second operation.
The peak is the maximum of the first phase's own bound and the second
phase's bound plus retained first output. This models requested allocation
payload, not RSS or elapsed time. Associativity follows by expanding both
bracketings: retained payload is r1+r2+r3; peak is the maximum of s1,
r1+s2, and r1+r2+s3. The first stage's retained output cannot be
ignored: (2,3) followed by (4,5) has bound (6,7), not (6,5).

For observed costs, soundness gives an inclusion of upward closures by
monotonicity. Equality is equivalent to every valid witness's actual cost
dominating a sampled cost. The converse follows by applying equality to
the budget equal to that witness's own cost. Finiteness of an observed
frontier does not prove this coverage. These are elementary local results,
not a novelty claim or a refinement theorem for the C++ allocator.

The resource-vector definitions and WQO premises come from
ResourceAttainability.lean at aea588d3795fb509a79502e669a197750a14cbdb,
blob 8ec06bac1a36bb3ab4a5ea3573fbb6130802b49c.
No dependency, root import, or formal evidence status is promoted here.
-/

set_option autoImplicit false

namespace GRWTSK.ResourceAttainability

/-- Retained and peak payload in declared units. -/
abbrev PayloadPair := Nat × Nat

def payloadCompose (a b : PayloadPair) : PayloadPair :=
  (a.1 + b.1, max a.2 (a.1 + b.2))

theorem payloadCompose_valid (a b : PayloadPair)
    (ha : a.1 ≤ a.2) (hb : b.1 ≤ b.2) :
    (payloadCompose a b).1 ≤ (payloadCompose a b).2 := by
  change a.1 + b.1 ≤ max a.2 (a.1 + b.2)
  exact le_trans (Nat.add_le_add_left hb a.1) (le_max_right _ _)

theorem payloadCompose_assoc (a b c : PayloadPair) :
    payloadCompose (payloadCompose a b) c =
      payloadCompose a (payloadCompose b c) := by
  apply Prod.ext <;> simp only [payloadCompose] <;> omega

theorem payloadCompose_budget_iff (a b : PayloadPair) (s : Nat) :
    (payloadCompose a b).2 ≤ s ↔ a.2 ≤ s ∧ a.1 + b.2 ≤ s := by
  change max a.2 (a.1 + b.2) ≤ s ↔ a.2 ≤ s ∧ a.1 + b.2 ≤ s
  omega

theorem payloadCompose_monotone (a b c d : PayloadPair)
    (har : a.1 ≤ c.1) (has : a.2 ≤ c.2)
    (hbr : b.1 ≤ d.1) (hbs : b.2 ≤ d.2) :
    (payloadCompose a b).1 ≤ (payloadCompose c d).1 ∧
    (payloadCompose a b).2 ≤ (payloadCompose c d).2 := by
  simp only [payloadCompose]
  omega

example : payloadCompose (2, 3) (4, 5) = (6, 7) := by decide

/-- Upward closure of a finite collection of observed cost vectors. -/
def observedCostRegion (samples : Finset ResourceVec) : Set ResourceVec :=
  {r | ∃ c ∈ samples, c ≤ r}

def observedFrontier (samples : Finset ResourceVec) : Set ResourceVec :=
  {r | Minimal (· ∈ observedCostRegion samples) r}

theorem observedFrontier_finite (samples : Finset ResourceVec) :
    (observedFrontier samples).Finite :=
  WellQuasiOrderedLE.finite_of_isAntichain (setOfPred_minimal_antichain _)

universe u v w
variable {State : Type u} {Claim : Type v}

theorem observedCostRegion_subset (A : ExecutionModel.{u,v,w} State Claim)
    (I : State) (j : Mode) (p : Claim) (samples : Finset ResourceVec)
    (sound : ∀ c ∈ samples, Attainable A I j c p) :
    observedCostRegion samples ⊆ costRegion A I j p := by
  intro r hr
  obtain ⟨c, hc, hcr⟩ := hr
  exact attainable_monotone A hcr (sound c hc)

theorem observedCostRegion_eq_iff (A : ExecutionModel.{u,v,w} State Claim)
    (I : State) (j : Mode) (p : Claim) (samples : Finset ResourceVec)
    (sound : ∀ c ∈ samples, Attainable A I j c p) :
    observedCostRegion samples = costRegion A I j p ↔
      ∀ e, A.valid I j p e → ∃ c ∈ samples, c ≤ A.cost I j p e := by
  constructor
  · intro h e he
    have hcost : A.cost I j p e ∈ costRegion A I j p :=
      ⟨e, he, le_rfl⟩
    rw [← h] at hcost
    exact hcost
  · intro coverage
    ext r
    constructor
    · exact fun hr => observedCostRegion_subset A I j p samples sound hr
    · intro hr
      obtain ⟨e, he, her⟩ := hr
      obtain ⟨c, hc, hce⟩ := coverage e he
      exact ⟨c, hc, le_trans hce her⟩

theorem observedFrontier_eq_of_coverage (A : ExecutionModel.{u,v,w} State Claim)
    (I : State) (j : Mode) (p : Claim) (samples : Finset ResourceVec)
    (sound : ∀ c ∈ samples, Attainable A I j c p)
    (coverage : ∀ e, A.valid I j p e → ∃ c ∈ samples, c ≤ A.cost I j p e) :
    observedFrontier samples = frontier A I j p := by
  unfold observedFrontier frontier
  rw [(observedCostRegion_eq_iff A I j p samples sound).2 coverage]

/-! For the Sofic training iteration, persistent parameter storage survives
all three phases. Optimizer state is live during forward/backward; optimizer
peak includes state during the update. Forward output survives backward,
and both outputs survive the update. Expanding the two maxima gives the
three inequalities below. This is a natural-number payload bound, not
a theorem that every C++ allocation is accounted for, and not an RSS bound. -/

def trainingPeak (parameters optimizerState optimizerPeak : Nat)
    (forward backward : PayloadPair) : Nat :=
  parameters + max (optimizerState + (payloadCompose forward backward).2)
    (optimizerPeak + (payloadCompose forward backward).1)

theorem trainingPeak_budget_iff (parameters optimizerState optimizerPeak budget : Nat)
    (forward backward : PayloadPair) :
    trainingPeak parameters optimizerState optimizerPeak forward backward ≤ budget ↔
      parameters + optimizerState + forward.2 ≤ budget ∧
      parameters + optimizerState + forward.1 + backward.2 ≤ budget ∧
      parameters + optimizerPeak + forward.1 + backward.1 ≤ budget := by
  simp only [trainingPeak, payloadCompose]
  omega

/-! Exact frontier comparison: a budget achievable at I dominates a
minimal budget at I, which must dominate one at J for a filtration
improvement. Conversely, each old minimal budget is achievable, so
filtration inclusion implies the indicated domination. Preservation of
deductive content is a separate premise. Neither result infers true
frontier coverage from empirical samples. -/

theorem filtrationImproves_iff_frontier_domination
    (A : ExecutionModel.{u,v,w} State Claim) (I J : State) :
    FiltrationImproves A I J ↔
      (∀ p, A.derives I p ↔ A.derives J p) ∧
      ∀ j p m, m ∈ frontier A I j p → ∃ n ∈ frontier A J j p, n ≤ m := by
  constructor
  · intro h
    refine ⟨h.1, ?_⟩
    intro j p m hm
    have old : Attainable A I j m p :=
      (frontier_characterization A I j p m).2 ⟨m, hm, le_rfl⟩
    exact (frontier_characterization A J j p m).1 (h.2 j m p old)
  · rintro ⟨content, domination⟩
    refine ⟨content, ?_⟩
    intro j r p hr
    obtain ⟨m, hm, hmr⟩ := (frontier_characterization A I j p r).1 hr
    obtain ⟨n, hn, hnm⟩ := domination j p m hm
    exact (frontier_characterization A J j p r).2 ⟨n, hn, le_trans hnm hmr⟩

/-- A strict improvement has a new minimal budget not dominated by any
old minimal budget. A finite sample gap cannot establish this negative
statement unless old-region coverage (or a separate impossibility result)
is justified. -/
theorem strictImprovement_iff_frontier_gap
    (A : ExecutionModel.{u,v,w} State Claim) (I J : State) :
    StrictImprovement A I J ↔
      FiltrationImproves A I J ∧
      ∃ j p m, m ∈ frontier A J j p ∧
        ¬ (∃ n ∈ frontier A I j p, n ≤ m) := by
  unfold StrictImprovement
  constructor
  · rintro ⟨hi, j, r, p, hj, hnot⟩
    obtain ⟨m, hm, hmr⟩ := (frontier_characterization A J j p r).1 hj
    refine ⟨hi, j, p, m, hm, ?_⟩
    intro h
    exact hnot (attainable_monotone A hmr
      ((frontier_characterization A I j p m).2 h))
  · rintro ⟨hi, j, p, m, hm, hnot⟩
    refine ⟨hi, j, m, p, (frontier_characterization A J j p m).2 ⟨m, hm, le_rfl⟩, ?_⟩
    intro h
    exact hnot ((frontier_characterization A I j p m).1 h)

end GRWTSK.ResourceAttainability
