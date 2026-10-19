module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVaughanTypeI
public import Surface.Core.ConductorThreePrimeMomentProgram
import Mathlib.Tactic

/-!
# Type I prefix adapter

This small module connects the elementary expanded Type I estimate to the
public prime-moment predicate.  Its only hypothesis is the exact finite
convolution-reindexing proposition.  In particular, no Type II, packet,
Wang--Zahl, or GRH premise occurs in the bridge.
-/

public section

namespace Surface.Core.ConductorThreeVaughanTypeIBridge

noncomputable section

open Surface.Core.ConductorThreePrimeMoment
open Surface.Core.ConductorThreeVaughanTypeI
open Surface.Core.ConductorThreeWangZahlTTStar

/-- The public convolution prefix is definitionally the same finite formula
as the one isolated by the elementary Type I module. -/
@[surface_adapter, surface_published]
theorem convolutionTypeIPrefix_eq_public (N x : ℕ) :
    conductorThreeConvolutionTypeIPrefix N x =
      conductorThreeVaughanTypeIPrefix N x := by
  rfl

/-- The exact finite expansion adapter is sufficient to inhabit the public
uniform Type I maximal predicate. -/
@[surface_novel, surface_published]
theorem exactTypeIPrefixExpansion_implies_uniformPublic
    (hExpansion : ExactConductorThreeTypeIPrefixExpansion) :
    UniformConductorThreeTypeIMaximal := by
  intro epsilon hepsilon
  obtain ⟨C, hC, hBound⟩ :=
    exactTypeIPrefixExpansion_implies_uniform hExpansion epsilon hepsilon
  refine ⟨C, hC, ?_⟩
  intro N hN x hx
  rw [← convolutionTypeIPrefix_eq_public]
  exact hBound N hN x hx

end

end Surface.Core.ConductorThreeVaughanTypeIBridge
