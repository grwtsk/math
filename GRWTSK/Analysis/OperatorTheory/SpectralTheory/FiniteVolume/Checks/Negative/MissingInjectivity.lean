import GRWTSK.Analysis.OperatorTheory.SpectralTheory.GapTransport
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.GapTransport

-- A zero-energy coding cannot supply the injectivity premise needed by transport.
example : Function.Injective (fun _ : Bool => (0 : ℝ)) := by
  intro a b _h
  exact rfl
