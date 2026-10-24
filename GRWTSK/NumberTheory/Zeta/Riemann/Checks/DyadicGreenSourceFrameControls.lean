/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenSourceFrame
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenSourceFrameControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

theorem frame_norm_is_actual_augmented_energy (X : ℕ) :
    greenSourceFrameNormSq X = augmentedEnergy X :=
  greenSourceFrameNormSq_eq_augmentedEnergy X

theorem frame_atom_count_is_source_window_plus_background (X : ℕ) :
    greenSourceFrameAtomCount X = X + 1 :=
  greenSourceFrameAtomCount_eq X

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenSourceFrameControls
