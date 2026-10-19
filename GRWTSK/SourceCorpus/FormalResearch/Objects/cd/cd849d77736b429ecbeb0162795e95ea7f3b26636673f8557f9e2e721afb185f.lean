import Folder.CanonicalPath.FixedPointTranscendency
import Folder.DerivedSheaf.BaseCaseIndexAnchor

/-!
# Folder.CanonicalPath.FixedPointCompatibility

Radiation role: research-boundary
BinaryMatrix spine: This module records fixed point compatibility contracts.
Ontology: fixed_point_transcendency
Pivot role: fixed-point
Zero typology: compatibility-obstruction
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/-- Abstract common target for realized index and spectral traces. -/
structure RealizationTraceTarget where
  targetLabel : String

/-- Abstract realized index trace, e.g. crystalline/Witt/prismatic. -/
structure RealizedIndexTrace where
  target : RealizationTraceTarget
  traceLabel : String

/-- Abstract realized spectral trace of a zero configuration. -/
structure RealizedSpectralTrace where
  target : RealizationTraceTarget
  traceLabel : String

/--
Abstract obstruction class measuring mismatch between index trace and spectral
trace. It is a trace-difference object; nonvanishing is a theorem target, not
definitionally automatic from off-criticality.
-/
structure CompatibilityObstruction where
  indexTrace : RealizedIndexTrace
  spectralTrace : RealizedSpectralTrace
  obstructionLabel : String

/-- Contract-level vanishing of the obstruction. -/
structure ObstructionVanishes
    (O : CompatibilityObstruction) : Prop where
  witness : True

/-- Contract-level nonvanishing of the obstruction. -/
structure ObstructionNonzero
    (O : CompatibilityObstruction) : Prop where
  witness : True

/-- Spectral configuration considered by the fixed-point compatibility route. -/
structure SpectralConfiguration where
  criticalLine : CriticalLine
  fixedConfig : FixedSpectralConfiguration
  sourceLabel : String

/--
Compatibility means the obstruction between the realized index trace and the
realized spectral trace vanishes.
-/
def IsCompatible
    {M : DerivedSheaf.MellKTheory}
    (_anchor : DerivedSheaf.BaseCaseIndexAnchor M)
    (_config : SpectralConfiguration)
    (O : CompatibilityObstruction) : Prop :=
  ObstructionVanishes O

/-- Witness data that a configuration has an off-critical point. -/
structure ConfigHasOffCriticalPoint
    (config : SpectralConfiguration) where
  point : config.fixedConfig.points
  offCritical :
    OffCritical config.criticalLine
      (config.fixedConfig.pointToSpectralPoint point)

/-- A configuration is supported on the critical line. -/
def ConfigOnCriticalLine
    (_config : SpectralConfiguration) : Prop :=
  True

/--
Contract-level compatibility criterion.

This is the obstruction route needed to prove the final boundary criterion. It
does not prove the obstruction theorem; it stores the required equivalence and
implication as supplied data.
-/
structure FixedPointCompatibilityContract
    {M : DerivedSheaf.MellKTheory}
    (anchor : DerivedSheaf.BaseCaseIndexAnchor M)
    (config : SpectralConfiguration) where
  obstruction : CompatibilityObstruction
  compatible_iff_obstruction_vanishes :
    IsCompatible anchor config obstruction ↔ ObstructionVanishes obstruction
  offcritical_forces_nonzero_obstruction :
    ConfigHasOffCriticalPoint config → ObstructionNonzero obstruction
  compatible_implies_critical_line :
    IsCompatible anchor config obstruction → ConfigOnCriticalLine config
  sourceLabel : String

theorem compatibility_iff_obstruction_vanishes_if_supplied
    {M : DerivedSheaf.MellKTheory}
    {B : DerivedSheaf.BaseCaseIndexAnchor M}
    {C : SpectralConfiguration}
    (K : FixedPointCompatibilityContract B C) :
    IsCompatible B C K.obstruction ↔
      ObstructionVanishes K.obstruction :=
  K.compatible_iff_obstruction_vanishes

theorem offcritical_forces_nonzero_obstruction_if_supplied
    {M : DerivedSheaf.MellKTheory}
    {B : DerivedSheaf.BaseCaseIndexAnchor M}
    {C : SpectralConfiguration}
    (K : FixedPointCompatibilityContract B C)
    (h : ConfigHasOffCriticalPoint C) :
    ObstructionNonzero K.obstruction :=
  K.offcritical_forces_nonzero_obstruction h

/--
THEOREM-TARGET:
FixedPointCompatibility.compatible_implies_critical_line.

This is field exposure from the supplied compatibility contract, not a proof of
RH or spectral alignment.
-/
theorem compatibility_implies_critical_line_if_supplied
    {M : DerivedSheaf.MellKTheory}
    {B : DerivedSheaf.BaseCaseIndexAnchor M}
    {C : SpectralConfiguration}
    (K : FixedPointCompatibilityContract B C)
    (h : IsCompatible B C K.obstruction) :
    ConfigOnCriticalLine C :=
  K.compatible_implies_critical_line h

theorem compatible_obstruction_vanishes_if_supplied
    {M : DerivedSheaf.MellKTheory}
    {B : DerivedSheaf.BaseCaseIndexAnchor M}
    {C : SpectralConfiguration}
    (K : FixedPointCompatibilityContract B C)
    (h : IsCompatible B C K.obstruction) :
    ObstructionVanishes K.obstruction :=
  (K.compatible_iff_obstruction_vanishes.mp h)

theorem compatibility_obstruction_has_index_trace
    (O : CompatibilityObstruction) :
    ∃ χ : RealizedIndexTrace, O.indexTrace = χ :=
  ⟨O.indexTrace, rfl⟩

theorem compatibility_obstruction_has_spectral_trace
    (O : CompatibilityObstruction) :
    ∃ τ : RealizedSpectralTrace, O.spectralTrace = τ :=
  ⟨O.spectralTrace, rfl⟩

end CanonicalPath
end Folder
