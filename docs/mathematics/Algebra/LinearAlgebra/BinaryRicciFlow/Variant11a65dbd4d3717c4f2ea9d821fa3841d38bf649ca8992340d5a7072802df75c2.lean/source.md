# Complete source: GRWTSK.Algebra.LinearAlgebra.BinaryRicciFlow.Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0f8cd2e72761119f89039974ed77bd015997012` · SHA-256 `11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib
import Folder.Carrier.BinaryMatrix

/-!
# Folder.Rebuild.DiscreteGeometry.BinaryRicciFlow

A finite bit-word carrier for graph kernels, discrete connection data, and a
Ricci-flow-shaped evolution equation.

The quotient semantics are carried by zero-extended finite-support bit
sequences. `BinaryMatrix` is attached by row-major flattening into a bit word.
No canonical discrete Ricci tensor is selected in this file.
-/

namespace Folder
namespace Rebuild
namespace DiscreteGeometry

noncomputable section

open scoped BigOperators

abbrev Bit := Fin 2

structure BitWord where
  len : Nat
  bit : Fin len → Bit

/-- Canonical zero-extension class: finite-support infinite bit sequence. -/
abbrev PaddedBitState :=
  { f : Nat → Bit // ∃ N, ∀ i, N ≤ i → f i = 0 }

def BitWord.toPadded
    (x : BitWord) : PaddedBitState :=
  ⟨fun i => if h : i < x.len then x.bit ⟨i, h⟩ else 0,
   by
     refine ⟨x.len, ?_⟩
     intro i hi
     have hnot : ¬ i < x.len := Nat.not_lt.mpr hi
     simp [hnot]⟩

def zeroBitWord
    (len : Nat) : BitWord where
  len := len
  bit := fun _ => 0

@[simp]
theorem zeroBitWord_toPadded_apply
    (len i : Nat) :
    (zeroBitWord len).toPadded.1 i = 0 := by
  simp [BitWord.toPadded, zeroBitWord]

/--
All syntactic all-zero words represent the same zero-extended state, so
`0`, `00`, `000`, and longer zero strings collapse at the padded layer.
-/
theorem zeroBitWord_toPadded_eq
    (m n : Nat) :
    (zeroBitWord m).toPadded = (zeroBitWord n).toPadded := by
  ext i
  simp

def bitReal
    (b : Bit) : ℝ :=
  b.val

structure GammaWeight where
  w : Nat → ℝ
  pos : ∀ i, 0 < w i

def geometricWeight
    (r : ℝ)
    (hr : 0 < r) : GammaWeight where
  w i := r ^ i
  pos i := pow_pos hr i

def dyadicWeight : GammaWeight :=
  geometricWeight (1 / 2 : ℝ) (by norm_num)

def triadicWeight : GammaWeight :=
  geometricWeight (1 / 3 : ℝ) (by norm_num)

def supportBound
    (x : PaddedBitState) : Nat :=
  Classical.choose x.property

theorem supportBound_spec
    (x : PaddedBitState) :
    ∀ i, supportBound x ≤ i → x.1 i = 0 :=
  Classical.choose_spec x.property

/-- Gamma-weighted Hamming distance on zero-extension classes. -/
def dGamma
    (Γ : GammaWeight)
    (x y : PaddedBitState) : ℝ :=
  ∑ i ∈ Finset.range (max (supportBound x) (supportBound y)),
    Γ.w i * |bitReal (x.1 i) - bitReal (y.1 i)|

@[simp]
theorem dGamma_self
    (Γ : GammaWeight)
    (x : PaddedBitState) :
    dGamma Γ x x = 0 := by
  simp [dGamma]

/-- Gaussian-type weighted graph kernel. -/
def kernel
    (Γ : GammaWeight)
    (ε : ℝ)
    (x y : PaddedBitState) : ℝ :=
  Real.exp (-(dGamma Γ x y) ^ 2 / ε)

@[simp]
theorem kernel_self
    (Γ : GammaWeight)
    (ε : ℝ)
    (x : PaddedBitState) :
    kernel Γ ε x x = 1 := by
  simp [kernel]

/-- Unnormalized graph Laplacian on a finite sampled state space. -/
def graphLaplacian
    {V : Type}
    [Fintype V]
    (state : V → PaddedBitState)
    (Γ : GammaWeight)
    (ε : ℝ)
    (f : V → ℝ)
    (x : V) : ℝ :=
  ∑ y : V, kernel Γ ε (state x) (state y) * (f x - f y)

@[simp]
theorem graphLaplacian_const
    {V : Type}
    [Fintype V]
    (state : V → PaddedBitState)
    (Γ : GammaWeight)
    (ε c : ℝ) :
    graphLaplacian state Γ ε (fun _ : V => c) = fun _ => 0 := by
  funext x
  simp [graphLaplacian]

abbrev Fiber
    (k : Nat) :=
  Fin k → ℝ

def vsub
    {k : Nat}
    (u v : Fiber k) : Fiber k :=
  fun a => u a - v a

@[simp]
theorem vsub_self
    {k : Nat}
    (u : Fiber k) :
    vsub u u = 0 := by
  funext a
  simp [vsub]

/--
Extra discrete connection data. There is no canonical Levi-Civita connection
on this carrier.
-/
structure DiscreteConnection
    (V : Type)
    (k : Nat) where
  transport : V → V → Fiber k → Fiber k

def covariantDifference
    {V : Type}
    {k : Nat}
    (A : DiscreteConnection V k)
    (s : V → Fiber k)
    (x y : V) : Fiber k :=
  vsub (A.transport x y (s x)) (s y)

/-- Curvature as holonomy defect around an oriented triangle. -/
def triangleCurvature
    {V : Type}
    {k : Nat}
    (A : DiscreteConnection V k)
    (x y z : V)
    (v : Fiber k) : Fiber k :=
  vsub
    (A.transport z x (A.transport y z (A.transport x y v)))
    v

/-- Torsion is deliberately separate; ordinary Ricci flow does not supply it. -/
structure DiscreteTorsionDatum
    (V : Type)
    (k : Nat) where
  torsion : V → V → Fiber k
  antisymmetric : Prop

/--
A discrete Ricci tensor must be explicitly supplied or derived by a named
construction.
-/
structure DiscreteRicciTensor
    (V : Type) where
  ric : V → V → ℝ
  symmetric : Prop
  definitionLabel : String

/-- Ricci-flow analogue: an evolution equation, not yet an existence theorem. -/
structure DiscreteRicciFlow
    (V : Type) where
  Time : Type
  metric : Time → V → V → ℝ
  dMetric_dt : Time → V → V → ℝ
  Ric : Time → DiscreteRicciTensor V
  flow_eq :
    ∀ t x y, dMetric_dt t x y = -2 * (Ric t).ric x y
  modelLabel : String

def carrierBitToBit
    (b : Carrier.Bit) : Bit :=
  if b = (0 : Carrier.Bit) then (0 : Bit) else (1 : Bit)

@[simp]
theorem carrierBitToBit_zero :
    carrierBitToBit (0 : Carrier.Bit) = 0 := by
  simp [carrierBitToBit]

@[simp]
theorem carrierBitToBit_one :
    carrierBitToBit (1 : Carrier.Bit) = 1 := by
  simp [carrierBitToBit]

/-- Row-major flattening of a `BinaryMatrix` into the bit-word carrier. -/
def binaryMatrixToBitWord
    (M : Carrier.BinaryMatrix) : BitWord where
  len := M.m * M.n
  bit k :=
    if hn : M.n = 0 then
      have hlt : k.val < 0 := by
        simpa [hn] using k.isLt
      False.elim ((Nat.not_lt_zero k.val) hlt)
    else
      let row : Fin M.m :=
        ⟨k.val / M.n,
          by
            have hcomm : k.val < M.n * M.m := by
              exact Nat.lt_of_lt_of_le k.isLt (le_of_eq (Nat.mul_comm M.m M.n))
            exact Nat.div_lt_of_lt_mul hcomm⟩
      let col : Fin M.n :=
        ⟨k.val % M.n, Nat.mod_lt k.val (Nat.pos_of_ne_zero hn)⟩
      carrierBitToBit (M.get row col)

@[simp]
theorem binaryMatrixToBitWord_len
    (M : Carrier.BinaryMatrix) :
    (binaryMatrixToBitWord M).len = M.m * M.n :=
  rfl

/--
Flatten a `BinaryMatrix` and pass it through the zero-extension quotient layer.
-/
def binaryMatrixToPadded
    (M : Carrier.BinaryMatrix) : PaddedBitState :=
  (binaryMatrixToBitWord M).toPadded

end

end DiscreteGeometry
end Rebuild
end Folder
```
