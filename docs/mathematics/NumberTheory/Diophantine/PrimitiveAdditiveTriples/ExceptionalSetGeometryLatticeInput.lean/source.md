# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetGeometryLatticeInput

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a0f13e1214c55db86947b1cca5144b955e5dfa9` · SHA-256 `fe81b6a5c8785dee666e64f4cd5227f46836694f3b68edfdc24785de9499f04e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.

Mathematical source: Christian Bernert, Tim Browning, Jared Duker Lichtman,
and Joni Teräväinen, "Bounds on the exceptional set in the abc conjecture",
arXiv:2410.12234v2 (2026), Proposition 4.1.

The positive primitive linearization imported below is repository work on the
2026 proposition.  The missing primitive lattice estimate is attributed to
D. R. Heath-Brown, "Diophantine approximation with square-free numbers",
Math. Z. 187 (1984), Lemma 3.

This module only converts the existing selected variables into the generic
finite primitive linear-box count.  It preserves all dyadic factors and proves
no Heath--Brown cardinality inequality.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #427. Stacked parent: PR #418.
-/
import GRWTSK.GeometryOfNumbers.PrimitiveLinearKernel
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetGeometryPrimitivity
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Finset
open scoped BigOperators
open AnatomicBoxes
open GRWTSK.GeometryOfNumbers.PrimitiveLinearBoxCount
open GRWTSK.GeometryOfNumbers.PrimitiveLinearKernel

namespace ExceptionalSetAnalyticInterfaces

/-- Literal dyadic upper bound for one selected weighted monomial.  Every
coordinate keeps its own exponent and factor two. -/
def geometrySelectedMonomialUpper {d : ℕ}
    (I : Finset (Fin d)) (scale : Fin d → ℕ) : ℕ :=
  ∏ i ∈ I, (2 * scale i) ^ paperIndex i

/-- Strict paper-dyadic coordinate membership supplies the exact selected
monomial upper bound. -/
theorem paperSelectedMonomial_le_geometryUpper
    {d : ℕ} (I : Finset (Fin d))
    {x scale : Fin d → ℕ}
    (strict : ∀ i, PaperDyadic (x i) (scale i)) :
    paperSelectedMonomial I x ≤
      geometrySelectedMonomialUpper I scale := by
  unfold paperSelectedMonomial geometrySelectedMonomialUpper
  apply Finset.prod_le_prod₀
  · simp
  · intro i hi
    gcongr
    exact (strict i).2

