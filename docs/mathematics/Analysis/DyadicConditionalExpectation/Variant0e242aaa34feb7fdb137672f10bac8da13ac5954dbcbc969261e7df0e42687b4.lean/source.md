# Complete source: GRWTSK.Analysis.DyadicConditionalExpectation.Variant0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `559fbf67a0f035c0eeb31aec5337ef6a1fc31146` · SHA-256 `0e242aaa34feb7fdb137672f10bac8da13ac5954dbcbc969261e7df0e42687b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.CanonicalFactorBlock
public import Mathlib.Analysis.InnerProductSpace.Adjoint
public import Mathlib.Analysis.InnerProductSpace.PiL2
public import Mathlib.Analysis.InnerProductSpace.Projection.FiniteDimensional
public import Mathlib.LinearAlgebra.Dimension.Constructions
import Mathlib.Tactic

/-!
# Canonical finite dyadic conditional expectations

A dyadic cell code assigns every coordinate to one of at most `2^depth`
coefficient-blind cells.  The structured subspace is the span of the cell
indicator vectors, and the conditional expectation is its orthogonal
projection.

The generic code supports finite proofs.  For canonical shell blocks, this
module also derives the code directly from the numerical factor coordinate
and shell exponent.  Those derived codes remove the freedom to choose an
arbitrary finite-rank projection after seeing an arithmetic vector.  Empty
cells merely contribute the zero indicator.  The projection is idempotent,
self-adjoint, and has rank at most `2^depth` by construction.
-/

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators ComplexConjugate InnerProductSpace

/-- Coefficient-blind assignment of a finite coordinate set to dyadic cells
at a fixed depth. -/
structure DyadicCellCode (Index : Type*) [Fintype Index] (depth : ℕ) where
  cell : Index → Fin (2 ^ depth)

/-! ## Canonical codes on exponent-indexed factor blocks -/

/-- Canonical dyadic cell number for a coordinate in the half-open shell
`[2^exponent,2^(exponent+1))`.  The formula divides the shell-relative
coordinate into `2^depth` consecutive cells. -/
@[expose]
def halfOpenShellCell (exponent depth n : ℕ)
    (hlower : 2 ^ exponent ≤ n)
    (hupper : n < 2 ^ (exponent + 1)) : Fin (2 ^ depth) := by
  let base := 2 ^ exponent
  let cells := 2 ^ depth
  have hbase : 0 < base := by simp [base]
  have hcells : 0 < cells := by simp [cells]
  have hrelative : n - base < base := by
    have hdouble : 2 ^ (exponent + 1) = base * 2 := by
      simp [base, pow_succ', Nat.mul_comm]
    rw [hdouble] at hupper
    omega
  refine ⟨((n - base) * cells) / base, ?_⟩
  rw [Nat.div_lt_iff_lt_mul hbase]
  simpa [mul_comm] using Nat.mul_lt_mul_of_pos_right hrelative hcells

/-- Fixed left martingale cells of a canonical shell factor block. -/
@[expose]
def TypeIIShellFactorBlock.leftDyadicCellCode
    {N q : ℕ} (B : TypeIIShellFactorBlock N q) (depth : ℕ) :
    DyadicCellCode B.Left depth where
  cell index :=
    halfOpenShellCell B.leftExponent depth index.1.1
      index.2.2.1 index.2.2.2

/-- Fixed right martingale cells of a canonical shell factor block. -/
@[expose]
def TypeIIShellFactorBlock.rightDyadicCellCode
    {N q : ℕ} (B : TypeIIShellFactorBlock N q) (depth : ℕ) :
    DyadicCellCode B.Right depth where
  cell index :=
    halfOpenShellCell B.rightExponent depth index.1.1
      index.2.2.1 index.2.2.2

/-- Unnormalized indicator of one dyadic cell. -/
@[expose]
def DyadicCellCode.indicator
    {Index : Type*} [Fintype Index] {depth : ℕ}
    (code : DyadicCellCode Index depth) (cell : Fin (2 ^ depth)) :
    EuclideanSpace ℂ Index :=
  WithLp.toLp 2 fun index ↦ if code.cell index = cell then 1 else 0

/-- Subspace of vectors constant on each coded cell. -/
@[expose]
def DyadicCellCode.structuredSubspace
    {Index : Type*} [Fintype Index] {depth : ℕ}
    (code : DyadicCellCode Index depth) :
    Submodule ℂ (EuclideanSpace ℂ Index) :=
  Submodule.span ℂ (Set.range code.indicator)

/-- Orthogonal conditional expectation onto dyadic-cell constants. -/
@[expose]
def dyadicConditionalExpectation
    {Index : Type*} [Fintype Index] {depth : ℕ}
    (code : DyadicCellCode Index depth) :
    EuclideanSpace ℂ Index →L[ℂ] EuclideanSpace ℂ Index :=
  code.structuredSubspace.starProjection

/-- The dyadic conditional expectation is idempotent. -/
@[surface_novel, surface_published]
theorem dyadicConditionalExpectation_idempotent
    {Index : Type*} [Fintype Index] {depth : ℕ}
    (code : DyadicCellCode Index depth) :
    IsIdempotentElem (dyadicConditionalExpectation code) := by
  exact code.structuredSubspace.isIdempotentElem_starProjection

/-- The dyadic conditional expectation is self-adjoint. -/
@[surface_novel, surface_published]
theorem dyadicConditionalExpectation_selfAdjoint
    {Index : Type*} [Fintype Index] {depth : ℕ}
    (code : DyadicCellCode Index depth) :
    IsSelfAdjoint (dyadicConditionalExpectation code) := by
  exact isSelfAdjoint_starProjection code.structuredSubspace

/-- The range is exactly the subspace generated by dyadic-cell indicators. -/
@[surface_novel, surface_published]
theorem range_dyadicConditionalExpectation
    {Index : Type*} [Fintype Index] {depth : ℕ}
    (code : DyadicCellCode Index depth) :
    (dyadicConditionalExpectation code).range = code.structuredSubspace := by
  exact Submodule.range_starProjection code.structuredSubspace

/-- At depth `r`, at most `2^r` structured modes occur. -/
@[surface_novel, surface_published]
theorem rank_dyadicConditionalExpectation_le
    {Index : Type*} [Fintype Index] {depth : ℕ}
    (code : DyadicCellCode Index depth) :
    Module.finrank ℂ (dyadicConditionalExpectation code).range ≤ 2 ^ depth := by
  rw [range_dyadicConditionalExpectation]
  exact (finrank_range_le_card code.indicator).trans_eq (Fintype.card_fin _)

end

end Surface.Core.TypeII
```
