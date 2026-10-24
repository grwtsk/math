# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ProductShell.Variante9e7b55224ca69892ae0b4304c19f1ec23348c1e7bcb101d39ae5a315cd8c317

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ecd8b78950b41b0f027abb857904d407b108044` · SHA-256 `e66afafa1434689184c6e01bf62c9d3f2f79640e97f5855226cb5ca302e2cadd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TypeIIProductShellUpper.Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TypeIIProductShellUpper.Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/ProductShell.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.CutoffMatrix
import Mathlib.Tactic

/-!
# Fixed-scale product shells

The master Vaughan scale `N` remains fixed.  Product shell `q` is the finite
integer interval

`(2 ^ q, min (2 ^ (q + 1)) (2 * N)]`.

This product convention is left-open and right-closed.  The exponent-indexed
factor blocks used later are instead `[2^j,2^(j+1))`; that deliberate endpoint
difference is why the exact shell/block relation has three exponent diagonals.
This file contains only exact finite carriers and zero-one matrices; it does
not change the Vaughan cutoffs or assert a maximal estimate.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TypeIIProductShellUpper.Variant50f5e7b4e3233a19e42df82266eb35a9d8a5793856c247e6eb287556a500cdc9

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators

/-- Upper endpoint of product shell `q` in the fixed master window. -/
@[expose]
def typeIIProductShellUpper (N q : ℕ) : ℕ :=
  min (2 ^ (q + 1)) (2 * N)

/-- Product shell `(2^q, min(2^(q+1),2N)]`. -/
@[expose]
def typeIIProductShell (N q : ℕ) : Finset ℕ :=
  Finset.Ioc (2 ^ q) (typeIIProductShellUpper N q)

@[surface_novel, surface_published]
theorem mem_typeIIProductShell_iff {N q n : ℕ} :
    n ∈ typeIIProductShell N q ↔
      2 ^ q < n ∧ n ≤ min (2 ^ (q + 1)) (2 * N) := by
  simp [typeIIProductShell, typeIIProductShellUpper]

@[surface_novel, surface_published]
theorem productShell_mem_implies_scale {N q n : ℕ}
    (hn : n ∈ typeIIProductShell N q) :
    n ≤ 2 * N := by
  exact ((mem_typeIIProductShell_iff.mp hn).2.trans (min_le_right _ _))

/-- The part of shell `q` exposed by prefix endpoint `x`. -/
@[expose]
def typeIIProductShellPrefixCarrier (q x : ℕ) : Finset ℕ :=
  Finset.Ioc (2 ^ q) x

@[surface_novel, surface_published]
theorem mem_typeIIProductShellPrefixCarrier_iff {q x n : ℕ} :
    n ∈ typeIIProductShellPrefixCarrier q x ↔
      2 ^ q < n ∧ n ≤ x := by
  simp [typeIIProductShellPrefixCarrier]

@[surface_novel, surface_published]
theorem productShellPrefixCarrier_subset_shell {N q x : ℕ}
    (hx : x ∈ typeIIProductShell N q) :
    ∀ ⦃n : ℕ⦄,
      n ∈ typeIIProductShellPrefixCarrier q x →
        n ∈ typeIIProductShell N q := by
  intro n hn
  rw [mem_typeIIProductShell_iff]
  have hprefix := mem_typeIIProductShellPrefixCarrier_iff.mp hn
  exact ⟨hprefix.1, hprefix.2.trans (mem_typeIIProductShell_iff.mp hx).2⟩

/-- Exact zero-one matrix of the shell prefix `(2^q,x]`. -/
@[expose]
def typeIIProductShellPrefixMatrix {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (q x : ℕ) : Matrix Left Right ℂ :=
  fun left right ↦
    if 2 ^ q < leftIndex left * rightIndex right ∧
        leftIndex left * rightIndex right ≤ x then 1 else 0

@[surface_novel, surface_published]
theorem typeIIProductShellPrefixMatrix_eq_sum_fibers
    {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (q x : ℕ) :
    typeIIProductShellPrefixMatrix leftIndex rightIndex q x =
      ∑ n ∈ typeIIProductShellPrefixCarrier q x,
        productFiberIncrementMatrix leftIndex rightIndex n := by
  ext left right
  simp only [typeIIProductShellPrefixMatrix,
    typeIIProductShellPrefixCarrier, Matrix.sum_apply,
    productFiberIncrementMatrix, Finset.sum_ite_eq]
  by_cases hmem : leftIndex left * rightIndex right ∈ Finset.Ioc (2 ^ q) x
  · rw [if_pos hmem]
    simpa [Finset.mem_Ioc] using hmem
  · rw [if_neg hmem]
    simpa [Finset.mem_Ioc] using hmem

end

end Surface.Core.TypeII

end
```
