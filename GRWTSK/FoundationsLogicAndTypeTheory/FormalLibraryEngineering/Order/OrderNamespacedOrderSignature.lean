-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderSignature.Variant285d137d9ea66b865d9d6bf8753ce177619828a2cf4214cab03ee3b9ef9ac8d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"285d137d9ea66b865d9d6bf8753ce177619828a2cf4214cab03ee3b9ef9ac8d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OrderSignature.Variant285d137d9ea66b865d9d6bf8753ce177619828a2cf4214cab03ee3b9ef9ac8d3","mathematical_subject":"Foundations.Unclassified","original_sha256":"285d137d9ea66b865d9d6bf8753ce177619828a2cf4214cab03ee3b9ef9ac8d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Primitive

/-!
# Order channel

Betweenness is independent of incidence and congruence.  Its candidate laws
are named propositions rather than hidden fields.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderSignature.Variant285d137d9ea66b865d9d6bf8753ce177619828a2cf4214cab03ee3b9ef9ac8d3

namespace Mathematics.Geometry

universe u

/-- Bare strict-betweenness data. -/
structure OrderSignature (Point : Type u) where
  between : Point → Point → Point → Prop

/-- Reversing the endpoints preserves betweenness. -/
def BetweennessEndpointSymmetry
    {Point : Type u}
    (order : OrderSignature Point) : Prop :=
  ∀ first middle last,
    order.between first middle last →
      order.between last middle first

/-- A strict interior point differs from both endpoints. -/
def BetweennessStrict
    {Point : Type u}
    (order : OrderSignature Point) : Prop :=
  ∀ first middle last,
    order.between first middle last →
      middle ≠ first ∧ middle ≠ last

/-- Betweenness excludes the reverse ordering of the first two points. -/
def BetweennessAsymmetric
    {Point : Type u}
    (order : OrderSignature Point) : Prop :=
  ∀ first middle last,
    order.between first middle last →
      ¬ order.between middle first last

end Mathematics.Geometry
