/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenGramForm
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenGramFormControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

theorem exact_full_form_is_augmented_energy
    {X : ℕ} (hX : 0 < X) :
    fullFiniteGreenSourceQuadratic X = augmentedEnergy X :=
  fullFiniteGreenSourceQuadratic_eq_augmentedEnergy hX

theorem full_source_dimension_grows_with_window
    (X : ℕ) :
    fullFiniteGreenSourceCoordinateCount X = X + 3 :=
  fullFiniteGreenSourceCoordinateCount_eq X

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenGramFormControls
