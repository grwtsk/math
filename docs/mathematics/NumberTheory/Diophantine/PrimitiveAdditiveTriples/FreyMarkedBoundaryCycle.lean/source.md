# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedBoundaryCycle

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69f3fef5dfe98545152a0889a7ffec268aeb1237` · SHA-256 `61d7de5ba169e476bc67a7ba0479a8fed34e8499c0e91ed80ba71b43130c8f30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Bind a finite C3/reflection boundary-chart orbit to the OLD actual marked
observer and OLD rational S-unit pair. Denominators change among c,b,a;
full affine-pair height, total boundary support and depth do not change.
An adaptive choice among these six charts cannot lower the signed ABC
height/counting defect. This is not a geometric-cover or elliptic-jet atlas,
not an action of the Frey two-torsion translation, and not a height bound.
Unelaborated source proof scripts: NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryCycle
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedSUnit

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedBoundaryCycle

open FreyMarkedObservationHeight FreyMarkedSUnit
open GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryCycle
open GRWTSK.NumberTheory.Height.RationalVectorAffineHeight
open GRWTSK.NumberTheory.Height.PrimitivePairNormalization
open GRWTSK.NumberTheory.Padics.RationalPairSupport
open GRWTSK.NumberTheory.Factorization.NaturalRadicalExcess
open scoped BigOperators

/-- Extract the PREVIOUS rational values; no separately fitted source ratios. -/
def sourcePair (t : PrimitiveAdditiveTriple) : UnitPair where
  left := leftUnit t
  right := rightUnit t
  left_ne := ne_of_gt (units_pos t).1
  right_ne := ne_of_gt (units_pos t).2
  sum_one := unit_equation t

/-- Same original zero/positive/negative observation slots. -/
theorem source_values (t : PrimitiveAdditiveTriple) :
    values (sourcePair t) = observation t := by
  funext i
  fin_cases i <;>
    simp [values,sourcePair,leftUnit,rightUnit,observation_eq,profile]

/-- Keep source identity, rotation index and reflection choice as separate arguments. -/
def chartValues (t : PrimitiveAdditiveTriple) (j : Fin 3) (reflected : Bool) : Fin 3 → ℚ :=
  values (chart (sourcePair t) j reflected)

theorem cyclic_values (t : PrimitiveAdditiveTriple) :
    values (cycle (sourcePair t)) = ![0,(t.c : ℚ)/(t.b : ℚ),(t.a : ℚ)/(t.b : ℚ)] ∧
    values (cycle (cycle (sourcePair t))) = ![0,-(t.b : ℚ)/(t.a : ℚ),-(t.c : ℚ)/(t.a : ℚ)] := by
  have ha : (t.a : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.a_pos)
  have hb : (t.b : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.b_pos)
  have hc : (t.c : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt t.c_pos)
  constructor <;> funext i <;> fin_cases i <;>
    simp [values,cycle,sourcePair,(unit_values t).1,(unit_values t).2] <;>
    field_simp [ha,hb,hc] <;> ring

/-- The old primitive numerator, rather than an assumed fraction normal form, identifies both. -/
theorem source_pair_numerators (t : PrimitiveAdditiveTriple) :
    (sourcePair t).left.num = (t.a : ℤ) ∧ (sourcePair t).right.num = (t.b : ℤ) := by
  have h := values_numerator (sourcePair t)
  rw [source_values,observation_numerator] at h
  constructor
  · simpa using h.1.symm
  · have hh : -(t.b : ℤ) = -(sourcePair t).right.num := by simpa using h.2
    exact neg_injective hh.symm

/-- Exact denominator motion: c -> b -> a -> c. This does not discard the other primes. -/
theorem cyclic_denominators (t : PrimitiveAdditiveTriple) :
    denominator (values (sourcePair t)) = t.c ∧
    denominator (values (cycle (sourcePair t))) = t.b ∧
    denominator (values (cycle (cycle (sourcePair t)))) = t.a := by
  refine ⟨?_,?_,?_⟩
  · rw [source_values,observation_denominator]
  · rw [cycle_denominator,(source_pair_numerators t).2,Int.natAbs_natCast]
  · rw [cycle_twice_denominator,(source_pair_numerators t).1,Int.natAbs_natCast]

/-- Reflection changes source slots but not their common reduced denominator. -/
theorem mirror_denominator (q : UnitPair) :
    denominator (values (mirror q)) = denominator (values q) := by
  rw [denominator_right,denominator_left]
  rfl

/-- Height is inherited from the OLD [1:observation] convention in every chart. -/
theorem chart_source_height (t : PrimitiveAdditiveTriple) (j : Fin 3) (reflected : Bool) :
    height (chartValues t j reflected) = (t.c : ℚ) := by
  rw [chartValues,chart_height,source_values,observation_height]

