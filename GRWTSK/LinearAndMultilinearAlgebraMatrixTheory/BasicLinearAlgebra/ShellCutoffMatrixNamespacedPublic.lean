-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeIIShellIntervalMatrix.Variantb7a4cbfced6720d959f6712bfba55149bbf0fc8467d53c872f8fed80dd450427","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7a4cbfced6720d959f6712bfba55149bbf0fc8467d53c872f8fed80dd450427","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TypeIIShellIntervalMatrix.Variantb7a4cbfced6720d959f6712bfba55149bbf0fc8467d53c872f8fed80dd450427","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b7a4cbfced6720d959f6712bfba55149bbf0fc8467d53c872f8fed80dd450427","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/ShellCutoffMatrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.CanonicalFactorBlock
public import Surface.Core.TypeII.ProductDyadicInterval
import Mathlib.Tactic

/-!
# Product-shell cutoff matrices on exponent-indexed factor blocks

These are literal zero-one matrices.  They carry no estimate, packet model,
or coefficient-dependent geometry.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeIIShellIntervalMatrix.Variantb7a4cbfced6720d959f6712bfba55149bbf0fc8467d53c872f8fed80dd450427

public section

namespace Surface.Core.TypeII

noncomputable section

/-- Restriction of a product-shell dyadic interval to one canonical factor
block. -/
@[expose]
def typeIIShellIntervalMatrix {N q : ℕ}
    (B : TypeIIShellFactorBlock N q)
    (D : TypeIIProductDyadicInterval N q) : Matrix B.Left B.Right ℂ :=
  typeIIProductIntervalMatrix (fun m ↦ m.1.1) (fun k ↦ k.1.1) D

@[surface_novel, surface_published]
theorem typeIIShellIntervalMatrix_apply {N q : ℕ}
    (B : TypeIIShellFactorBlock N q)
    (D : TypeIIProductDyadicInterval N q)
    (m : B.Left) (k : B.Right) :
    typeIIShellIntervalMatrix B D m k =
      if m.1.1 * k.1.1 ∈ D.carrier then 1 else 0 := by
  exact typeIIProductIntervalMatrix_apply _ _ D m k

/-- The shell interval matrix is the finite sum of its exact product-fiber
increments. -/
@[surface_novel, surface_published]
theorem typeIIShellIntervalMatrix_eq_sum_fibers {N q : ℕ}
    (B : TypeIIShellFactorBlock N q)
    (D : TypeIIProductDyadicInterval N q) :
    typeIIShellIntervalMatrix B D =
      ∑ n ∈ D.carrier,
        productFiberIncrementMatrix
          (fun m : B.Left ↦ m.1.1) (fun k : B.Right ↦ k.1.1) n := by
  exact typeIIProductIntervalMatrix_eq_sum_fibers _ _ D

/-- Exact factor-block cutoff for one shell prefix `(2^q,x]`. -/
@[expose]
def typeIIShellPrefixMatrix {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) (x : ℕ) : Matrix B.Left B.Right ℂ :=
  fun m k ↦
    if 2 ^ q < m.1.1 * k.1.1 ∧ m.1.1 * k.1.1 ≤ x then 1 else 0

@[surface_novel, surface_published]
theorem typeIIShellPrefixMatrix_apply {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) (x : ℕ)
    (m : B.Left) (k : B.Right) :
    typeIIShellPrefixMatrix B x m k =
      if 2 ^ q < m.1.1 * k.1.1 ∧ m.1.1 * k.1.1 ≤ x then 1 else 0 :=
  rfl

end

end Surface.Core.TypeII

end
