# Complete source: GRWTSK.NumberTheory.Primes.QuadraticGaussianLine

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e65b8efef6f359537834a8c64bf116d8f7419a53` · SHA-256 `d656f2f207170af01f437aaff8b2d8ef1f4d83fd0e890f26611d353f965450f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.QuadraticPlusOneResidueCounting
import Mathlib.NumberTheory.Zsqrtd.GaussianInt
import Mathlib.Tactic

set_option autoImplicit false

/-!
# The thin Gaussian line `n + i`

The polynomial value `n^2 + 1` is represented as the exact Gaussian norm of
`n + i`.  Multiplication is expanded into its real and imaginary equations,
and the fixed imaginary coordinate is retained as the bilinear constraint
`ad + bc = 1`.

This is an arithmetic identity on a one-dimensional family inside the
Gaussian integers.  It does not permit promotion of a two-dimensional average
to the thin line without a separate theorem.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.QuadraticGaussianLine

open Zsqrtd

noncomputable section

/-- The fixed-imaginary-coordinate Gaussian integer `n + i`. -/
def quadraticGaussianLine (n : ℤ) : GaussianInt :=
  ⟨n, 1⟩

@[simp]
theorem quadraticGaussianLine_re (n : ℤ) :
    (quadraticGaussianLine n).re = n := rfl

@[simp]
theorem quadraticGaussianLine_im (n : ℤ) :
    (quadraticGaussianLine n).im = 1 := rfl

/-- The Gaussian norm on the thin line is exactly `n^2 + 1`. -/
theorem quadraticGaussianLine_norm
    (n : ℤ) :
    (quadraticGaussianLine n).norm = n ^ 2 + 1 := by
  simp [quadraticGaussianLine, Zsqrtd.norm]
  ring

/-- Natural-index form of the same norm identity. -/
theorem quadraticGaussianLine_norm_nat
    (n : ℕ) :
    (quadraticGaussianLine (n : ℤ)).norm =
      ((n ^ 2 + 1 : ℕ) : ℤ) := by
  rw [quadraticGaussianLine_norm]
  push_cast
  rfl

/-- Conjugation changes only the sign of the fixed imaginary coordinate. -/
theorem star_quadraticGaussianLine
    (n : ℤ) :
    star (quadraticGaussianLine n) =
      (⟨n, -1⟩ : GaussianInt) := by
  rfl

/-- The norm identity can be written as multiplication by the conjugate. -/
theorem quadraticGaussianLine_mul_star
    (n : ℤ) :
    quadraticGaussianLine n *
        star (quadraticGaussianLine n) =
      (⟨n ^ 2 + 1, 0⟩ : GaussianInt) := by
  ext <;> simp [quadraticGaussianLine]
  ring

/-- Real coordinate of a general Gaussian product. -/
theorem gaussian_product_re
    (a b c d : ℤ) :
    ((⟨a, b⟩ : GaussianInt) *
      (⟨c, d⟩ : GaussianInt)).re =
      a * c - b * d := by
  simp [Zsqrtd.re_mul]
  ring

/-- Imaginary coordinate of a general Gaussian product. -/
theorem gaussian_product_im
    (a b c d : ℤ) :
    ((⟨a, b⟩ : GaussianInt) *
      (⟨c, d⟩ : GaussianInt)).im =
      a * d + b * c := by
  simp [Zsqrtd.im_mul]

/-- Exact pair of bilinear equations forced by a factorization of `n+i`. -/
theorem gaussian_product_eq_quadraticLine_iff
    (a b c d n : ℤ) :
    (⟨a, b⟩ : GaussianInt) *
        (⟨c, d⟩ : GaussianInt) =
      quadraticGaussianLine n ↔
        a * c - b * d = n ∧
          a * d + b * c = 1 := by
  constructor
  · intro h
    constructor
    · have hre := congrArg Zsqrtd.re h
      simpa [gaussian_product_re,
        quadraticGaussianLine, sub_eq_add_neg] using hre
    · have him := congrArg Zsqrtd.im h
      simpa [gaussian_product_im,
        quadraticGaussianLine] using him
  · rintro ⟨hre, him⟩
    ext
    · simpa [gaussian_product_re,
        quadraticGaussianLine, sub_eq_add_neg] using hre
    · simpa [gaussian_product_im,
        quadraticGaussianLine] using him

/-- A factorization of the thin-line element retains the norm product
`n^2+1`. -/
theorem gaussian_factor_norm_product
    {x y : GaussianInt} {n : ℤ}
    (hxy : x * y = quadraticGaussianLine n) :
    x.norm * y.norm = n ^ 2 + 1 := by
  rw [← Zsqrtd.norm_mul, hxy,
    quadraticGaussianLine_norm]

/-- The thin family is exactly the Gaussian integers with imaginary
coordinate one. -/
theorem mem_quadraticGaussianLine_iff
    (z : GaussianInt) :
    (∃ n : ℤ, z = quadraticGaussianLine n) ↔
      z.im = 1 := by
  constructor
  · rintro ⟨n, rfl⟩
    rfl
  · intro hz
    refine ⟨z.re, ?_⟩
    ext
    · rfl
    · simpa [quadraticGaussianLine] using hz

/-- Multiplying one factor by a Gaussian unit and the other by its inverse
preserves the thin-line product, but not either factor separately. -/
theorem gaussian_unit_refactor
    (u : GaussianIntˣ) (x y : GaussianInt) :
    ((u : GaussianInt) * x) *
        ((↑(u⁻¹) : GaussianInt) * y) =
      x * y := by
  calc
    _ = ((u : GaussianInt) * (↑(u⁻¹) : GaussianInt)) * (x * y) :=
      mul_mul_mul_comm _ _ _ _
    _ = x * y := by simp

end
end GRWTSK.NumberTheory.Primes.QuadraticGaussianLine
```
