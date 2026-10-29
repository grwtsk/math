-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PeriodicOrbitCertificate.Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PeriodicOrbitCertificate.Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae","mathematical_subject":"Computation.DataStructures","original_sha256":"9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/Stability/PeriodicOrbit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Stability.Expansion

/-!
# Periodic-orbit and return-map evidence

`cycleMultiplier` is retained as an exact product for genuinely integral
derivative gains.  General and sub-unit multipliers are represented by
`scaledCycleMultiplier`; periodic-attraction obligations use that scaled form.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PeriodicOrbitCertificate.Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae

namespace Mathematics.Stability

def cycleMultiplier (derivativeGains : List Nat) : Nat :=
  derivativeGains.prod

@[simp] theorem cycleMultiplier_nil :
    cycleMultiplier [] = 1 :=
  rfl

@[simp] theorem cycleMultiplier_cons
    (gain : Nat)
    (rest : List Nat) :
    cycleMultiplier (gain :: rest) =
      gain * cycleMultiplier rest :=
  rfl

theorem cycle_multiplier_is_derivative_product
    (derivativeGains : List Nat) :
    cycleMultiplier derivativeGains =
      derivativeGains.prod :=
  rfl

theorem cycleMultiplier_append
    (left right : List Nat) :
    cycleMultiplier (left ++ right) =
      cycleMultiplier left * cycleMultiplier right := by
  simp [cycleMultiplier, List.prod_append]

def scaledCycleMultiplier :
    List ScaledGain → ScaledGain
  | [] => ScaledGain.one
  | gain :: rest =>
      gain.compose (scaledCycleMultiplier rest)

@[simp] theorem scaledCycleMultiplier_nil :
    scaledCycleMultiplier [] = ScaledGain.one :=
  rfl

@[simp] theorem scaledCycleMultiplier_cons
    (gain : ScaledGain)
    (rest : List ScaledGain) :
    scaledCycleMultiplier (gain :: rest) =
      gain.compose (scaledCycleMultiplier rest) :=
  rfl

theorem scaled_cycle_numerator_is_product
    (derivativeGains : List ScaledGain) :
    (scaledCycleMultiplier derivativeGains).numerator =
      (derivativeGains.map ScaledGain.numerator).prod := by
  induction derivativeGains with
  | nil => rfl
  | cons gain rest inductionHypothesis =>
      simp [scaledCycleMultiplier, inductionHypothesis]

theorem scaled_cycle_scale_is_product
    (derivativeGains : List ScaledGain) :
    (scaledCycleMultiplier derivativeGains).scale =
      (derivativeGains.map ScaledGain.scale).prod := by
  induction derivativeGains with
  | nil => rfl
  | cons gain rest inductionHypothesis =>
      simp [scaledCycleMultiplier, inductionHypothesis]

structure PeriodicOrbitCertificate
    {X : Type}
    (construction : ReflectiveMap X) where
  period : Nat
  positivePeriod : 0 < period
  phasePoint : X
  phaseMember : construction.domain.contains phasePoint
  returnEquation :
    iterate construction.apply period phasePoint = phasePoint
  derivativeGains : List ScaledGain
  gainCount : derivativeGains.length = period
  multiplier : ScaledGain := scaledCycleMultiplier derivativeGains
  multiplierExact :
      multiplier = scaledCycleMultiplier derivativeGains := by
    rfl

structure PeriodicAttractionObligation
    {X : Type}
    {construction : ReflectiveMap X}
    (orbit : PeriodicOrbitCertificate construction) where
  multiplierBelowOne :
    orbit.multiplier.numerator < orbit.multiplier.scale
  localAttractionStatement : Prop
  localAttractionStatus : ProofDisposition
  basinMembershipStatement : X → Prop
  basinStatus : ProofDisposition

end Mathematics.Stability
