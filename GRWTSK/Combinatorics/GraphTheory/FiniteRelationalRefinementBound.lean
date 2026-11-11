/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Source base: grwtsk/math@37aad7ea78b1812574f1042f19fd3792c1e4c3b6.
Canonical workflow source: grwtsk/noeaaeue@
983cae8f7aba828b5fefaedf4078f5223f296585.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FiniteRelationalTypeDiscovery
import Mathlib

/-!
# Quantitative finite relational observation refinement

## Consumer and exact scope

`FiniteRelationalTypeDiscovery` proves that pairwise eventual separation on a
finite source inventory provides one common finite observation horizon and a
source-correct partial classifier.  The accompanying mathematical argument also
contains a quantitative statement that was not previously encoded: among `m`
source objects, accumulated observation signatures can undergo at most `m-1`
genuine strict refinements.

This file formalizes that statement for the EXISTING dependent observation
prefix.  At stage `N`, `observationClassCount` is the cardinality of the image of

  `p ↦ observationPrefix readout N p`.

The next prefix has one additional dependent coordinate.  Restricting that
coordinate gives a surjection from realized stage-`N+1` signatures onto realized
stage-`N` signatures, so class counts are monotone.  If two sources agree through
stage `N` but disagree through stage `N+1`, restriction is not injective on the
new realized signatures, hence the class count increases strictly.

The generic finite counting lemma then charges every strict increase against
the total cardinal growth.  Consequently any finite set of genuinely splitting
stages below a horizon has cardinality at most

  `Fintype.card P - observationClassCount readout 0`,

and at most `Fintype.card P - 1` on a nonempty inventory.  This bounds the NUMBER
of informative refinements, not their stage indices; arbitrarily many
uninformative stages may occur between them.

No separation readout, classifier, termination rank, physical spin mechanism,
Weil operator, RH, or GRH result is manufactured here.  Constant observations
and the existing delayed infinite-inventory countermodel remain valid hostile
boundaries.  The argument is elementary finite partition refinement; no novelty
claim is made.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy

universe u w

section ObservationClassCount

variable {P : Type u} [Fintype P]
variable {Obs : Nat → Type w}

noncomputable local instance (N : Nat) :
    DecidableEq ((i : Fin (N + 1)) → Obs i.val) :=
  Classical.decEq _

/-- Number of realized dependent observation signatures through stage `N`. -/
noncomputable def observationClassCount
    (readout : (n : Nat) → P → Obs n) (N : Nat) : Nat :=
  ((Finset.univ : Finset P).image (observationPrefix readout N)).card

/-- Forget the final coordinate of a dependent observation prefix. -/
def truncateObservationPrefix (N : Nat)
    (signature : (i : Fin (N + 2)) → Obs i.val) :
    (i : Fin (N + 1)) → Obs i.val :=
  fun i => signature i.castSucc

@[simp]
theorem truncateObservationPrefix_observationPrefix
    (readout : (n : Nat) → P → Obs n) (N : Nat) (p : P) :
    truncateObservationPrefix (Obs := Obs) N
        (observationPrefix readout (N + 1) p) =
      observationPrefix readout N p := by
  rfl

/-- Restriction of every realized longer signature gives exactly the realized
shorter-signature image. -/
theorem observationPrefix_image_truncate
    (readout : (n : Nat) → P → Obs n) (N : Nat) :
    (((Finset.univ : Finset P).image
          (observationPrefix readout (N + 1))).image
        (truncateObservationPrefix (Obs := Obs) N)) =
      ((Finset.univ : Finset P).image (observationPrefix readout N)) := by
  classical
  ext signature
  constructor
  · intro h
    rcases Finset.mem_image.mp h with
      ⟨longSignature, hlong, hrestrict⟩
    rcases Finset.mem_image.mp hlong with ⟨p, hp, hpref⟩
    apply Finset.mem_image.mpr
    refine ⟨p, Finset.mem_univ p, ?_⟩
    calc
      observationPrefix readout N p =
          truncateObservationPrefix (Obs := Obs) N
            (observationPrefix readout (N + 1) p) :=
        (truncateObservationPrefix_observationPrefix readout N p).symm
      _ = truncateObservationPrefix (Obs := Obs) N longSignature :=
        congrArg (truncateObservationPrefix (Obs := Obs) N) hpref
      _ = signature := hrestrict
  · intro h
    rcases Finset.mem_image.mp h with ⟨p, hp, hpref⟩
    apply Finset.mem_image.mpr
    refine ⟨observationPrefix readout (N + 1) p, ?_, ?_⟩
    · exact Finset.mem_image.mpr ⟨p, Finset.mem_univ p, rfl⟩
    · exact (truncateObservationPrefix_observationPrefix readout N p).trans hpref

