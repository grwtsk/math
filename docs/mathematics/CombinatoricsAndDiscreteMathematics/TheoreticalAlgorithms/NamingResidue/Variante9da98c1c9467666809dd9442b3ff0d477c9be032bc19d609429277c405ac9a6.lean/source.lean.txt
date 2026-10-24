-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PersistentNamingResidue.Variant363b902c3a961f262132f82550bdc5b266e8af42753ef74d56ea98a7c7af9511","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"363b902c3a961f262132f82550bdc5b266e8af42753ef74d56ea98a7c7af9511","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PersistentNamingResidue.Variant363b902c3a961f262132f82550bdc5b266e8af42753ef74d56ea98a7c7af9511","mathematical_subject":"Computation.DataStructures","original_sha256":"363b902c3a961f262132f82550bdc5b266e8af42753ef74d56ea98a7c7af9511","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/NeuralDiffusion/NamingResidue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.NeuralDiffusion.ExternalHeat

/-!
# Persistent naming residue

A kernel-certified route remains fixed even when a model repeatedly proposes
a different name.  Persistent disagreement opens a proposal-only naming
residue; it does not revoke identity, route, or source authority.

This is the second exact activator beside a non-singleton routing residue.
Finite retry counts are not used as thresholds: persistence is supplied as
mathematical evidence.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PersistentNamingResidue.Variant363b902c3a961f262132f82550bdc5b266e8af42753ef74d56ea98a7c7af9511

namespace Mathematics.NeuralDiffusion

open Mathematics.Projection

universe u

/--
One resolved incidence anchor together with an unbounded disagreement witness and a
durable proposal-plane address.
-/
structure PersistentNamingResidue
    (Element : Type u) [DecidableEq Element] where
  point : NamedIncidenceAnchor Element
  disagreement : PersistentDisagreement
  activationKey : ActivationKey
  persistedObject : ObjectAddress

namespace PersistentNamingResidue

variable {Element : Type u} [DecidableEq Element]

/-- Naming disagreement never changes the already certified route. -/
def fixedRoute
    (residue : PersistentNamingResidue Element) : RigidKey :=
  residue.point.routeKey

/-- Persistent naming disagreement is an exact activator request. -/
def activationRequired
    (_residue : PersistentNamingResidue Element) : Bool :=
  true

@[simp] theorem activates
    (residue : PersistentNamingResidue Element) :
    residue.activationRequired = true :=
  rfl

end PersistentNamingResidue

/--
External heat directed at a naming residue.  It proposes new denotation or
structure while preserving the incidence anchor and carrying no fact authority.
-/
structure NamingHeatInjectionRequest
    {Element : Type u} [DecidableEq Element]
    (residue : PersistentNamingResidue Element) where
  source : HeatSource
  target : HeatTarget
  proposedMathematics : List String
  evidenceObjects : List ObjectAddress
  authority : ProposalAuthority
  anchorRoutePreserved :
    residue.fixedRoute = residue.point.routeKey

end Mathematics.NeuralDiffusion
