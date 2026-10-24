# Complete source: GRWTSK.NumberTheory.Moebius.SignedAbelDepthDispersion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ba568f05f1f72b6e8900bf57103fe9100555926` · SHA-256 `a817b91d0a60c130ddc8dca31a96da8b39cee21ac131efe598b9e8898faf5094`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #476. Direct stacked parent: draft PR #475 at
`ccc10c51d39bc153f8d177eba661d95afe8abddb`.
-/
import GRWTSK.NumberTheory.Moebius.DyadicSignedAbelDepthPacket

/-!
# Source-faithful dispersion interface for signed Abel depth slices

This module introduces one exact finite bilinear/dispersion interface whose
target is the signed depth slice from the parent module.  It does not assert a
large-sieve, dispersion, Fourier, Chowla, Elliott, or Sarnak estimate.

Every analytic model must reconstruct the exact signed slice first.  Only then
may an estimate of its structured packet plus residual be used to discharge
the signed depth-packet supplier.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Finite source-faithful bilinear model for every signed depth slice.

The model chooses a finite index set and two real coefficient families at each
dyadic scale and prefix depth, plus a residual term.  The proof field requires
their signed bilinear sum plus residual to equal the *actual* signed depth
slice.  No positivity, orthogonality, or norm estimate is built into this data.
-/
structure SignedAbelDepthBilinearModel where
  support : ℕ → ℕ → Finset ℕ
  alpha : ℕ → ℕ → ℕ → ℝ
  beta : ℕ → ℕ → ℕ → ℝ
  residual : ℕ → ℕ → ℝ
  slice_identity :
    ∀ j t : ℕ,
      weightedMertensDyadicSignedAbelDepthSlice j t =
        (∑ u ∈ support j t, alpha j t u * beta j t u) +
          residual j t

/-- Structured signed bilinear contribution at one depth. -/
def SignedAbelDepthBilinearModel.structuredSlice
    (d : SignedAbelDepthBilinearModel) (j t : ℕ) : ℝ :=
  ∑ u ∈ d.support j t, d.alpha j t u * d.beta j t u

