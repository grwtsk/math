-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.Refinement.Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.Refinement.Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Refinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.System

/-!
# Implementation refinement

This module separates an executable state representation from the semantic
system it implements.  A refinement carries a validity predicate, an
abstraction map, closure of valid states, and the transition/observation
commuting equations.  It deliberately does not require every implementation
state to be the encoding of a semantic state.

`RepresentationRefinement` adds a concrete representation map and only the
sound left-inverse law `abstract (represent x) = x`.  It does not claim that
arbitrary valid implementation states are canonical encodings.
-/


namespace GRWTSK.Geometry.AlgebraicGeometry.Refinement.Variant8dbbea1412246e2b1a9069504a5f0176814ff4ebb57d7cdd3cf063dfbd45c012

namespace DAF

universe uIS uXS uRS uOS uII uXI uRI uOI

/-- A valid implementation soundly simulates a declarative system. -/
structure Refinement
    (Spec : System.{uIS, uXS, uRS, uOS})
    (Impl : System.{uII, uXI, uRI, uOI}) where
  Valid : Impl.State → Prop
  abstract : Impl.State → Spec.State
  mapInput : Spec.Input → Impl.Input
  mapResolution : Spec.Resolution → Impl.Resolution
  mapObservation :
    (r : Spec.Resolution) →
      Impl.Observation (mapResolution r) → Spec.Observation r
  valid_step : ∀ i x,
    Valid x → Valid (Impl.step (mapInput i) x)
  step_sound : ∀ i x,
    Valid x →
      abstract (Impl.step (mapInput i) x) =
        Spec.step i (abstract x)
  observe_sound : ∀ r x,
    Valid x →
      mapObservation r (Impl.observe (mapResolution r) x) =
        Spec.observe r (abstract x)

namespace Refinement

variable {Spec : System.{uIS, uXS, uRS, uOS}}
variable {Impl : System.{uII, uXI, uRI, uOI}}

/-- Validity is preserved along every finite declarative input trace. -/
theorem valid_run
    (R : Refinement Spec Impl)
    (inputs : List Spec.Input)
    {x : Impl.State}
    (hx : R.Valid x) :
    R.Valid (Impl.run (inputs.map R.mapInput) x) := by
  induction inputs generalizing x with
  | nil => simpa using hx
  | cons input inputs ih =>
      simp only [List.map_cons, System.run_cons]
      exact ih (R.valid_step input x hx)

/-- Abstraction commutes with execution of every finite input trace. -/
theorem abstract_run
    (R : Refinement Spec Impl)
    (inputs : List Spec.Input)
    {x : Impl.State}
    (hx : R.Valid x) :
    R.abstract (Impl.run (inputs.map R.mapInput) x) =
      Spec.run inputs (R.abstract x) := by
  induction inputs generalizing x with
  | nil => rfl
  | cons input inputs ih =>
      simp only [List.map_cons, System.run_cons]
      rw [ih (R.valid_step input x hx), R.step_sound input x hx]

/-- Observations agree after every finite input trace from a valid state. -/
theorem observe_run_sound
    (R : Refinement Spec Impl)
    (inputs : List Spec.Input)
    (r : Spec.Resolution)
    {x : Impl.State}
    (hx : R.Valid x) :
    R.mapObservation r
        (Impl.observe (R.mapResolution r)
          (Impl.run (inputs.map R.mapInput) x)) =
      Spec.observe r (Spec.run inputs (R.abstract x)) := by
  rw [R.observe_sound r _ (R.valid_run inputs hx), R.abstract_run inputs hx]

end Refinement

/-- A refinement with a canonical representation of every specification state. -/
structure RepresentationRefinement
    (Spec : System.{uIS, uXS, uRS, uOS})
    (Impl : System.{uII, uXI, uRI, uOI})
    extends Refinement Spec Impl where
  represent : Spec.State → Impl.State
  represent_valid : ∀ x, Valid (represent x)
  abstract_represent : Function.LeftInverse abstract represent

namespace RepresentationRefinement

variable {Spec : System.{uIS, uXS, uRS, uOS}}
variable {Impl : System.{uII, uXI, uRI, uOI}}

/-- The represented implementation state denotes its source state. -/
@[simp]
theorem abstract_represent_apply
    (R : RepresentationRefinement Spec Impl)
    (x : Spec.State) :
    R.abstract (R.represent x) = x :=
  R.abstract_represent x

/-- A representation map is injective because abstraction is its left inverse. -/
theorem represent_injective
    (R : RepresentationRefinement Spec Impl) :
    Function.Injective R.represent :=
  R.abstract_represent.injective

end RepresentationRefinement

end DAF
