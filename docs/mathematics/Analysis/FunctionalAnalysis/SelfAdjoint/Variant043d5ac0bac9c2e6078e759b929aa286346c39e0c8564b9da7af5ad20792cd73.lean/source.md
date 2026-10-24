# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SelfAdjoint.Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c6f23209e1850b7726640787278c9fb2bfc8196` · SHA-256 `043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SpectralClosure.CrossedProduct

/-!
# Finite self-adjoint coefficient check

Over real coefficients, self-adjointness is symmetry of the represented finite
matrix.  The construction theorem consumes an explicit coefficient-symmetry
certificate.
-/

namespace Mathematics.SpectralClosure

abbrev FiniteOperator (Index : Type) :=
  Index → Index → ℝ

def IsSelfAdjoint
    {Index : Type}
    (operator : FiniteOperator Index) : Prop :=
  ∀ row column, operator row column = operator column row

def diagonalOperator
    {Index : Type} [DecidableEq Index]
    (potential : Index → ℝ) :
    FiniteOperator Index :=
  fun row column =>
    if row = column then potential row else 0

def addOperator
    {Index : Type}
    (left right : FiniteOperator Index) :
    FiniteOperator Index :=
  fun row column => left row column + right row column

theorem diagonalOperator_selfAdjoint
    {Index : Type} [DecidableEq Index]
    (potential : Index → ℝ) :
    IsSelfAdjoint (diagonalOperator potential) := by
  intro row column
  by_cases same : row = column
  · subst column
    rfl
  · have reverse : column ≠ row := Ne.symm same
    simp [diagonalOperator, same, reverse]

structure SelfAdjointCoefficientCertificate
    {Index : Type}
    (transport : FiniteOperator Index) where
  transportSymmetry :
    ∀ row column,
      transport row column = transport column row
  proofRef : SpectralId

theorem crossedProductOperator_selfAdjoint
    {Index : Type} [DecidableEq Index]
    (potential : Index → ℝ)
    (transport : FiniteOperator Index)
    (certificate : SelfAdjointCoefficientCertificate transport) :
    IsSelfAdjoint
      (addOperator
        (diagonalOperator potential)
        transport) := by
  intro row column
  unfold addOperator
  rw [diagonalOperator_selfAdjoint potential row column]
  rw [certificate.transportSymmetry row column]

structure JordanSemisimplicityObligation
    {Index : Type}
    (operator : FiniteOperator Index) where
  diagonalizableStatement : Prop
  zeroJordanContributionStatement : Prop
  status : ProofDisposition

end Mathematics.SpectralClosure
```
