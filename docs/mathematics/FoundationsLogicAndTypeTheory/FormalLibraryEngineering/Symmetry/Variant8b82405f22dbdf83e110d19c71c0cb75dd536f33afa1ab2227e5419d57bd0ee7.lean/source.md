# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Symmetry.Variant8b82405f22dbdf83e110d19c71c0cb75dd536f33afa1ab2227e5419d57bd0ee7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73f094928a222047a3920c3423b240194cbcfd0c` · SHA-256 `d4e1e592324a9a3b42c55c2e1f75bdbf0a72e0dcc6e2445115a234ee9ed301c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InvolutionInvariantCell.Variantf3fb29a32970d58aeb64c5967a3347e2b9165a98950ecf8a44a4cd9f97170182","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f3fb29a32970d58aeb64c5967a3347e2b9165a98950ecf8a44a4cd9f97170182","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InvolutionInvariantCell.Variantf3fb29a32970d58aeb64c5967a3347e2b9165a98950ecf8a44a4cd9f97170182","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f3fb29a32970d58aeb64c5967a3347e2b9165a98950ecf8a44a4cd9f97170182","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/Symmetry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.Lineage
import Mathlib.Tactic.Linarith

/-!
# Critical involution and line localization

Symmetry fixes a unique zero only when the cell interior itself is invariant.
Multi-zero cells require a separate carrier certificate.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InvolutionInvariantCell.Variantf3fb29a32970d58aeb64c5967a3347e2b9165a98950ecf8a44a4cd9f97170182

namespace Mathematics.RHIsolation

open scoped ComplexConjugate

def criticalInvolution (z : ℂ) : ℂ :=
  1 - conj z

structure InvolutionInvariantCell
    (cell : AnalyticCell) where
  carrierInvariant :
    criticalInvolution '' cell.carrier =
      cell.carrier
  interiorInvariant :
    criticalInvolution '' cell.interior =
      cell.interior

structure XiCriticalSymmetry
    (xi : ℂ → ℂ) where
  symmetric :
    ∀ z,
      xi (criticalInvolution z) =
        conj (xi z)

theorem unique_zero_in_invariant_cell_fixed
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (cellSymmetry :
      InvolutionInvariantCell cell)
    (unique :
      UniqueZeroCertificate authority cell)
    (xiSymmetry : XiCriticalSymmetry xi) :
    criticalInvolution unique.zero =
      unique.zero := by
  apply unique.unique
  · rw [← cellSymmetry.interiorInvariant]
    exact ⟨unique.zero, unique.zero_mem, rfl⟩
  · rw [xiSymmetry.symmetric, unique.xi_zero]
    simp

theorem fixed_by_criticalInvolution_re_eq_half
    {z : ℂ}
    (fixed :
      criticalInvolution z = z) :
    z.re = (1 : ℝ) / 2 := by
  have realParts :=
    congrArg Complex.re fixed
  simp [criticalInvolution] at realParts
  linarith

theorem unique_zero_in_invariant_cell_on_line
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (cellSymmetry :
      InvolutionInvariantCell cell)
    (unique :
      UniqueZeroCertificate authority cell)
    (xiSymmetry : XiCriticalSymmetry xi) :
    unique.zero.re = (1 : ℝ) / 2 :=
  fixed_by_criticalInvolution_re_eq_half <|
    unique_zero_in_invariant_cell_fixed
      cellSymmetry unique xiSymmetry

structure CriticalLineCarrierCertificate
    (xi : ℂ → ℂ)
    (cell : AnalyticCell) where
  allZerosOnLine :
    ∀ z,
      z ∈ cell.interior →
      xi z = 0 →
      z.re = (1 : ℝ) / 2

theorem CriticalLineCarrierCertificate.ofUniqueInvariantCell
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (cellSymmetry :
      InvolutionInvariantCell cell)
    (unique :
      UniqueZeroCertificate authority cell)
    (xiSymmetry : XiCriticalSymmetry xi) :
    CriticalLineCarrierCertificate xi cell where
  allZerosOnLine := by
    intro z zMem zZero
    rw [unique.unique z zMem zZero]
    exact
      unique_zero_in_invariant_cell_on_line
        cellSymmetry unique xiSymmetry

end Mathematics.RHIsolation
```
