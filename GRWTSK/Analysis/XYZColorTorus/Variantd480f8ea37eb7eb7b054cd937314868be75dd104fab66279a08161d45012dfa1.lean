module

public import Surface.Core.XYZ
public import Presentation.XYZElliptic
public import Presentation.XYZHeckeController
public import Presentation.XYZDomModel
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic

/-!
# Presentation-only flat color torus

This module is a one-way adapter from the canonical, revisioned fixed-point
XYZ transport to an explicit real torus presentation.  It does not define an
admission format, a second color register, or a browser correctness theorem.

The source payload is retained verbatim.  Its exact rational chromaticities
provide the canonical real angle lifts

`u = 2 * pi * xChromaticity` and `v = 2 * pi * yChromaticity`.

The standard embedded torus is a separate postcomposition.  In particular,
no identification with the Riemann sphere, elliptic uniformization, classical
Hecke action, torsion statement, or GRH statement is made here.
-/

public section

namespace Presentation.XYZColorTorus

noncomputable section

open Surface.Core.XYZ
open Surface.Refactor
open Presentation.XYZElliptic
open Presentation.XYZHeckeController
open Presentation.XYZDomModel

@[expose] def flatColorTorusMapIdV1 : String :=
  "surface.xyz.flat-color-torus.v1"

/-! ## Explicit standard embedding -/

/-- Presentation radii carrying the nondegeneracy assumptions required by the
instrument.  They are not part of the XYZ wire format. -/
@[surface_novel]
structure FlatColorTorusRadii where
  majorRadius : ℝ
  minorRadius : ℝ
  minorRadius_pos : 0 < minorRadius
  minorRadius_lt_majorRadius : minorRadius < majorRadius

/-- The ordinary product-coordinate model used for an embedded point. -/
abbrev FlatColorTorusPosition := ℝ × ℝ × ℝ

/-- Standard real torus embedding at angle coordinates `u` and `v`.

The positive ordered radii are supplied through `FlatColorTorusRadii`.  This
definition is an explicit presentation postcomposition, not an elliptic-curve
uniformization theorem. -/
@[expose]
def flatColorTorusEmbedding
    (radii : FlatColorTorusRadii) (u v : ℝ) :
    FlatColorTorusPosition :=
  ((radii.majorRadius + radii.minorRadius * Real.cos v) * Real.cos u,
    (radii.majorRadius + radii.minorRadius * Real.cos v) * Real.sin u,
    radii.minorRadius * Real.sin v)

@[surface_novel, surface_published]
theorem flatColorTorusEmbedding_continuous
    (radii : FlatColorTorusRadii) :
    Continuous
      (fun uv : ℝ × ℝ => flatColorTorusEmbedding radii uv.1 uv.2) := by
  unfold flatColorTorusEmbedding
  fun_prop

@[surface_novel, surface_published]
theorem flatColorTorusEmbedding_periodic_u
    (radii : FlatColorTorusRadii) (u v : ℝ) :
    flatColorTorusEmbedding radii (u + 2 * Real.pi) v =
      flatColorTorusEmbedding radii u v := by
  simp [flatColorTorusEmbedding, Real.cos_add_two_pi,
    Real.sin_add_two_pi]

@[surface_novel, surface_published]
theorem flatColorTorusEmbedding_periodic_v
    (radii : FlatColorTorusRadii) (u v : ℝ) :
    flatColorTorusEmbedding radii u (v + 2 * Real.pi) =
      flatColorTorusEmbedding radii u v := by
  simp [flatColorTorusEmbedding, Real.cos_add_two_pi,
    Real.sin_add_two_pi]

/-! ## Canonical XYZ view -/

/-- A presentation view retains the one authoritative XYZ value and the
proof of its canonical normalization invariant.  Every other field of the
instrument is computed from these two pieces. -/
@[surface_novel]
structure ColorTorusView where
  xyz : RevisionedXYZ xyzFormatV1
  invariant : normalizedTristimulusInvariant xyzFormatV1 xyz.value

/-- Construct the downstream view without changing the payload or revision. -/
@[expose]
def colorTorusView
    (xyz : RevisionedXYZ xyzFormatV1)
    (invariant : normalizedTristimulusInvariant xyzFormatV1 xyz.value) :
    ColorTorusView :=
  ⟨xyz, invariant⟩

@[expose]
def ColorTorusView.normalizedPoint
    (view : ColorTorusView) : NormalizedXYZPoint :=
  ⟨view.xyz.value, view.invariant⟩

/-- Reuse the canonical quotient-torus adapter.  This is not a second torus
coordinate convention. -/
@[expose]
def ColorTorusView.flatCoordinates
    (view : ColorTorusView) : FlatColorTorus :=
  xyzToFlatColorTorus view.normalizedPoint

/-- Canonical real lift of the first quotient coordinate for rendering. -/
@[expose]
def ColorTorusView.u (view : ColorTorusView) : ℝ :=
  2 * Real.pi * (xChromaticity view.normalizedPoint : ℝ)

/-- Canonical real lift of the second quotient coordinate for rendering. -/
@[expose]
def ColorTorusView.v (view : ColorTorusView) : ℝ :=
  2 * Real.pi * (yChromaticity view.normalizedPoint : ℝ)