/-- Complete structured packet obtained by summing the exact modeled depth
slices over the inherited dyadic depth range. -/
def SignedAbelDepthBilinearModel.structuredPacket
    (d : SignedAbelDepthBilinearModel) (j : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (2 ^ (j + 1)), d.structuredSlice j t

/-- Complete residual packet over the same inherited dyadic depth range. -/
def SignedAbelDepthBilinearModel.residualPacket
    (d : SignedAbelDepthBilinearModel) (j : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (2 ^ (j + 1)), d.residual j t

/-- Exact slice reconstruction using the model's source-identity field. -/
theorem SignedAbelDepthBilinearModel.depthSlice_eq_structured_add_residual
    (d : SignedAbelDepthBilinearModel) (j t : ℕ) :
    weightedMertensDyadicSignedAbelDepthSlice j t =
      d.structuredSlice j t + d.residual j t := by
  simpa [SignedAbelDepthBilinearModel.structuredSlice] using
    d.slice_identity j t

/-- Exact packet reconstruction.  Finite summation preserves the signed
identity; no absolute value or square is introduced. -/
theorem SignedAbelDepthBilinearModel.depthPacket_eq_structured_add_residual
    (d : SignedAbelDepthBilinearModel) (j : ℕ) :
    weightedMertensDyadicSignedAbelDepthPacket j =
      d.structuredPacket j + d.residualPacket j := by
  unfold weightedMertensDyadicSignedAbelDepthPacket
    SignedAbelDepthBilinearModel.structuredPacket
    SignedAbelDepthBilinearModel.residualPacket
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro t _ht
  exact d.depthSlice_eq_structured_add_residual j t

/-- Source-facing all-scale estimate attached to one exact bilinear model.

The estimate remains signed.  A future proof may bound the structured and
residual pieces separately, but this proposition itself only requires their
sum to satisfy the inherited subpolynomial budget.
-/
def SubpolynomialSignedAbelDepthBilinearEstimate
    (d : SignedAbelDepthBilinearModel) : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      d.structuredPacket j + d.residualPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Any proved estimate for a source-faithful bilinear model supplies the exact
signed depth-packet criterion. -/
theorem subpolynomialDyadicSignedAbelDepthPacket_of_bilinearEstimate
    (d : SignedAbelDepthBilinearModel)
    (hDisp : SubpolynomialSignedAbelDepthBilinearEstimate d) :
    SubpolynomialDyadicSignedAbelDepthPacket := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hDisp δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  rw [d.depthPacket_eq_structured_add_residual]
  exact hscale j

/-- Conditional RH endpoint through a source-faithful bilinear/dispersion
model and its still-open estimate. -/
theorem riemannHypothesis_of_signedAbelDepthBilinearEstimate
    (d : SignedAbelDepthBilinearModel)
    (hDisp : SubpolynomialSignedAbelDepthBilinearEstimate d) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicSignedAbelDepthPacket
    (subpolynomialDyadicSignedAbelDepthPacket_of_bilinearEstimate d hDisp)

/-- Stronger but sometimes useful split-budget interface.

This record requires independent signed upper bounds for the structured and
residual packets.  The conclusion pays both constants explicitly.  It is not
assumed to be necessary, and no inhabitant is constructed here.
-/
structure SignedAbelDepthSplitBudget
    (d : SignedAbelDepthBilinearModel) (δ : ℝ) where
  structuredConstant : ℝ
  residualConstant : ℝ
  structuredConstant_nonneg : 0 ≤ structuredConstant
  residualConstant_nonneg : 0 ≤ residualConstant
  structured_bound :
    ∀ j : ℕ,
      d.structuredPacket j ≤
        structuredConstant * (((2 ^ j : ℕ) : ℝ) ^ δ)
  residual_bound :
    ∀ j : ℕ,
      d.residualPacket j ≤
        residualConstant * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Independent structured/residual bounds combine with no hidden loss beyond
the explicit sum of constants. -/
theorem signedAbelDepthBilinearEstimate_of_splitBudget
    (d : SignedAbelDepthBilinearModel)
    (hBudget :
      ∀ δ : ℝ, 0 < δ → SignedAbelDepthSplitBudget d δ) :
    SubpolynomialSignedAbelDepthBilinearEstimate d := by
  intro δ hδ
  let b := hBudget δ hδ
  refine ⟨b.structuredConstant + b.residualConstant,
    add_nonneg b.structuredConstant_nonneg b.residualConstant_nonneg, ?_⟩
  intro j
  calc
    d.structuredPacket j + d.residualPacket j ≤
        b.structuredConstant * (((2 ^ j : ℕ) : ℝ) ^ δ) +
          b.residualConstant * (((2 ^ j : ℕ) : ℝ) ^ δ) :=
      add_le_add (b.structured_bound j) (b.residual_bound j)
    _ = (b.structuredConstant + b.residualConstant) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- Hostile typing boundary: an arbitrary positive norm or square estimate is
not a dispersion supplier unless an exact theorem reconstructs the signed
depth packet from it. -/
structure PositiveNormToSignedDepthAdapter (source : Prop) : Type where
  toBilinearModel : source → SignedAbelDepthBilinearModel
  toEstimate :
    ∀ hsource : source,
      SubpolynomialSignedAbelDepthBilinearEstimate
        (toBilinearModel hsource)

/-- Generic conditional endpoint for any future positive norm only after it
supplies a source-faithful model and estimate. -/
theorem riemannHypothesis_of_positiveNormAdapter
    {source : Prop}
    (bridge : PositiveNormToSignedDepthAdapter source)
    (hsource : source) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_signedAbelDepthBilinearEstimate
    (bridge.toBilinearModel hsource)
    (bridge.toEstimate hsource)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.SignedAbelDepthBilinearModel.depthPacket_eq_structured_add_residual
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicSignedAbelDepthPacket_of_bilinearEstimate
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.signedAbelDepthBilinearEstimate_of_splitBudget
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_positiveNormAdapter
```
