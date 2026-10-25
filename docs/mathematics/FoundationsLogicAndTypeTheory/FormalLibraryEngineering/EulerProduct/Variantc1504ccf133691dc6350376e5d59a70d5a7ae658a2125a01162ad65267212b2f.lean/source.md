# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EulerProduct.Variantc1504ccf133691dc6350376e5d59a70d5a7ae658a2125a01162ad65267212b2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `731da1f0ff4cf87a914ad279f965fa75f528590e` · SHA-256 `e37c52506cbf39701556a66812f114034e1ed72f725747aa851f8178f65f9017`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfiniteEulerProductAuthority.Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.InfiniteEulerProductAuthority.Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0","mathematical_subject":"Foundations.Unclassified","original_sha256":"316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/EulerProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import AnalyticNumber.DirichletSeries
import Number.EulerProduct

/-!
# Analytic number Euler products

Finite Euler products live in `Number`.  Infinite Euler products live here, and
only behind explicit convergence and identity authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfiniteEulerProductAuthority.Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0

namespace AnalyticNumber

/-- Authority for an infinite Euler product attached to a finite system label. -/
structure InfiniteEulerProductAuthority
    (_finiteSystemLabel : String) where
  absoluteConvergenceSound : Prop
  absoluteConvergenceProof : absoluteConvergenceSound
  finiteProductsConverge : Prop
  finiteProductsConvergeProof : finiteProductsConverge
  productIdentitySound : Prop
  productIdentityProof : productIdentitySound

theorem infinite_euler_product_requires_authority
    (A : InfiniteEulerProductAuthority "EulerProduct") :
    A.absoluteConvergenceSound ∧
      A.finiteProductsConverge ∧
      A.productIdentitySound :=
  ⟨A.absoluteConvergenceProof,
    A.finiteProductsConvergeProof,
    A.productIdentityProof⟩

/-- A finite Euler product window does not prove the infinite Euler product. -/
def FiniteEulerWindowProvesInfiniteEulerProduct
    (_P : _root_.Number.FiniteEulerProduct) : Prop :=
  False

theorem finite_euler_window_not_infinite_product
    (P : _root_.Number.FiniteEulerProduct) :
    ¬ FiniteEulerWindowProvesInfiniteEulerProduct P := by
  intro h
  exact h

end AnalyticNumber
```
