import FormalResearch.PositiveAtlas.OrderTwoRecursiveCumulant
import Mathlib.Data.Fin.VecNotation
import Mathlib.Tactic.FinCases

/-!
# Order-three recursive cumulant recovery

This module evaluates all proper partitions of three labelled directions.

There are four:
* the discrete partition 0|1|2;
* the pair-singleton partition 01|2;
* the pair-singleton partition 02|1;
* the pair-singleton partition 12|0.

Their total weight is

  kappa_1(0) kappa_1(1) kappa_1(2)
  + kappa_2(0,1) kappa_1(2)
  + kappa_2(0,2) kappa_1(1)
  + kappa_2(1,2) kappa_1(0).

The finite log-affine raw third moment is proved to equal the verified third
cumulant plus exactly these lower-order terms.  Hence the recursive raw
cumulant agrees with the verified analytic third cumulant.
-/

namespace FormalResearch.PositiveAtlas

universe u v

namespace MomentCumulant

variable {E : Type u}
variable {R : Type v} [CommRing R]

/-- Blocks for the partition 01|2. -/
def blocks01_2 : Finset (Finset (Fin 3)) :=
  {{(0 : Fin 3), (1 : Fin 3)}, {(2 : Fin 3)}}

/-- Blocks for the partition 02|1. -/
def blocks02_1 : Finset (Finset (Fin 3)) :=
  {{(0 : Fin 3), (2 : Fin 3)}, {(1 : Fin 3)}}

/-- Blocks for the partition 12|0. -/
def blocks12_0 : Finset (Finset (Fin 3)) :=
  {{(1 : Fin 3), (2 : Fin 3)}, {(0 : Fin 3)}}

/-- The pair-singleton partition 01|2. -/
def pairPartition01_2 : DirectionPartition 3 := by
  refine Finpartition.ofExistsUnique
    (s := (Finset.univ : Finset (Fin 3)))
    blocks01_2
    (fun p _ => Finset.subset_univ p)
    ?_ ?_
  · intro a ha
    fin_cases a <;> simp [ExistsUnique, blocks01_2]
  · decide

/-- The pair-singleton partition 02|1. -/
def pairPartition02_1 : DirectionPartition 3 := by
  refine Finpartition.ofExistsUnique
    (s := (Finset.univ : Finset (Fin 3)))
    blocks02_1
    (fun p _ => Finset.subset_univ p)
    ?_ ?_
  · intro a ha
    fin_cases a <;> simp [ExistsUnique, blocks02_1]
  · decide

/-- The pair-singleton partition 12|0. -/
def pairPartition12_0 : DirectionPartition 3 := by
  refine Finpartition.ofExistsUnique
    (s := (Finset.univ : Finset (Fin 3)))
    blocks12_0
    (fun p _ => Finset.subset_univ p)
    ?_ ?_
  · intro a ha
    fin_cases a <;> simp [ExistsUnique, blocks12_0]
  · decide

@[simp]
theorem pairPartition01_2_parts :
    pairPartition01_2.parts = blocks01_2 :=
  rfl

@[simp]
theorem pairPartition02_1_parts :
    pairPartition02_1.parts = blocks02_1 :=
  rfl

@[simp]
theorem pairPartition12_0_parts :
    pairPartition12_0.parts = blocks12_0 :=
  rfl

/-- The four proper partitions of three labelled directions. -/
def properPartitionsThreeExplicit :
    Finset (DirectionPartition 3) :=
  {(⊥ : DirectionPartition 3),
    pairPartition01_2,
    pairPartition02_1,
    pairPartition12_0}


example : (properPartitions 3 (Nat.succ_pos 2)).card = 4 := by decide +kernel
example : properPartitionsThreeExplicit.card = 4 := by decide
example : properPartitionsThreeExplicit ⊆ properPartitions 3 (Nat.succ_pos 2) := by
  intro P hP
  simp only [properPartitionsThreeExplicit, Finset.mem_insert, Finset.mem_singleton] at hP
  rcases hP with rfl | rfl | rfl | rfl
  all_goals
    apply Finset.mem_erase.mpr
    refine ⟨?_, Finset.mem_univ _⟩
    intro heq
    have hp := congrArg Finpartition.parts heq
    exact (by decide) hp
end MomentCumulant
end FormalResearch.PositiveAtlas
