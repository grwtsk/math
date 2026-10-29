-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.ErrorFactor.Variant9e85c27f7831484b2d87caabe15674790a3bd2bb79f2daa8510702b9b392af6f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e85c27f7831484b2d87caabe15674790a3bd2bb79f2daa8510702b9b392af6f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.ErrorFactor.Variant9e85c27f7831484b2d87caabe15674790a3bd2bb79f2daa8510702b9b392af6f","mathematical_subject":"Topology.MetricSpaces","original_sha256":"9e85c27f7831484b2d87caabe15674790a3bd2bb79f2daa8510702b9b392af6f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/ErrorTransform.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.MobiusOntology.ControlledMap

/-!
# Affine error monoid

The carrier-forgetting projection retains exactly the affine recurrence
`e ↦ L e + ε` and preserves typed composition.
-/


namespace GRWTSK.Topology.MetricTopology.ErrorFactor.Variant9e85c27f7831484b2d87caabe15674790a3bd2bb79f2daa8510702b9b392af6f

namespace Mathematics.MobiusOntology

open scoped NNReal

abbrev ErrorFactor := Mathematics.Attention.ErrorFactor
abbrev ErrorTransform := Mathematics.Attention.ErrorTransform

namespace ErrorTransform

def identity : ErrorTransform :=
  Mathematics.Attention.ErrorTransform.id

def comp (later earlier : ErrorTransform) : ErrorTransform :=
  Mathematics.Attention.ErrorTransform.comp later earlier

theorem comp_assoc (third second first : ErrorTransform) :
    comp (comp third second) first =
      comp third (comp second first) :=
  Mathematics.Attention.ErrorTransform.comp_assoc third second first

end ErrorTransform

namespace ControlledMap

def toErrorTransform
    {X Y : Type*}
    [PseudoMetricSpace X] [PseudoMetricSpace Y]
    (controlled : ControlledMap X Y) :
    ErrorTransform :=
  Mathematics.Attention.ControlledApproximation.toErrorTransform controlled

theorem toErrorTransform_comp
    {X Y Z : Type*}
    [PseudoMetricSpace X] [PseudoMetricSpace Y] [PseudoMetricSpace Z]
    (later : ControlledMap Y Z)
    (earlier : ControlledMap X Y) :
    (comp later earlier).toErrorTransform =
      ErrorTransform.comp
        later.toErrorTransform earlier.toErrorTransform :=
  Mathematics.Attention.ControlledApproximation.toErrorTransform_comp
    later earlier

end ControlledMap

end Mathematics.MobiusOntology
