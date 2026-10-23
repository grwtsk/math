/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPsiAbelReconstruction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicPsiAbelReconstructionControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem octave_psi_envelope_controls_cumulative
    {X : ℕ} (hX : 2 ≤ X)
    {A : ℝ} (hA : PsiOctaveEnvelope X A)
    {t : ℝ} (ht : t ∈ Set.Icc (0 : ℝ) 1) :
    |cumulative X t| ≤ (3 * A + 1) / (X : ℝ) :=
  cumulative_abs_le_of_psiEnvelope hX hA ht

end GRWTSK.RiemannHypothesis.Checks.DyadicPsiAbelReconstructionControls