/-- Adding one observation coordinate cannot merge already distinct realized
signatures. -/
theorem observationClassCount_le_succ
    (readout : (n : Nat) → P → Obs n) (N : Nat) :
    observationClassCount readout N ≤
      observationClassCount readout (N + 1) := by
  classical
  unfold observationClassCount
  rw [← observationPrefix_image_truncate (readout := readout) N]
  exact Finset.card_image_le

/-- Accumulated observation class count is monotone in the stage. -/
theorem observationClassCount_mono
    (readout : (n : Nat) → P → Obs n) :
    Monotone (observationClassCount readout) := by
  exact monotone_nat_of_le_succ
    (fun N => observationClassCount_le_succ readout N)

/-- There cannot be more realized observation classes than source objects. -/
theorem observationClassCount_le_card
    (readout : (n : Nat) → P → Obs n) (N : Nat) :
    observationClassCount readout N ≤ Fintype.card P := by
  classical
  unfold observationClassCount
  calc
    ((Finset.univ : Finset P).image
        (observationPrefix readout N)).card ≤
        (Finset.univ : Finset P).card := Finset.card_image_le
    _ = Fintype.card P := Finset.card_univ

/-- A nonempty source inventory realizes at least one signature at every stage. -/
theorem observationClassCount_pos [Nonempty P]
    (readout : (n : Nat) → P → Obs n) (N : Nat) :
    0 < observationClassCount readout N := by
  classical
  let p : P := Classical.choice (inferInstance : Nonempty P)
  unfold observationClassCount
  apply Finset.card_pos.mpr
  exact ⟨observationPrefix readout N p,
    Finset.mem_image.mpr ⟨p, Finset.mem_univ p, rfl⟩⟩

/-- Stage `N+1` genuinely splits an observational class from stage `N`. -/
def ObservationSplitAt
    (readout : (n : Nat) → P → Obs n) (N : Nat) : Prop :=
  ∃ p q : P,
    observationPrefix readout N p = observationPrefix readout N q ∧
    observationPrefix readout (N + 1) p ≠
      observationPrefix readout (N + 1) q

/-- A genuine split forces strict growth of the realized class count. -/
theorem observationClassCount_lt_succ_of_split
    (readout : (n : Nat) → P → Obs n) (N : Nat)
    (hsplit : ObservationSplitAt readout N) :
    observationClassCount readout N <
      observationClassCount readout (N + 1) := by
  classical
  rcases hsplit with ⟨p, q, hold, hnew⟩
  apply lt_of_le_of_ne (observationClassCount_le_succ readout N)
  intro hcount
  have hcard :
      ((((Finset.univ : Finset P).image
          (observationPrefix readout (N + 1))).image
        (truncateObservationPrefix (Obs := Obs) N)).card) =
      (((Finset.univ : Finset P).image
          (observationPrefix readout (N + 1))).card) := by
    rw [observationPrefix_image_truncate (readout := readout) N]
    simpa only [observationClassCount] using hcount
  have hinjective :
      Set.InjOn (truncateObservationPrefix (Obs := Obs) N)
        (↑((Finset.univ : Finset P).image
          (observationPrefix readout (N + 1))) :
          Set ((i : Fin (N + 2)) → Obs i.val)) :=
    Finset.injOn_of_card_image_eq hcard
  have hp : observationPrefix readout (N + 1) p ∈
      ((Finset.univ : Finset P).image
        (observationPrefix readout (N + 1))) :=
    Finset.mem_image.mpr ⟨p, Finset.mem_univ p, rfl⟩
  have hq : observationPrefix readout (N + 1) q ∈
      ((Finset.univ : Finset P).image
        (observationPrefix readout (N + 1))) :=
    Finset.mem_image.mpr ⟨q, Finset.mem_univ q, rfl⟩
  have hrestricted :
      truncateObservationPrefix (Obs := Obs) N
          (observationPrefix readout (N + 1) p) =
        truncateObservationPrefix (Obs := Obs) N
          (observationPrefix readout (N + 1) q) := by
    simpa only [truncateObservationPrefix_observationPrefix] using hold
  exact hnew (hinjective hp hq hrestricted)

end ObservationClassCount

section StrictRefinementCount

/-- Stages below `H` at which a natural-valued monotone statistic increases. -/
def strictRefinementStages (count : Nat → Nat) (H : Nat) : Finset Nat :=
  (Finset.range H).filter (fun N => count N < count (N + 1))

/-- Every strict increase costs at least one unit of total cardinal growth. -/
theorem strictRefinementStages_card_le_growth
    (count : Nat → Nat) (hmono : Monotone count) (H : Nat) :
    (strictRefinementStages count H).card ≤ count H - count 0 := by
  induction H with
  | zero => simp [strictRefinementStages]
  | succ H ih =>
      have hstep : count H ≤ count (H + 1) := hmono (Nat.le_succ H)
      by_cases hstrict : count H < count (H + 1)
      · have hzero : count 0 ≤ count H := hmono (Nat.zero_le H)
        have hbound :
            (strictRefinementStages count H).card + 1 ≤
              count (H + 1) - count 0 := by
          omega
        simpa [strictRefinementStages, Finset.range_add_one, Finset.filter_insert, hstrict] using hbound
      · have heq : count (H + 1) = count H :=
          Nat.le_antisymm (Nat.le_of_not_gt hstrict) hstep
        simpa [strictRefinementStages, Finset.range_add_one, Finset.filter_insert, hstrict, heq] using ih

end StrictRefinementCount

section QuantitativeObservationRefinement

variable {P : Type u} [Fintype P]
variable {Obs : Nat → Type w}

/-- Informative stages are the strict increases of the actual realized
observation-prefix class count. -/
noncomputable def strictObservationRefinementStages
    (readout : (n : Nat) → P → Obs n) (H : Nat) : Finset Nat :=
  strictRefinementStages (observationClassCount readout) H

/-- The exact initial-class version of the finite partition-refinement bound. -/
theorem strictObservationRefinementStages_card_le
    (readout : (n : Nat) → P → Obs n) (H : Nat) :
    (strictObservationRefinementStages readout H).card ≤
      Fintype.card P - observationClassCount readout 0 := by
  have hgrowth := strictRefinementStages_card_le_growth
    (observationClassCount readout)
    (observationClassCount_mono readout) H
  have hupper := observationClassCount_le_card readout H
  have hmono := observationClassCount_mono readout (Nat.zero_le H)
  unfold strictObservationRefinementStages
  exact by omega

/-- On a nonempty inventory there are at most `m-1` strict informative
refinements, although their stage numbers may be arbitrarily large. -/
theorem strictObservationRefinementStages_card_le_card_sub_one [Nonempty P]
    (readout : (n : Nat) → P → Obs n) (H : Nat) :
    (strictObservationRefinementStages readout H).card ≤
      Fintype.card P - 1 := by
  have h := strictObservationRefinementStages_card_le readout H
  have hpos := observationClassCount_pos readout 0
  exact by omega

/-- Every source-witnessed split below `H` belongs to the strict-refinement
inventory counted above. -/
theorem observationSplitAt_mem_strictObservationRefinementStages
    (readout : (n : Nat) → P → Obs n) {N H : Nat}
    (hNH : N < H) (hsplit : ObservationSplitAt readout N) :
    N ∈ strictObservationRefinementStages readout H := by
  exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hNH,
    observationClassCount_lt_succ_of_split readout N hsplit⟩

/-- Quantitative corollary in source language: any finite collection of
stages, each carrying an actual pair that is split by its next observation,
has at most `m-1` members on a nonempty source inventory. -/
theorem splitStageSet_card_le_card_sub_one [Nonempty P]
    (readout : (n : Nat) → P → Obs n)
    (stages : Finset Nat) (H : Nat)
    (hbelow : ∀ N ∈ stages, N < H)
    (hsplits : ∀ N ∈ stages, ObservationSplitAt readout N) :
    stages.card ≤ Fintype.card P - 1 := by
  have hsubset : stages ⊆ strictObservationRefinementStages readout H := by
    intro N hN
    exact observationSplitAt_mem_strictObservationRefinementStages
      readout (hbelow N hN) (hsplits N hN)
  exact (Finset.card_le_card hsubset).trans
    (strictObservationRefinementStages_card_le_card_sub_one readout H)

end QuantitativeObservationRefinement

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