/-- The selected variables as one generic natural point. -/
def geometrySelectedPoint {d : ℕ}
    (q : Point d) (I I' I'' : Finset (Fin d)) :
    GRWTSK.GeometryOfNumbers.PrimitiveLinearBoxCount.Point :=
  (geometryVariableA I q,
    geometryVariableB I' q,
    geometryVariableC I'' q)

/-- Generic anisotropic data associated to one positive primitive source point.
The box lengths are the exact coordinatewise dyadic-product upper bounds. -/
noncomputable def geometryPrimitiveLinearBoxData
    {d : ℕ} {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d))
    (hq : q ∈ paperBoxFinset p)
    (linearization :
      PrimitivePositiveGeometryLinearization p q I I' I'') :
    Data := by
  have filtered := Finset.mem_filter.mp hq
  have strictA : ∀ i, PaperDyadic (q.1 i) (p.A i) := filtered.2.1
  have strictB : ∀ i, PaperDyadic (q.2.1 i) (p.B i) := filtered.2.2.1
  have strictC : ∀ i, PaperDyadic (q.2.2 i) (p.C i) := filtered.2.2.2
  have upperA := paperSelectedMonomial_le_geometryUpper I strictA
  have upperB := paperSelectedMonomial_le_geometryUpper I' strictB
  have upperC := paperSelectedMonomial_le_geometryUpper I'' strictC
  exact
    { a := geometryCoefficientA p I q
      b := geometryCoefficientB p I' q
      c := geometryCoefficientC p I'' q
      X := geometrySelectedMonomialUpper I p.A
      Y := geometrySelectedMonomialUpper I' p.B
      Z := geometrySelectedMonomialUpper I'' p.C
      a_pos := linearization.positive.coefficientA_pos
      b_pos := linearization.positive.coefficientB_pos
      c_pos := linearization.positive.coefficientC_pos
      X_pos := lt_of_lt_of_le linearization.positive.variableA_pos upperA
      Y_pos := lt_of_lt_of_le linearization.positive.variableB_pos upperB
      Z_pos := lt_of_lt_of_le linearization.positive.variableC_pos upperC
      coefficientPrimitive := linearization.paperPrimitivity.1 }

/-- The existing selected variables belong to the exact generic finite count. -/
theorem geometrySelectedPoint_mem_primitivePositiveSolutions
    {d : ℕ} {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d))
    (hq : q ∈ paperBoxFinset p)
    (linearization :
      PrimitivePositiveGeometryLinearization p q I I' I'') :
    geometrySelectedPoint q I I' I'' ∈
      (geometryPrimitiveLinearBoxData I I' I'' hq linearization).
        primitivePositiveSolutions := by
  rw [Data.mem_primitivePositiveSolutions]
  have filtered := Finset.mem_filter.mp hq
  have strictA : ∀ i, PaperDyadic (q.1 i) (p.A i) := filtered.2.1
  have strictB : ∀ i, PaperDyadic (q.2.1 i) (p.B i) := filtered.2.2.1
  have strictC : ∀ i, PaperDyadic (q.2.2 i) (p.C i) := filtered.2.2.2
  have upperA := paperSelectedMonomial_le_geometryUpper I strictA
  have upperB := paperSelectedMonomial_le_geometryUpper I' strictB
  have upperC := paperSelectedMonomial_le_geometryUpper I'' strictC
  have paperPrimitive := linearization.paperPrimitivity
  refine ⟨Nat.succ_le_iff.mpr linearization.positive.variableA_pos,
    upperA,
    Nat.succ_le_iff.mpr linearization.positive.variableB_pos,
    upperB,
    Nat.succ_le_iff.mpr linearization.positive.variableC_pos,
    upperC, paperPrimitive.2, ?_⟩
  exact linearization.equation

/-- The selected variables also lie in the integral coefficient kernel used by
the geometry-of-numbers formulation. -/
theorem geometrySelectedPoint_mem_linearKernel
    {d : ℕ} {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d))
    (hq : q ∈ paperBoxFinset p)
    (linearization :
      PrimitivePositiveGeometryLinearization p q I I' I'') :
    intPointOfNat (geometrySelectedPoint q I I' I'') ∈
      linearKernel
        (geometryCoefficientA p I q)
        (geometryCoefficientB p I' q)
        (geometryCoefficientC p I'' q) := by
  exact countedPoint_mem_linearKernel
    (geometrySelectedPoint_mem_primitivePositiveSolutions
      I I' I'' hq linearization)

/-- Paper admissibility constructs the complete finite-count input without any
additional coefficient or variable primitivity premise. -/
theorem geometryLatticeInput_of_paperAdmissible
    {d : ℕ} {λ ε₀ : ℝ} {X : ℕ}
    {p : Parameters d} {q : Point d}
    (I I' I'' : Finset (Fin d))
    (admissible : PaperAdmissible λ ε₀ X p)
    (hq : q ∈ paperBoxFinset p) :
    ∃ data : Data,
      geometrySelectedPoint q I I' I'' ∈
        data.primitivePositiveSolutions ∧
      intPointOfNat (geometrySelectedPoint q I I' I'') ∈
        linearKernel data.a data.b data.c := by
  let linearization :=
    primitivePositiveGeometryLinearization_of_paperAdmissible
      I I' I'' admissible hq
  let data :=
    geometryPrimitiveLinearBoxData I I' I'' hq linearization
  refine ⟨data, ?_, ?_⟩
  · exact geometrySelectedPoint_mem_primitivePositiveSolutions
      I I' I'' hq linearization
  · exact geometrySelectedPoint_mem_linearKernel
      I I' I'' hq linearization

/-- This adapter does not construct the missing absolute-constant finite
lattice estimate. -/
theorem lattice_input_does_not_supply_bound_fixture :
    ¬ ((0 : ℝ) ≥ 1) := by norm_num

end ExceptionalSetAnalyticInterfaces

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.paperSelectedMonomial_le_geometryUpper
#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.geometrySelectedPoint_mem_primitivePositiveSolutions
#print axioms GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticInterfaces.geometryLatticeInput_of_paperAdmissible
```
