import Mathlib.NumberTheory.LSeries.RiemannZeta

/-!
# Folder.RH.AnalyticBase

Radiation role: analytic-base
BinaryMatrix spine: This module fixes analytic function symbols used by the narrow RH cone.
Ontology: rh.analytic_base
Pivot role: spectral
Zero typology: zeta
Contract boundary: definitional-base
Composite stack role: rh
-/

namespace Folder
namespace RH

noncomputable section

/--
The completed Riemann zeta function from Mathlib.

Mathlib provides this as `completedRiemannZeta`; this project-level name fixes
the symbol used by the narrow RH cone without adding a user-supplied function
slot.
-/
noncomputable def CompletedZeta (s : ℂ) : ℂ :=
  completedRiemannZeta s

/--
Riemann's xi function with the normalization used by this project.
-/
noncomputable def Xi (s : ℂ) : ℂ :=
  (1 / 2 : ℂ) * s * (s - 1) * CompletedZeta s

/--
The spectral-parameter normalization used by the de Bruijn-Newman `H_0`
translation:

`z ↦ 1/2 + i z / 2`.
-/
noncomputable def H0SpectralParameter (z : ℂ) : ℂ :=
  (1 / 2 : ℂ) + Complex.I * z / 2

/--
The `H_0` function used by the de Bruijn-Newman translation layer.

This definition fixes the normalization. It does not prove that `H_0` real
zeros are equivalent to RH.
-/
noncomputable def H0 (z : ℂ) : ℂ :=
  (1 / 8 : ℂ) * Xi (H0SpectralParameter z)

theorem completed_zeta_eq_mathlib
    (s : ℂ) :
    CompletedZeta s = completedRiemannZeta s :=
  rfl

theorem xi_completed_zeta_relation
    (s : ℂ) :
    Xi s =
      (1 / 2 : ℂ) * s * (s - 1) * CompletedZeta s :=
  rfl

theorem h0_spectral_parameter_definition
    (z : ℂ) :
    H0SpectralParameter z =
      (1 / 2 : ℂ) + Complex.I * z / 2 :=
  rfl

theorem h0_definition
    (z : ℂ) :
    H0 z =
      (1 / 8 : ℂ) * Xi (H0SpectralParameter z) :=
  rfl

theorem h0_spectral_parameter_real_part_on_real_axis
    (x : ℝ) :
    (H0SpectralParameter (x : ℂ)).re = (1 / 2 : ℝ) := by
  simp [H0SpectralParameter]

end

end RH
end Folder
