# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.QuotientJet.Variantce902bfee13570ec725ee8701790e60ee9ee5ecb118d6094c1b684d0cc3b7a7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `104bb07f9572ac6c8e6af40504e7411f7408759d` · SHA-256 `ce902bfee13570ec725ee8701790e60ee9ee5ecb118d6094c1b684d0cc3b7a7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Calculus.Deriv.Add
import Mathlib.Analysis.Calculus.Deriv.Inv
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum

/-!
# Normalized removable quotient jets

Local derivative and multiplicity specialization with explicit differentiability
and nonzero hypotheses. Actual Xi factorization and source recognition remain
separate proof tasks. See the dated collaborative-research notes.
-/

namespace FormalResearch.RiemannHypothesis.QuotientJet

theorem derivative_of_normalized_removable_quotient
    {u v : ℂ → ℂ} {z₀ du dv k : ℂ}
    (hu : HasDerivAt u du z₀) (hv : HasDerivAt v dv z₀)
    (hu₀ : u z₀ ≠ 0) (hk : k ≠ 0)
    (hvalue : v z₀ = k * u z₀) :
    HasDerivAt (fun z : ℂ ↦ (z - z₀) * u z / v z) k⁻¹ z₀ := by
  have hv₀ : v z₀ ≠ 0 := by
    rw [hvalue]
    exact mul_ne_zero hk hu₀
  have h := (((hasDerivAt_id z₀).sub_const z₀).mul hu).div hv hv₀
  simp only [Pi.mul_apply, id_eq] at h
  apply h.congr_deriv
  simp only [sub_self, zero_mul, one_mul, add_zero, sub_zero]
  rw [hvalue]
  field_simp [hk, hu₀]

theorem quotient_jet_at_multiplicity
    {u v : ℂ → ℂ} {z₀ du dv : ℂ} {m : ℕ}
    (hu : HasDerivAt u du z₀) (hv : HasDerivAt v dv z₀)
    (hu₀ : u z₀ ≠ 0) (hm : 0 < m)
    (hvalue : v z₀ = (m : ℂ) * u z₀) :
    HasDerivAt (fun z : ℂ ↦ (z - z₀) * u z / v z) (m : ℂ)⁻¹ z₀ := by
  exact derivative_of_normalized_removable_quotient hu hv hu₀
    (by exact_mod_cast (Nat.ne_of_gt hm)) hvalue

end FormalResearch.RiemannHypothesis.QuotientJet
```