@[expose]
def ColorTorusView.mapId (_view : ColorTorusView) : String :=
  flatColorTorusMapIdV1

@[expose]
def ColorTorusView.authority (_view : ColorTorusView) : RefactorAuthority :=
  .presentationOnly

@[surface_novel, surface_published]
theorem colorTorusView_preserves_xyz_revision
    (xyz : RevisionedXYZ xyzFormatV1)
    (invariant : normalizedTristimulusInvariant xyzFormatV1 xyz.value) :
    (colorTorusView xyz invariant).xyz.revision = xyz.revision := by
  rfl

@[surface_novel, surface_published]
theorem colorTorusView_preserves_xyz_payload
    (xyz : RevisionedXYZ xyzFormatV1)
    (invariant : normalizedTristimulusInvariant xyzFormatV1 xyz.value) :
    (colorTorusView xyz invariant).xyz.value = xyz.value := by
  rfl

@[surface_novel, surface_published]
theorem colorTorusView_uses_xyzToFlatColorTorus
    (xyz : RevisionedXYZ xyzFormatV1)
    (invariant : normalizedTristimulusInvariant xyzFormatV1 xyz.value) :
    (colorTorusView xyz invariant).flatCoordinates =
      xyzToFlatColorTorus ⟨xyz.value, invariant⟩ := by
  rfl

@[surface_novel, surface_published]
theorem colorTorusView_angles
    (view : ColorTorusView) :
    view.u = 2 * Real.pi * (xChromaticity view.normalizedPoint : ℝ) ∧
      view.v = 2 * Real.pi * (yChromaticity view.normalizedPoint : ℝ) := by
  exact ⟨rfl, rfl⟩

/-! ## Exact presentation frame model -/

/-- Exact real model of the data later decoded into a document-local numeric
render frame.  This is not a model of `SharedArrayBuffer`, JavaScript's memory
model, WebGL, or cross-document synchronization. -/
@[surface_novel]
structure ColorTorusRenderFrame where
  sourceRevision : Revision
  sourceValue : FixedXYZ xyzFormatV1
  u : ℝ
  v : ℝ
  position : FlatColorTorusPosition

@[expose]
def colorTorusRenderFrame
    (radii : FlatColorTorusRadii)
    (view : ColorTorusView) : ColorTorusRenderFrame where
  sourceRevision := view.xyz.revision
  sourceValue := view.xyz.value
  u := view.u
  v := view.v
  position := flatColorTorusEmbedding radii view.u view.v

@[expose]
def ColorTorusRenderFrame.authority
    (_frame : ColorTorusRenderFrame) : RefactorAuthority :=
  .presentationOnly

@[surface_novel, surface_published]
theorem colorTorusRenderFrame_preserves_xyz_revision
    (radii : FlatColorTorusRadii) (view : ColorTorusView) :
    (colorTorusRenderFrame radii view).sourceRevision =
      view.xyz.revision := by
  rfl

@[surface_novel, surface_published]
theorem colorTorusRenderFrame_preserves_xyz_payload
    (radii : FlatColorTorusRadii) (view : ColorTorusView) :
    (colorTorusRenderFrame radii view).sourceValue = view.xyz.value := by
  rfl

@[surface_novel, surface_published]
theorem colorTorusRenderFrame_is_presentation_only
    (radii : FlatColorTorusRadii) (view : ColorTorusView) :
    (colorTorusRenderFrame radii view).authority = .presentationOnly := by
  rfl

/-! ## Verification and authority firewalls -/

/-- The existing race-aware DOM model is the admitted presentation model.
A rejected verifier result cannot change any of it. -/
@[surface_novel, surface_published]
theorem colorTorusRejectedProposal_preserves_admitted_view
    {Host EdgeId : Type*}
    [Fintype Host] [DecidableEq Host]
    [Fintype EdgeId] [DecidableEq EdgeId]
    (model : DomModel) (reason : ProposalRejection) :
    handleVerificationResult
        (Host := Host) (EdgeId := EdgeId) model (.rejected reason) =
      model := by
  exact rejectedProposal_leavesDomModelUnchanged model reason

@[surface_novel, surface_published]
theorem colorTorusView_has_no_torsion_authority
    (view : ColorTorusView) :
    ¬ ProvesArithmeticTorsion
      (xyzToEllipticPresentationV1 view.xyz.value) := by
  exact colorEllipticPresentation_has_no_torsion_authority _

@[surface_novel, surface_published]
theorem colorTorusView_has_no_classical_hecke_authority
    (_view : ColorTorusView) (schedule : HeckeScheduleTransformV1) :
    ¬ ProvesClassicalHeckeAction schedule := by
  exact heckeSchedule_has_no_classical_hecke_authority schedule

@[surface_novel, surface_published]
theorem colorTorusView_has_no_grh_authority
    (_view : ColorTorusView) :
    ¬ ProvesForbiddenAnalyticAuthority .dirichletGRH := by
  simp [ProvesForbiddenAnalyticAuthority]

@[surface_novel, surface_published]
theorem colorTorusPresentation_has_no_analytic_authority :
    ¬ FiniteXYZTransportHasAnalyticAuthority :=
  finiteXYZTransport_has_no_analytic_authority

end

end Presentation.XYZColorTorus
