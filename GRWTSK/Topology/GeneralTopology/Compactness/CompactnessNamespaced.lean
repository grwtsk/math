-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.RealIccIsCompact.Variant225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.RealIccIsCompact.Variant225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/Mathlib/Compactness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import AnalyticNumber.Mathlib.Certificate

/-!
# Mathlib-backed certificate: compactness and the extreme-value theorem

Mathlib-backed formal proofs:

* every real closed interval `Set.Icc a b` is compact (`isCompact_Icc`);
* every continuous real-valued function on a nonempty `Set.Icc a b` attains
  a maximum and a minimum (`IsCompact.exists_forall_ge` /
  `IsCompact.exists_forall_le`).

The conjunction is packaged as a `MathlibProofCertificate` and recovered a
second time only through the analytic boundary calculus.
-/


namespace GRWTSK.Topology.GeneralTopology.RealIccIsCompact.Variant225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b

namespace AnalyticNumber
namespace MathlibBridge
namespace Compactness

/-- Real closed intervals are compact. Mathlib proof. -/
theorem real_Icc_isCompact
    (a b : ℝ) :
    IsCompact (Set.Icc a b) :=
  isCompact_Icc

/-- A continuous function on a nonempty closed interval attains its maximum.
Mathlib proof via compactness. -/
theorem continuousOn_Icc_attains_max
    {f : ℝ → ℝ} {a b : ℝ}
    (hab : a ≤ b)
    (hf : ContinuousOn f (Set.Icc a b)) :
    ∃ x ∈ Set.Icc a b,
      ∀ y ∈ Set.Icc a b, f y ≤ f x := by
  obtain ⟨x, hx, hmax⟩ :=
    (real_Icc_isCompact a b).exists_isMaxOn (Set.nonempty_Icc.mpr hab) hf
  exact ⟨x, hx, isMaxOn_iff.mp hmax⟩

/-- A continuous function on a nonempty closed interval attains its minimum.
Mathlib proof via compactness. -/
theorem continuousOn_Icc_attains_min
    {f : ℝ → ℝ} {a b : ℝ}
    (hab : a ≤ b)
    (hf : ContinuousOn f (Set.Icc a b)) :
    ∃ x ∈ Set.Icc a b,
      ∀ y ∈ Set.Icc a b, f x ≤ f y := by
  obtain ⟨x, hx, hmin⟩ :=
    (real_Icc_isCompact a b).exists_isMinOn (Set.nonempty_Icc.mpr hab) hf
  exact ⟨x, hx, isMinOn_iff.mp hmin⟩

/-- Analytic context for the compactness claim. -/
def compactnessContext (_a _b : ℝ) :
    BoundaryCalculus.AnalyticContext where
  label := "Mathlib compactness of real closed interval"
  finiteHash := 0

/-- The analytic claim: compactness of `Icc a b` and the extreme-value
theorem for all continuous functions on it. -/
def compactnessClaim
    (a b : ℝ) (_hab : a ≤ b) :
    BoundaryCalculus.AnalyticClaim
      (compactnessContext a b)
      (Authority.BoundaryKind.custom "real-compactness") where
  label := "Mathlib proof: compactness and extreme-value theorem on Icc"
  statement :=
    IsCompact (Set.Icc a b) ∧
      ∀ f : ℝ → ℝ,
        ContinuousOn f (Set.Icc a b) →
          (∃ x ∈ Set.Icc a b,
            ∀ y ∈ Set.Icc a b, f y ≤ f x) ∧
          (∃ x ∈ Set.Icc a b,
            ∀ y ∈ Set.Icc a b, f x ≤ f y)

/-- The Mathlib-backed proof certificate for the compactness claim. -/
def compactnessMathlibProofCertificate
    (a b : ℝ) (hab : a ≤ b) :
    MathlibProofCertificate
      (compactnessContext a b)
      (Authority.BoundaryKind.custom "real-compactness")
      (compactnessClaim a b hab) where
  theoremName := "compactness of Icc and extreme value theorem"
  moduleName := "AnalyticNumber.Mathlib.Compactness"
  proof := by
    refine ⟨real_Icc_isCompact a b, ?_⟩
    intro f hf
    exact
      ⟨continuousOn_Icc_attains_max hab hf,
        continuousOn_Icc_attains_min hab hf⟩

/-- The compactness and extreme-value theorem, transported through the
boundary calculus rather than returned directly. -/
theorem compactness_through_boundary_calculus
    (a b : ℝ) (hab : a ≤ b) :
    IsCompact (Set.Icc a b) ∧
      ∀ f : ℝ → ℝ,
        ContinuousOn f (Set.Icc a b) →
          (∃ x ∈ Set.Icc a b,
            ∀ y ∈ Set.Icc a b, f y ≤ f x) ∧
          (∃ x ∈ Set.Icc a b,
            ∀ y ∈ Set.Icc a b, f x ≤ f y) :=
  mathlib_proof_through_boundary_calculus
    (compactnessMathlibProofCertificate a b hab)

/-- Direct lower-layer ownership of the compactness claim is impossible. -/
theorem compactness_no_direct_crossing
    (a b : ℝ) (hab : a ≤ b) :
    ¬ BoundaryCalculus.DirectOwns
      (compactnessContext a b)
      (Authority.BoundaryKind.custom "real-compactness")
      (compactnessClaim a b hab) :=
  BoundaryCalculus.no_direct_analytic_crossing

end Compactness
end MathlibBridge
end AnalyticNumber
