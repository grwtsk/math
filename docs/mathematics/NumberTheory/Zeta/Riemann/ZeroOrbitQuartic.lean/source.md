# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ZeroOrbitQuartic

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4427b08cdf7ebf62ce5e43032c038145ff34c23` · SHA-256 `500cf845ceeddd78c93bae3996156b1a149dca64e7b8c06facfa12da823114cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors, GRL-RH-1 / 0.4.0.
Formalization assistance: OpenAI Codex. Mathlib retains upstream authorship/license. -/
import GRWTSK.Algebra.Polynomial.ConjugateQuartic
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry

/-!
# Coordinates of the four zeta-zero symmetries

The orbit is a list of occurrences, not an assertion about analytic multiplicity.
The quartic below is not asserted to divide zeta or its completion.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann

open Complex GRWTSK.RiemannHypothesis GRWTSK.Polynomial.ConjugateQuartic

/-- Rotate the coordinate centered at the critical line. -/
noncomputable def zeroCoordinate (s : ℂ) : ℂ := -(s - 1 / 2) * I

/-- Exact root-list identification, valid also when symmetry points coincide. -/
theorem roots_eq_zero_coordinates (s : ℂ) :
    roots (s.re - 1 / 2) s.im =
      [zeroCoordinate (criticalReflection s), zeroCoordinate s,
       zeroCoordinate (zeroReflect s), zeroCoordinate (zeroConjugate s)] := by
  have h₁ : (s.im : ℂ) + I * ((s.re - 1 / 2 : ℝ) : ℂ) =
      zeroCoordinate (criticalReflection s) := by
    apply Complex.ext <;>
      simp [zeroCoordinate, criticalReflection, Complex.mul_re, Complex.mul_im]
    ring
  have h₂ : (s.im : ℂ) - I * ((s.re - 1 / 2 : ℝ) : ℂ) = zeroCoordinate s := by
    apply Complex.ext <;>
      simp [zeroCoordinate, Complex.mul_re, Complex.mul_im]
  have h₃ : -(s.im : ℂ) + I * ((s.re - 1 / 2 : ℝ) : ℂ) = zeroCoordinate (zeroReflect s) := by
    apply Complex.ext <;>
      simp [zeroCoordinate, zeroReflect, Complex.mul_re, Complex.mul_im]
    ring
  have h₄ : -(s.im : ℂ) - I * ((s.re - 1 / 2 : ℝ) : ℂ) = zeroCoordinate (zeroConjugate s) := by
    apply Complex.ext <;>
      simp [zeroCoordinate, zeroConjugate, Complex.mul_re, Complex.mul_im]
  exact congrArg₂ List.cons h₁ (congrArg₂ List.cons h₂
    (congrArg₂ List.cons h₃ (congrArg₂ List.cons h₄ rfl)))

/-- Every formal quartic root is the coordinate of an actual target zero.
This transports zero locations only, without any multiplicity or extraction claim. -/
theorem root_has_nontrivial_zero {s : ℂ} (hs : NontrivialZetaZero s)
    {r : ℂ} (hr : r ∈ roots (s.re - 1 / 2) s.im) :
    ∃ z : ℂ, NontrivialZetaZero z ∧ zeroCoordinate z = r := by
  rw [roots_eq_zero_coordinates] at hr
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hr
  rcases hr with rfl | rfl | rfl | rfl
  · exact ⟨criticalReflection s, hs.critical_reflection, rfl⟩
  · exact ⟨s, hs, rfl⟩
  · exact ⟨zeroReflect s, hs.reflect, rfl⟩
  · exact ⟨zeroConjugate s, hs.conjugate, rfl⟩

end GRWTSK.NumberTheory.Zeta.Riemann
```
