-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ProtectedFeatureProfile.Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ProtectedFeatureProfile.Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/ContextualEquivalence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Concept

/-!
# Exact and tolerable contextual equivalence
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ProtectedFeatureProfile.Variant1f30750d640917f632c773fe2fc742e72c8ba995825017ad3652067f7717a248

namespace Mathematics.SemanticTokenization

structure ProtectedFeatureProfile where
  fields : Finset ProfileField
  profileId : String
  snapshot : SnapshotId
deriving Repr

def ExactContextualEquivalent
    {cut : EvidenceCut}
    (protected : ProtectedFeatureProfile)
    (left right : ConceptProfile cut) : Prop :=
  left.context = right.context ∧
  ∀ field ∈ protected.fields,
    left.lookup field = right.lookup field

theorem exactEquivalent_refl
    {cut : EvidenceCut}
    {protected : ProtectedFeatureProfile}
    (profile : ConceptProfile cut) :
    ExactContextualEquivalent protected profile profile :=
  ⟨rfl, by intros; rfl⟩

theorem exactEquivalent_symm
    {cut : EvidenceCut}
    {protected : ProtectedFeatureProfile}
    {left right : ConceptProfile cut} :
    ExactContextualEquivalent protected left right →
    ExactContextualEquivalent protected right left := by
  rintro ⟨context, fields⟩
  exact ⟨context.symm, fun field member => (fields field member).symm⟩

theorem exactEquivalent_trans
    {cut : EvidenceCut}
    {protected : ProtectedFeatureProfile}
    {left middle right : ConceptProfile cut} :
    ExactContextualEquivalent protected left middle →
    ExactContextualEquivalent protected middle right →
    ExactContextualEquivalent protected left right := by
  rintro ⟨context₁, fields₁⟩ ⟨context₂, fields₂⟩
  exact
    ⟨context₁.trans context₂,
      fun field member =>
        (fields₁ field member).trans
          (fields₂ field member)⟩

theorem exact_contextual_equivalence_is_equivalence
    {cut : EvidenceCut}
    (protected : ProtectedFeatureProfile) :
    Equivalence
      (ExactContextualEquivalent
        (cut := cut) protected) :=
  ⟨exactEquivalent_refl,
    fun _ _ => exactEquivalent_symm,
    fun _ _ _ => exactEquivalent_trans⟩

def exactContextualSetoid
    (cut : EvidenceCut)
    (protected : ProtectedFeatureProfile)
    (context : ContextId) :
    Setoid {profile : ConceptProfile cut //
      profile.context = context} where
  r left right :=
    ExactContextualEquivalent protected left.1 right.1
  iseqv :=
    ⟨fun profile => exactEquivalent_refl profile.1,
      fun {_ _} relation => exactEquivalent_symm relation,
      fun {_ _ _} first second =>
        exactEquivalent_trans first second⟩

structure FieldTolerance where
  field : ProfileField
  accepts :
    ProfileValue field →
    ProfileValue field →
    Prop

def FieldTolerance.Accepts
    (tolerance : FieldTolerance)
    {field : ProfileField}
    (left right : ProfileValue field) : Prop :=
  ∃ equality : tolerance.field = field,
    tolerance.accepts
      (equality.symm ▸ left)
      (equality.symm ▸ right)

structure ToleranceSpecification where
  protected : Finset ProfileField
  tolerable : Array FieldTolerance
  task : TaskId
  snapshot : SnapshotId

def ProtectedFieldsEqual
    {cut : EvidenceCut}
    (spec : ToleranceSpecification)
    (left right : ConceptProfile cut) : Prop :=
  ∀ field ∈ spec.protected,
    left.lookup field = right.lookup field

def TolerableFieldsAccepted
    {cut : EvidenceCut}
    (spec : ToleranceSpecification)
    (left right : ConceptProfile cut) : Prop :=
  ∀ tolerance : Fin spec.tolerable.size,
    match
      left.lookup (spec.tolerable[tolerance]).field,
      right.lookup (spec.tolerable[tolerance]).field with
    | some leftValue, some rightValue =>
        (spec.tolerable[tolerance]).accepts
          leftValue rightValue
    | none, none => True
    | _, _ => False

def TolerablyEquivalent
    {cut : EvidenceCut}
    (spec : ToleranceSpecification)
    (left right : ConceptProfile cut) : Prop :=
  left.context = right.context ∧
  ProtectedFieldsEqual spec left right ∧
  TolerableFieldsAccepted spec left right

structure ToleranceSetoidCertificate
    (cut : EvidenceCut)
    (spec : ToleranceSpecification)
    (context : ContextId) where
  refl :
    Reflexive
      (fun left right :
        {profile : ConceptProfile cut //
          profile.context = context} =>
        TolerablyEquivalent spec left.1 right.1)
  symm :
    Symmetric
      (fun left right :
        {profile : ConceptProfile cut //
          profile.context = context} =>
        TolerablyEquivalent spec left.1 right.1)
  trans :
    Transitive
      (fun left right :
        {profile : ConceptProfile cut //
          profile.context = context} =>
        TolerablyEquivalent spec left.1 right.1)

def ToleranceSetoidCertificate.toSetoid
    {cut : EvidenceCut}
    {spec : ToleranceSpecification}
    {context : ContextId}
    (certificate :
      ToleranceSetoidCertificate cut spec context) :
    Setoid
      {profile : ConceptProfile cut //
        profile.context = context} where
  r left right :=
    TolerablyEquivalent spec left.1 right.1
  iseqv :=
    ⟨certificate.refl, certificate.symm, certificate.trans⟩

structure ToleranceQuotient
    (cut : EvidenceCut)
    (spec : ToleranceSpecification)
    (context : ContextId) where
  certificate :
    ToleranceSetoidCertificate cut spec context

def quotientByTolerance
    {cut : EvidenceCut}
    {spec : ToleranceSpecification}
    {context : ContextId}
    (certificate :
      ToleranceSetoidCertificate cut spec context) : Type :=
  Quotient certificate.toSetoid

theorem tolerance_quotient_requires_setoid
    {cut : EvidenceCut}
    {spec : ToleranceSpecification}
    {context : ContextId}
    (quotient : ToleranceQuotient cut spec context) :
    Nonempty
      (ToleranceSetoidCertificate cut spec context) :=
  ⟨quotient.certificate⟩

end Mathematics.SemanticTokenization
