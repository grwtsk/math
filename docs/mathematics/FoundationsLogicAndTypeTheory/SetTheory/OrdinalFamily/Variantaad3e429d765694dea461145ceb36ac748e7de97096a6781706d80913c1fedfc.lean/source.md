# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalFamily.Variantaad3e429d765694dea461145ceb36ac748e7de97096a6781706d80913c1fedfc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc8233d064f1413c7df4c55e97cd2485e7df208e` · SHA-256 `aad3e429d765694dea461145ceb36ac748e7de97096a6781706d80913c1fedfc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Arithmetic.LimitCorrespondence
import Mathematics.MobiusOntology.SquareRootNorm

/-!
# Uniform square-root bound over ordinal approximants

Every finite bound comes from the existing four-term trace theorem.  The only
new assumption is a uniform constant and logarithmic order across the
projective family.
-/

namespace Mathematics.StratifiedBoundary.SquareRoot

open Mathematics.ConnesBitfield
open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

structure OrdinalFamilySquareRootCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  scaleAt : Nat → Scale
  logarithmicOrder : Nat
  logarithmicOrderMatches :
    ∀ stage,
      (system.cut stage).closure.assembly
          .logarithmicOrder =
        logarithmicOrder
  uniformConstant : ℝ
  uniformConstantNonnegative :
    0 ≤ uniformConstant
  totalConstantUniform :
    ∀ stage,
      (system.cut stage).closure.assembly
          .totalConstant ≤
        uniformConstant

namespace OrdinalFamilySquareRootCertificate

def mass
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (certificate :
      OrdinalFamilySquareRootCertificate system)
    (stage : Nat) : ℝ :=
  (system.cut stage).closure.assembly.mass
    (certificate.scaleAt stage)

def discrepancyNorm
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (certificate :
      OrdinalFamilySquareRootCertificate system)
    (stage : Nat) : ℝ :=
  (system.cut stage).closure.assembly.discrepancyNorm
    (certificate.scaleAt stage)

theorem ordinal_family_square_root_bound
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (certificate :
      OrdinalFamilySquareRootCertificate system)
    (stage : Nat) :
    certificate.discrepancyNorm stage ≤
      certificate.uniformConstant *
        Mathematics.MobiusOntology.squareRootWeight
          (certificate.mass stage)
          certificate.logarithmicOrder := by
  have finiteBound :=
    (system.cut stage).closure
      .deterministicDiscrepancyBound
        (certificate.scaleAt stage)
  rw [certificate.logarithmicOrderMatches stage] at
    finiteBound
  have weightNonnegative :
      0 ≤
        Mathematics.MobiusOntology.squareRootWeight
          (certificate.mass stage)
          certificate.logarithmicOrder := by
    apply mul_nonneg
    · exact Real.sqrt_nonneg _
    · exact pow_nonneg
        (add_nonneg zero_le_one
          (Real.log_nonneg
            ((system.cut stage).closure.assembly
              .massAtLeastOne
                (certificate.scaleAt stage))))
        _
  exact le_trans finiteBound
    (mul_le_mul_of_nonneg_right
      (certificate.totalConstantUniform stage)
      weightNonnegative)

def toSquareRootNormCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (certificate :
      OrdinalFamilySquareRootCertificate system) :
    Mathematics.MobiusOntology.SquareRootNormCertificate
      Nat where
  mass := certificate.mass
  discrepancyNorm := certificate.discrepancyNorm
  logarithmicOrder :=
    certificate.logarithmicOrder
  constant := certificate.uniformConstant
  massAtLeastOne := fun stage =>
    (system.cut stage).closure.assembly
      .massAtLeastOne
        (certificate.scaleAt stage)
  constantNonnegative :=
    certificate.uniformConstantNonnegative
  bound :=
    certificate.ordinal_family_square_root_bound

theorem ordinal_family_square_root_finite
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (certificate :
      OrdinalFamilySquareRootCertificate system) :
    Mathematics.MobiusOntology.SquareRootNormFinite
      certificate.mass
      certificate.discrepancyNorm
      certificate.logarithmicOrder :=
  Mathematics.MobiusOntology.squareRootNorm_finite
    certificate.toSquareRootNormCertificate

end OrdinalFamilySquareRootCertificate

end Mathematics.StratifiedBoundary.SquareRoot
```
