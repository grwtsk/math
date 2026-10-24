-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.FiberGramField.Varianta7a565c0ea238f60103982c274234952662501806f1a67528f750002268d33a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7a565c0ea238f60103982c274234952662501806f1a67528f750002268d33a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.FiberGramField.Varianta7a565c0ea238f60103982c274234952662501806f1a67528f750002268d33a9","mathematical_subject":"Algebra.Groups","original_sha256":"a7a565c0ea238f60103982c274234952662501806f1a67528f750002268d33a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/FiberMetric.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.LocalSystem

/-!
# Monodromy-compatible fiber Gram fields

The base here is the lifted base on which the loop group acts.  Covariance is
stated directly as preservation of the bilinear form, avoiding coordinate
ambiguity in inverse-transpose formulas.
-/


namespace GRWTSK.Algebra.GroupTheory.FiberGramField.Varianta7a565c0ea238f60103982c274234952662501806f1a67528f750002268d33a9

namespace Mathematics.Homology

universe u

noncomputable section

/-- A positive fiber metric equivariant under integral monodromy. -/
structure FiberGramField
    (LiftedBase : Type u)
    (Loop : Type*) [Group Loop] [MulAction Loop LiftedBase]
    (rank : Nat)
    (localSystem : IntegralLocalSystem Loop rank) where
  gram : GramField LiftedBase (RealFiber rank)
  monodromyIsometric :
    ∀ loop base left right,
      (gram (loop • base)).form
          (localSystem.realMonodromy loop left)
          (localSystem.realMonodromy loop right) =
        (gram base).form left right
  metricDigest : Digest
  metricCertificate : ObjectAddress

/--
The exceptional parallel case: one constant Gram form is preserved by every
monodromy operator.
-/
structure ParallelFiberGram
    (Loop : Type*) [Group Loop]
    (rank : Nat)
    (localSystem : IntegralLocalSystem Loop rank) where
  gram : PositiveGram (RealFiber rank)
  monodromyIsometric :
    ∀ loop left right,
      gram.form
          (localSystem.realMonodromy loop left)
          (localSystem.realMonodromy loop right) =
        gram.form left right
  certificate : ObjectAddress

end

end Mathematics.Homology
