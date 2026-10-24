-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeltaRingMathlibAdapter.Variantcaab2f02de605fdd6243a03a3921b45c22948e9d9a6f9187b525a318400369fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"caab2f02de605fdd6243a03a3921b45c22948e9d9a6f9187b525a318400369fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DeltaRingMathlibAdapter.Variantcaab2f02de605fdd6243a03a3921b45c22948e9d9a6f9187b525a318400369fa","mathematical_subject":"Computation.DataStructures","original_sha256":"caab2f02de605fdd6243a03a3921b45c22948e9d9a6f9187b525a318400369fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Prismatic/DeltaRing/Mathlib.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Prismatic.MathlibAdapters


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeltaRingMathlibAdapter.Variantcaab2f02de605fdd6243a03a3921b45c22948e9d9a6f9187b525a318400369fa

namespace Surface.Prismatic

universe u

/-!
What is formalized:
An exact-file adapter contract from Surface `DeltaRing` data to a future Mathlib
commutative-ring-plus-delta backend.

What is certificate-gated:
The actual Mathlib ring hierarchy, the δ-map transfer, the Frobenius lift
transfer, and the ring-homomorphism transfer.

What is not claimed:
This file does not import Mathlib and does not construct a Mathlib δ-ring.

Primary mathematical source:
Bhatt--Scholze's δ-ring interface and Surface.Prismatic.DeltaRing.
-/

/-- Exact-file adapter for a Surface δ-ring into a future Mathlib backend. -/
structure DeltaRingMathlibAdapter
    {p : Nat}
    (A : DeltaRing.{u} p) where
  backend : MathlibAdapterBackend
  carrierTransferred : Prop
  carrierTransferredCertified :
    carrierTransferred
  ringOperationsTransferred : Prop
  ringOperationsTransferredCertified :
    ringOperationsTransferred
  deltaTransferred : Prop
  deltaTransferredCertified :
    deltaTransferred
  phiTransferred : Prop
  phiTransferredCertified :
    phiTransferred
  frobeniusLiftFormulaTransferred : Prop
  frobeniusLiftFormulaTransferredCertified :
    frobeniusLiftFormulaTransferred
  ringHomCertificateTransferred : Prop
  ringHomCertificateTransferredCertified :
    ringHomCertificateTransferred
  boundary : List String

def DeltaRingMathlibAdapter.usableForFinalTheorem
    {p : Nat}
    {A : DeltaRing.{u} p}
    (M : DeltaRingMathlibAdapter A) :
    Prop :=
  M.backend.usableForFinalTheorem

theorem DeltaRingMathlibAdapter.unavailable_not_usableForFinalTheorem
    {p : Nat}
    {A : DeltaRing.{u} p}
    (M : DeltaRingMathlibAdapter A)
    (h : M.backend = MathlibAdapterBackend.unavailable) :
    ¬ M.usableForFinalTheorem := by
  intro hUse
  rw [DeltaRingMathlibAdapter.usableForFinalTheorem, h] at hUse
  exact MathlibAdapterBackend.unavailable_not_usableForFinalTheorem hUse

theorem DeltaRingMathlibAdapter.finalTheorem_requires_importedMathlib
    {p : Nat}
    {A : DeltaRing.{u} p}
    (M : DeltaRingMathlibAdapter A)
    (h : M.usableForFinalTheorem) :
    M.backend = MathlibAdapterBackend.importedMathlib :=
  h

end Surface.Prismatic
