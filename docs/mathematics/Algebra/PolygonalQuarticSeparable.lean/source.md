# Complete source: GRWTSK.Algebra.PolygonalQuarticSeparable

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da0ea2e2b9f979a3656b22a48c2d3a3a0d2523a0` · SHA-256 `992ace7e8fa87ddb76ce208251a4e4280ff906098f8bff7c78b780e841f44476`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.PolygonalQuarticSplitting
import Mathlib.FieldTheory.Separable

/-!
Quartic adjacency-value separation and the cubic resolvent.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
All difference identities work in any commutative ring. The no-collision
conclusions require a field and pairwise distinct inputs, not characteristic
zero. No claim about a Galois quotient is made.
-/

namespace GRWTSK.Algebra.PolygonalQuarticSeparable

open Polynomial
open GRWTSK.Algebra.PolygonalQuarticDescent
open GRWTSK.Algebra.PolygonalQuarticSplitting

noncomputable section

variable {R : Type*} [CommRing R]

theorem adjacencyOne_sub_adjacencyTwo (a b c d : R) :
    adjacencyOne a b c d - adjacencyTwo a b c d =
      (a - d) * (c - b) := by
  simp [adjacencyOne, adjacencyTwo, eTwo, qOne, qTwo]
  ring

theorem adjacencyOne_sub_adjacencyThree (a b c d : R) :
    adjacencyOne a b c d - adjacencyThree a b c d =
      (a - c) * (d - b) := by
  simp [adjacencyOne, adjacencyThree, eTwo, qOne, qThree]
  ring

theorem adjacencyTwo_sub_adjacencyThree (a b c d : R) :
    adjacencyTwo a b c d - adjacencyThree a b c d =
      (a - b) * (d - c) := by
  simp [adjacencyTwo, adjacencyThree, eTwo, qTwo, qThree]
  ring

variable {F : Type*} [Field F]

/-- Distinct quartic roots give three distinct adjacency weights in
every characteristic, including 2 and 3. -/
theorem adjacency_values_pairwise_distinct (a b c d : F)
    (hab : a ≠ b) (hac : a ≠ c) (had : a ≠ d)
    (hbc : b ≠ c) (hbd : b ≠ d) (hcd : c ≠ d) :
    adjacencyOne a b c d ≠ adjacencyTwo a b c d ∧
    adjacencyOne a b c d ≠ adjacencyThree a b c d ∧
    adjacencyTwo a b c d ≠ adjacencyThree a b c d := by
  constructor
  · intro h
    have hzero : (a - d) * (c - b) = 0 := by
      rw [← adjacencyOne_sub_adjacencyTwo, sub_eq_zero.mpr h]
    exact (mul_ne_zero (sub_ne_zero.mpr had)
      (sub_ne_zero.mpr (Ne.symm hbc))) hzero
  constructor
  · intro h
    have hzero : (a - c) * (d - b) = 0 := by
      rw [← adjacencyOne_sub_adjacencyThree, sub_eq_zero.mpr h]
    exact (mul_ne_zero (sub_ne_zero.mpr hac)
      (sub_ne_zero.mpr (Ne.symm hbd))) hzero
  · intro h
    have hzero : (a - b) * (d - c) = 0 := by
      rw [← adjacencyTwo_sub_adjacencyThree, sub_eq_zero.mpr h]
    exact (mul_ne_zero (sub_ne_zero.mpr hab)
      (sub_ne_zero.mpr (Ne.symm hcd))) hzero

/-- The cubic is separable whenever the four labelled roots are distinct.
This theorem uses the pinned Mathlib finite-product separability criterion. -/
theorem adjacencyResolvent_separable (a b c d : F)
    (hab : a ≠ b) (hac : a ≠ c) (had : a ≠ d)
    (hbc : b ≠ c) (hbd : b ≠ d) (hcd : c ≠ d) :
    (adjacencyResolventFromRoots a b c d).Separable := by
  obtain ⟨h12, h13, h23⟩ :=
    adjacency_values_pairwise_distinct a b c d hab hac had hbc hbd hcd
  let v : Fin 3 → F :=
    ![adjacencyOne a b c d, adjacencyTwo a b c d,
      adjacencyThree a b c d]
  have hv : Function.Injective v := by
    intro i j hij
    fin_cases i <;> fin_cases j <;>
      simp [v] at hij ⊢
    all_goals first | exact h12 hij | exact h13 hij | exact h23 hij |
      exact (h12 hij.symm) | exact (h13 hij.symm) |
      exact (h23 hij.symm)
  have hsep := (Polynomial.separable_prod_X_sub_C_iff (f := v)).2 hv
  simpa [adjacencyResolventFromRoots, v, Fin.prod_univ_three] using hsep


/-- An actual separable quartic enumerated in a splitting extension has
a separable adjacency resolvent. The separability assumption enters only
through the injectivity of its four-root enumeration. -/
theorem adjacencyResolvent_separable_of_quartic_enumeration
    {K L : Type*} [Field K] [Field L] [Algebra K L]
    (p : K[X]) (hsep : p.Separable)
    (e : QuarticRootEnumeration (L := L) p) :
    (adjacencyResolventFromRoots
      (e.r 0) (e.r 1) (e.r 2) (e.r 3)).Separable := by
  have hi := enumeration_injective_of_separable p hsep e
  apply adjacencyResolvent_separable
  · exact hi.ne (by decide : (0 : Fin 4) ≠ 1)
  · exact hi.ne (by decide : (0 : Fin 4) ≠ 2)
  · exact hi.ne (by decide : (0 : Fin 4) ≠ 3)
  · exact hi.ne (by decide : (1 : Fin 4) ≠ 2)
  · exact hi.ne (by decide : (1 : Fin 4) ≠ 3)
  · exact hi.ne (by decide : (2 : Fin 4) ≠ 3)

/-- Splitting and exact degree provide a genuine root enumeration; a
separable quartic then produces a separable cubic in the extension. -/
theorem exists_separable_adjacencyResolvent_of_splitting_quartic
    {K L : Type*} [Field K] [Field L] [Algebra K L]
    (p : K[X]) (hs : (p.map (algebraMap K L)).Splits)
    (hdegree : p.natDegree = 4) (hsep : p.Separable) :
    ∃ e : QuarticRootEnumeration (L := L) p,
      (adjacencyResolventFromRoots
        (e.r 0) (e.r 1) (e.r 2) (e.r 3)).Separable := by
  obtain ⟨e⟩ := enumeration_of_splitting_degree_four (L := L) p hs hdegree
  exact ⟨e, adjacencyResolvent_separable_of_quartic_enumeration p hsep e⟩

end
end GRWTSK.Algebra.PolygonalQuarticSeparable
```