theorem chart_logHeight (t : PrimitiveAdditiveTriple) (j : Fin 3) (reflected : Bool) :
    logHeight (chartValues t j reflected) = Real.log (t.c : ℝ) := by
  rw [logHeight,chart_source_height,Rat.cast_natCast]

/-- Full support is read from the actual pair in each chart, not from its denominator alone. -/
def chartSupport (t : PrimitiveAdditiveTriple) (j : Fin 3) (reflected : Bool) : Finset ℕ :=
  pairSupport (chart (sourcePair t) j reflected).left (chart (sourcePair t) j reflected).right

theorem chart_source_support (t : PrimitiveAdditiveTriple) (j : Fin 3) (reflected : Bool) :
    chartSupport t j reflected = occupied (t.a*t.b*t.c) := by
  rw [chartSupport,chart_support]
  exact markedSupport_eq t

theorem chart_source_depth (t : PrimitiveAdditiveTriple) (j : Fin 3) (reflected : Bool)
    (p : ℕ) (hp : p.Prime) :
    boundaryDepth p (chart (sourcePair t) j reflected).left
      (chart (sourcePair t) j reflected).right = (t.a*t.b*t.c).factorization p := by
  rw [chart_depth _ _ _ p hp]
  exact boundary_depth t p hp

/-- The chart still has the same LEAST rational-prime S, not a newly fitted good-prime set. -/
theorem chart_minimal_S (t : PrimitiveAdditiveTriple) (j : Fin 3) (reflected : Bool)
    (S : Finset ℕ) :
    IsSUnit S (chart (sourcePair t) j reflected).left ∧
      IsSUnit S (chart (sourcePair t) j reflected).right ↔ occupied (t.a*t.b*t.c) ⊆ S := by
  rw [pair_SUnit_iff _ _ (chart (sourcePair t) j reflected).left_ne
    (chart (sourcePair t) j reflected).right_ne]
  change chartSupport t j reflected ⊆ S ↔ _
  rw [chart_source_support]

def chartCount (t : PrimitiveAdditiveTriple) (j : Fin 3) (reflected : Bool) : ℝ :=
  ∑ p ∈ chartSupport t j reflected, Real.log (p : ℝ)

theorem chartCount_eq (t : PrimitiveAdditiveTriple) (j : Fin 3) (reflected : Bool) :
    chartCount t j reflected = truncatedCount t := by
  simp only [chartCount,truncatedCount,chart_source_support,markedSupport_eq]

/-- Exact equality, not a favorable error estimate or an inequality from periodicity. -/
theorem chart_signed_defect (t : PrimitiveAdditiveTriple) (j : Fin 3) (reflected : Bool) :
    logHeight (chartValues t j reflected) - chartCount t j reflected =
      excessLog t.c-supportLog t.a-supportLog t.b := by
  rw [chart_logHeight,chartCount_eq,← observation_logHeight]
  exact height_counting_defect t

/-- Even a source-dependent choice among THESE charts leaves the entire statement unchanged. -/
theorem chosen_chart_bound_iff
    (chooseChart : PrimitiveAdditiveTriple → Fin 3 × Bool) (ε C : ℝ) :
    (∀ t : PrimitiveAdditiveTriple,
      logHeight (chartValues t (chooseChart t).1 (chooseChart t).2) ≤
        (1+ε)*chartCount t (chooseChart t).1 (chooseChart t).2+C) ↔
    (∀ t : PrimitiveAdditiveTriple,
      logHeight (observation t) ≤ (1+ε)*truncatedCount t+C) := by
  simp only [chart_logHeight,chartCount_eq,observation_logHeight]

/-- Quantifiers are preserved. No choice among the finite charts supplies either bound. -/
theorem uniform_chosen_chart_iff
    (chooseChart : PrimitiveAdditiveTriple → Fin 3 × Bool) :
    (∀ ε : ℝ, 0 < ε → ∃ C : ℝ, ∀ t : PrimitiveAdditiveTriple,
      logHeight (chartValues t (chooseChart t).1 (chooseChart t).2) ≤
        (1+ε)*chartCount t (chooseChart t).1 (chooseChart t).2+C) ↔
    (∀ ε : ℝ, 0 < ε → ∃ C : ℝ, ∀ t : PrimitiveAdditiveTriple,
      excessLog t.c ≤ supportLog t.a+supportLog t.b+ε*truncatedCount t+C) := by
  simp only [chosen_chart_bound_iff]
  exact uniform_excess_iff

/-- Bounded original real amplitudes and an exact chart return do not bound source height. -/
theorem no_uniform_chart_height (B : ℕ) :
    ∃ t : PrimitiveAdditiveTriple, ∀ j : Fin 3, ∀ reflected : Bool,
      (B : ℚ) < height (chartValues t j reflected) := by
  refine ⟨unitSource (B+2) (by omega),?_⟩
  intro j reflected
  rw [chart_source_height]
  change (B : ℚ) < ((B+2 : ℕ) : ℚ)
  exact_mod_cast (by omega : B < B+2)

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedBoundaryCycle
```
