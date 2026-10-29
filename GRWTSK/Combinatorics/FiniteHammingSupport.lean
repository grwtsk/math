import Batteries.Data.BitVec.Lemmas
import Mathematics.Projection.ExactOverlap
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Data.Finset.Card

/-!
# Finite support of Boolean incidence

The finite Hamming metric is the cardinality of symmetric support difference.
This elementary representation is exact and contains no floating embedding.
-/

namespace Mathematics.Projection

/-- Set coordinates of one finite incidence code. -/
def finiteSupport
    {width : Nat}
    (code : FiniteIncidenceCode width) :
    Finset (Fin width) :=
  Finset.univ.filter fun index ↦ code.bits.getLsb index = true

/-- Exact incidence code represented by a finite coordinate set. -/
def incidenceOfSupport
    {width : Nat}
    (support : Finset (Fin width)) :
    FiniteIncidenceCode width where
  bits := BitVec.ofFnLE fun index ↦ decide (index ∈ support)

@[simp]
theorem finiteSupport_incidenceOfSupport
    {width : Nat}
    (support : Finset (Fin width)) :
    finiteSupport (incidenceOfSupport support) = support := by
  ext index
  simp [finiteSupport, incidenceOfSupport]

@[simp]
theorem incidenceOfSupport_finiteSupport
    {width : Nat}
    (code : FiniteIncidenceCode width) :
    incidenceOfSupport (finiteSupport code) = code := by
  cases code with
  | mk bits =>
      have bits_equal :
          (incidenceOfSupport
            (finiteSupport { bits := bits })).bits = bits := by
        apply BitVec.eq_of_getElem_eq
        intro index inBounds
        simp [incidenceOfSupport, finiteSupport]
      simpa [incidenceOfSupport] using
        congrArg FiniteIncidenceCode.mk bits_equal

private theorem cpopNatRec_eq_sum_range
    {width count : Nat}
    (bits : BitVec width) :
    bits.cpopNatRec count 0 =
      ∑ index ∈ Finset.range count,
        (bits.getLsbD index).toNat := by
  induction count with
  | zero =>
      simp
  | succ count inductionHypothesis =>
      simp only [BitVec.cpopNatRec_succ]
      rw [BitVec.cpopNatRec_eq, inductionHypothesis]
      rw [Finset.sum_range_succ]
      simp only [Nat.zero_add]

/-- Population count is exactly finite-support cardinality. -/
theorem cpop_eq_finiteSupport_card
    {width : Nat}
    (code : FiniteIncidenceCode width) :
    code.bits.cpop.toNat = (finiteSupport code).card := by
  rw [BitVec.toNat_cpop, cpopNatRec_eq_sum_range]
  rw [← Fin.sum_univ_eq_sum_range]
  calc
    (∑ index : Fin width, (code.bits.getLsb index).toNat) =
        ∑ index : Fin width,
          if code.bits.getLsb index = true then 1 else 0 := by
            apply Finset.sum_congr rfl
            intro index _
            cases code.bits.getLsb index <;> simp
    _ = (finiteSupport code).card := by
      simp [finiteSupport, Finset.sum_boole]

/-- Finite Hamming distance is symmetric-support-difference cardinality. -/
theorem finiteHamming_eq_card_sdiff_union_sdiff
    {width : Nat}
    (left right : FiniteIncidenceCode width) :
    finiteHamming left right =
      ((finiteSupport left \ finiteSupport right) ∪
        (finiteSupport right \ finiteSupport left)).card := by
  rw [finiteHamming, cpop_eq_finiteSupport_card]
  congr 1
  ext index
  have bool_ne_iff
      (leftBit rightBit : Bool) :
      leftBit ≠ rightBit ↔
        (leftBit = true ∧ rightBit = false) ∨
          (rightBit = true ∧ leftBit = false) := by
    cases leftBit <;> cases rightBit <;> simp
  simpa [finiteSupport] using
    bool_ne_iff
      (left.bits.getLsb index)
      (right.bits.getLsb index)

/-- Exact finite Hamming distance is symmetric. -/
theorem finiteHamming_comm
    {width : Nat}
    (left right : FiniteIncidenceCode width) :
    finiteHamming left right = finiteHamming right left := by
  rw [finiteHamming_eq_card_sdiff_union_sdiff]
  rw [finiteHamming_eq_card_sdiff_union_sdiff]
  rw [Finset.union_comm]

/-- Hamming distance to a containing support counts the missing coordinates. -/
theorem finiteHamming_incidenceOfSupport_of_subset
    {width : Nat}
    {left right : Finset (Fin width)}
    (subset : left ⊆ right) :
    finiteHamming
        (incidenceOfSupport left)
      (incidenceOfSupport right) =
      (right \ left).card := by
  rw [finiteHamming_eq_card_sdiff_union_sdiff]
  rw [finiteSupport_incidenceOfSupport, finiteSupport_incidenceOfSupport]
  rw [Finset.sdiff_eq_empty_iff_subset.mpr subset]
  simp

/-- Disjoint supports have additive Hamming distance. -/
theorem finiteHamming_incidenceOfSupport_of_disjoint
    {width : Nat}
    {left right : Finset (Fin width)}
    (disjoint : Disjoint left right) :
    finiteHamming
        (incidenceOfSupport left)
        (incidenceOfSupport right) =
      left.card + right.card := by
  rw [finiteHamming_eq_card_sdiff_union_sdiff]
  rw [finiteSupport_incidenceOfSupport, finiteSupport_incidenceOfSupport]
  rw [Finset.sdiff_eq_self_of_disjoint disjoint]
  rw [Finset.sdiff_eq_self_of_disjoint disjoint.symm]
  exact Finset.card_union_of_disjoint disjoint

end Mathematics.Projection
