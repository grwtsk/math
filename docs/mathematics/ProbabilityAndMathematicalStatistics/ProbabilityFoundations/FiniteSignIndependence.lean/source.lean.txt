import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshPatterns

/-!
# Finite mixed moments characterize independent fair-sign windows

The sample law is uniform selection from the supplied nonempty finite root
set. Independence is expressed by the exact probability of EVERY finite
coordinate pattern, including the empty pattern. No arithmetic cancellation
hypothesis is proved here. In particular, deterministic Liouville labels do
not acquire cryptographic entropy from this equivalence: randomness of a
selected root, unpredictability and adversarial security are separate data.

This module uses only the finite Walsh pattern identity, and proves both
directions rather than assuming an independence interpretation of zero
pairwise correlations. Reindexing preserves the entire finite-window law.
-/

set_option autoImplicit false

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.FiniteSignIndependence

open scoped BigOperators

variable {ι : Type*}

/-- The normalized source moment, without any target-pattern character. -/
def mixedMoment (roots : Finset ℕ) (I : Finset ι) (x : ℕ → ι → Bool) : ℚ :=
  (∑ n ∈ roots, ∏ i ∈ I, boolSign (x n i)) / (roots.card : ℚ)

/-- Finite-cylinder independence and fairness for the uniform-root sample law.
Its probability interpretation requires the separately stated positive sample
cardinality; this definition alone does not impose a sampling mechanism. -/
def FairIndependentWindows (roots : Finset ℕ) (x : ℕ → ι → Bool) : Prop :=
  ∀ (I : Finset ι) (a : ι → Bool),
    empiricalPattern roots I x a = 1 / (2 : ℚ) ^ I.card

theorem empiricalMoment_factor (roots : Finset ℕ) (I : Finset ι)
    (x : ℕ → ι → Bool) (a : ι → Bool) :
    empiricalMoment roots I x a = mixedMoment roots I x * ∏ i ∈ I, boolSign (a i) := by
  classical
  unfold empiricalMoment mixedMoment signedMomentOn
  simp_rw [Finset.prod_mul_distrib]
  rw [← Finset.sum_mul]
  ring

theorem mixedMoment_empty (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (positive : 0 < roots.card) : mixedMoment roots (∅ : Finset ι) x = 1 := by
  have nonzero : (roots.card : ℚ) ≠ 0 := by exact_mod_cast Nat.ne_of_gt positive
  simp [mixedMoment, nonzero]

theorem empiricalMoment_allTrue (roots : Finset ℕ) (I : Finset ι)
    (x : ℕ → ι → Bool) :
    empiricalMoment roots I x (fun _ => true) = mixedMoment roots I x := by
  simp [empiricalMoment_factor, boolSign]

/-- Vanishing of every nonempty subset moment of one window determines every
pattern in that window, without a limiting or asymptotic argument. -/
theorem uniform_window_of_zero_moments (roots : Finset ℕ) (I : Finset ι)
    (x : ℕ → ι → Bool) (positive : 0 < roots.card)
    (zero : ∀ S ⊆ I, S ≠ ∅ → mixedMoment roots S x = 0) (a : ι → Bool) :
    empiricalPattern roots I x a = 1 / (2 : ℚ) ^ I.card := by
  classical
  have reconstruction := empiricalPattern_walsh roots I x a positive
  have moments : (∑ S ∈ I.powerset, empiricalMoment roots S x a) = 1 := by
    rw [Finset.sum_eq_single (∅ : Finset ι)]
    · rw [empiricalMoment_factor, mixedMoment_empty roots x positive]
      simp
    · intro S hS hnonempty
      rw [empiricalMoment_factor, zero S (Finset.mem_powerset.mp hS) hnonempty]
      simp
    · simp
  rw [moments] at reconstruction
  apply (eq_div_iff (by positivity : (2 : ℚ) ^ I.card ≠ 0)).mpr
  nlinarith

theorem fairWindows_of_zero_moments (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (positive : 0 < roots.card)
    (zero : ∀ S : Finset ι, S ≠ ∅ → mixedMoment roots S x = 0) :
    FairIndependentWindows roots x := by
  intro I a
  exact uniform_window_of_zero_moments roots I x positive (fun S _ hS => zero S hS) a

/-- The reverse direction needs all finite window laws, rather than pairwise
independence. A finite-subset induction isolates each highest mixed moment. -/
theorem zero_moments_of_fairWindows (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (positive : 0 < roots.card) (fair : FairIndependentWindows roots x) :
    ∀ S : Finset ι, S ≠ ∅ → mixedMoment roots S x = 0 := by
  classical
  intro S
  refine Finset.strongInductionOn S ?_
  intro S ih nonempty
  have reconstruction := empiricalPattern_walsh roots S x (fun _ => true) positive
  rw [fair S (fun _ => true)] at reconstruction
  simp_rw [empiricalMoment_allTrue] at reconstruction
  have proper :
      (∑ T ∈ S.powerset.erase S, mixedMoment roots T x) = 1 := by
    rw [Finset.sum_eq_single (∅ : Finset ι)]
    · exact mixedMoment_empty roots x positive
    · intro T hT hnonempty
      have ht := Finset.mem_erase.mp hT
      exact ih T (Finset.ssubset_iff_subset_ne.mpr
        ⟨Finset.mem_powerset.mp ht.2, ht.1⟩) hnonempty
    · intro absent
      exact False.elim (absent (Finset.mem_erase.mpr ⟨Ne.symm nonempty, by simp⟩))
  have split := Finset.sum_erase_add S.powerset
    (fun T => mixedMoment roots T x) (Finset.mem_powerset.mpr (Finset.Subset.refl S))
  rw [proper] at split
  have pow_nonzero : (2 : ℚ) ^ S.card ≠ 0 := by positivity
  field_simp [pow_nonzero] at reconstruction
  linarith

theorem zero_moments_iff_fairWindows (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (positive : 0 < roots.card) :
    (∀ S : Finset ι, S ≠ ∅ → mixedMoment roots S x = 0) ↔
      FairIndependentWindows roots x :=
  ⟨fairWindows_of_zero_moments roots x positive,
    zero_moments_of_fairWindows roots x positive⟩

/-- Exact reindexing retains the same root identities and every pattern. -/
theorem empiricalPattern_reindex (roots : Finset ℕ) (I : Finset ι)
    (x : ℕ → ι → Bool) (a : ι → Bool) (order : ι ≃ ι) :
    empiricalPattern roots I (fun n i => x n (order i)) a =
      empiricalPattern roots (I.map order.toEmbedding) x (fun j => a (order.symm j)) := by
  classical
  simp [empiricalPattern, patternCountOn, Finset.prod_map]

theorem fairWindows_reindex (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (fair : FairIndependentWindows roots x) (order : ι ≃ ι) :
    FairIndependentWindows roots (fun n i => x n (order i)) := by
  intro I a
  rw [empiricalPattern_reindex, fair]
  simp

/-- With one deterministic root, any nonempty coordinate has a point-mass
law and therefore cannot be fair. No deterministic entropy is inferred. -/
theorem singleton_root_not_fair (root : ℕ) (x : ℕ → ι → Bool) (coordinate : ι) :
    ¬ FairIndependentWindows {root} x := by
  classical
  intro fair
  have contradiction := fair {coordinate} (x root)
  simp only [empiricalPattern, patternCountOn, Finset.prod_singleton,
    Finset.sum_singleton, Finset.card_singleton] at contradiction
  norm_num at contradiction

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.FiniteSignIndependence
