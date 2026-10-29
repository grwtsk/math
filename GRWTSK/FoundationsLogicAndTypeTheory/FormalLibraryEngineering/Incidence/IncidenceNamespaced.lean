-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IncidenceSignature.Variant5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IncidenceSignature.Variant5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea","mathematical_subject":"Foundations.Unclassified","original_sha256":"5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Incidence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Primitive

/-!
# Incidence channel

The relation and each possible law are separate objects.  In particular,
existence and uniqueness of a line through two points are not constructors of
the signature.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IncidenceSignature.Variant5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea

namespace Mathematics.Geometry

universe u v

/-- Bare point-line incidence data. -/
structure IncidenceSignature (Point : Type u) (Line : Type v) where
  liesOn : Point → Line → Prop

/-- Three points share at least one represented line. -/
def Collinear
    {Point : Type u} {Line : Type v}
    (incidence : IncidenceSignature Point Line)
    (first second third : Point) : Prop :=
  ∃ line,
    incidence.liesOn first line ∧
    incidence.liesOn second line ∧
    incidence.liesOn third line

/-- Existence half of the two-point incidence postulate. -/
def TwoPointLineExistence
    {Point : Type u} {Line : Type v}
    (incidence : IncidenceSignature Point Line) : Prop :=
  ∀ first second,
    first ≠ second →
      ∃ line,
        incidence.liesOn first line ∧
        incidence.liesOn second line

/-- Uniqueness half of the two-point incidence postulate. -/
def TwoPointLineUniqueness
    {Point : Type u} {Line : Type v}
    (incidence : IncidenceSignature Point Line) : Prop :=
  ∀ first second left right,
    first ≠ second →
    incidence.liesOn first left →
    incidence.liesOn second left →
    incidence.liesOn first right →
    incidence.liesOn second right →
      left = right

/-- A nondegeneracy assumption independent of line existence and uniqueness. -/
def ThreeNoncollinearPoints
    {Point : Type u} {Line : Type v}
    (incidence : IncidenceSignature Point Line) : Prop :=
  ∃ first second third,
    ¬ Collinear incidence first second third

end Mathematics.Geometry
