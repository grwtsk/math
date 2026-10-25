# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Symmetry.Variantf3fb29a32970d58aeb64c5967a3347e2b9165a98950ecf8a44a4cd9f97170182

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b5a0ef817dfd54694ce2b9a53448a31b0d94ce3` · SHA-256 `f3fb29a32970d58aeb64c5967a3347e2b9165a98950ecf8a44a4cd9f97170182`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.Lineage
import Mathlib.Tactic.Linarith

/-!
# Critical involution and line localization

Symmetry fixes a unique zero only when the cell interior itself is invariant.
Multi-zero cells require a separate carrier certificate.
-/

namespace Mathematics.RHIsolation

open scoped ComplexConjugate

def criticalInvolution (z : ℂ) : ℂ :=
  1 - conj z

structure InvolutionInvariantCell
    (cell : AnalyticCell) where
  carrierInvariant :
    criticalInvolution '' cell.carrier =
      cell.carrier
  interiorInvariant :
    criticalInvolution '' cell.interior =
      cell.interior

structure XiCriticalSymmetry
    (xi : ℂ → ℂ) where
  symmetric :
    ∀ z,
      xi (criticalInvolution z) =
        conj (xi z)

theorem unique_zero_in_invariant_cell_fixed
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (cellSymmetry :
      InvolutionInvariantCell cell)
    (unique :
      UniqueZeroCertificate authority cell)
    (xiSymmetry : XiCriticalSymmetry xi) :
    criticalInvolution unique.zero =
      unique.zero := by
  apply unique.unique
  · rw [← cellSymmetry.interiorInvariant]
    exact ⟨unique.zero, unique.zero_mem, rfl⟩
  · rw [xiSymmetry.symmetric, unique.xi_zero]
    simp

theorem fixed_by_criticalInvolution_re_eq_half
    {z : ℂ}
    (fixed :
      criticalInvolution z = z) :
    z.re = (1 : ℝ) / 2 := by
  have realParts :=
    congrArg Complex.re fixed
  simp [criticalInvolution] at realParts
  linarith

theorem unique_zero_in_invariant_cell_on_line
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (cellSymmetry :
      InvolutionInvariantCell cell)
    (unique :
      UniqueZeroCertificate authority cell)
    (xiSymmetry : XiCriticalSymmetry xi) :
    unique.zero.re = (1 : ℝ) / 2 :=
  fixed_by_criticalInvolution_re_eq_half <|
    unique_zero_in_invariant_cell_fixed
      cellSymmetry unique xiSymmetry

structure CriticalLineCarrierCertificate
    (xi : ℂ → ℂ)
    (cell : AnalyticCell) where
  allZerosOnLine :
    ∀ z,
      z ∈ cell.interior →
      xi z = 0 →
      z.re = (1 : ℝ) / 2

theorem CriticalLineCarrierCertificate.ofUniqueInvariantCell
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (cellSymmetry :
      InvolutionInvariantCell cell)
    (unique :
      UniqueZeroCertificate authority cell)
    (xiSymmetry : XiCriticalSymmetry xi) :
    CriticalLineCarrierCertificate xi cell where
  allZerosOnLine := by
    intro z zMem zZero
    rw [unique.unique z zMem zZero]
    exact
      unique_zero_in_invariant_cell_on_line
        cellSymmetry unique xiSymmetry

end Mathematics.RHIsolation
```
