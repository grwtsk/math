/- Copyright (c) 2026 grwtsk contributors. MIT.

Exact zero-output cancellation for the existing source-labelled Fourier
Navier--Stokes convective and Leray triads.  A divergence-free first input
forces a zero scalar factor at output frequency zero, independently of the
chosen zero-mode Leray branch. This does NOT suppress nonzero low-output
high--high interactions or bound the full nonlinear PDE.

SOURCE_PROOF_CANDIDATE. Compilation/kernel/axiom audit: NOT_RUN.
-/
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.NavierStokesMomentGap

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesMomentGap

/-- Exact cancellation at a zero additive output, where the source
first input is divergence-free at its own frequency. -/
theorem navierStokesConvectiveTriad_zero_output
    (t : TriadSource FourierFrequency3) (a b : FourierVelocity3)
    (hleft : fourierDivergencePairing t.left a = 0)
    (hout : t.outputFrequency = 0) :
    navierStokesConvectiveTriad t a b = 0 := by
  have hfactor : fourierDivergencePairing t.right a = 0 := by
    rw [fourierDivergencePairing_output_transfer
      t.left t.right a hleft]
    rw [show t.left + t.right = 0 from hout]
    simp [fourierDivergencePairing]
  funext i
  simp [navierStokesConvectiveTriad, hfactor]

/-- The same cancellation survives the actual Leray projection.
The output-zero branch is preserved rather than overwritten. -/
theorem navierStokesLerayTriad_zero_output
    (t : TriadSource FourierFrequency3) (a b : FourierVelocity3)
    (hleft : fourierDivergencePairing t.left a = 0)
    (hout : t.outputFrequency = 0) :
    navierStokesLerayTriad t a b = 0 := by
  rw [navierStokesLerayTriad,
    navierStokesConvectiveTriad_zero_output t a b hleft hout]
  exact lerayProject_zero_fixed t.outputFrequency

/-- Every ordered pair at output zero cancels separately, even when
the input inventory is finite but otherwise unrestricted. Source labels and
multiplicities are kept; the cancellation does not need pairwise grouping. -/
theorem finiteNavierStokesLerayConvolutionAt_zero
    (S : Finset (TriadSource FourierFrequency3))
    (u : FourierFrequency3 → FourierVelocity3)
    (hu : IsFourierDivergenceFree u) :
    finiteNavierStokesLerayConvolutionAt S 0 u = 0 := by
  classical
  unfold finiteNavierStokesLerayConvolutionAt
    finiteNavierStokesLerayConvolution
  apply Finset.sum_eq_zero
  intro t ht
  have hout : t.outputFrequency = 0 :=
    (Finset.mem_filter.mp ht).2
  exact navierStokesLerayTriad_zero_output t (u t.left) (u t.right)
    (hu t.left) hout

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesMomentGap
