# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ProductDyadicInterval.Variant04191259b7129c81a8ae09d2e745868ac6be1f728b66c83da93615c2b0b026ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8addf8f2001e3bc2480aa5f6a1217640f467146` · SHA-256 `105d400c6289b683cf707afb63ed2e1623c19dc95875b1764faaada6641e6399`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TypeIIProductDyadicInterval.Variant309ce7abb72748c50269cf6d865f19fd1c4dbf71431376648d2f65a9fb6a7941","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"309ce7abb72748c50269cf6d865f19fd1c4dbf71431376648d2f65a9fb6a7941","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TypeIIProductDyadicInterval.Variant309ce7abb72748c50269cf6d865f19fd1c4dbf71431376648d2f65a9fb6a7941","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"309ce7abb72748c50269cf6d865f19fd1c4dbf71431376648d2f65a9fb6a7941","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/ProductDyadicInterval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.ProductShell
import Mathlib.Tactic

/-!
# Dyadic intervals in the product variable

Inside the fixed product shell

`(2 ^ q, min (2 ^ (q + 1)) (2 * N)]`

we use binary-aligned intervals `(r * 2^s, (r+1) * 2^s]`.  The convention is
left-open and right-closed at every product scale, matching the product shell.
The exponent-indexed factor blocks deliberately use the opposite endpoint
convention `[2^j,2^(j+1))`.  All product endpoints remain inside the master
window `[1,2N]`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TypeIIProductDyadicInterval.Variant309ce7abb72748c50269cf6d865f19fd1c4dbf71431376648d2f65a9fb6a7941

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators

/-- A binary-aligned interval wholly contained in product shell `q`.

The finite coordinates bound the scale by `q` and the block number by `2N`.
The endpoint proof then imposes the exact shell containment. -/
abbrev TypeIIProductDyadicInterval (N q : ℕ) :=
  {index : Fin (q + 1) × Fin (2 * N + 1) //
    2 ^ q ≤ index.2.1 * 2 ^ index.1.1 ∧
      (index.2.1 + 1) * 2 ^ index.1.1 ≤
        typeIIProductShellUpper N q}

namespace TypeIIProductDyadicInterval

@[expose]
def scale {N q : ℕ} (interval : TypeIIProductDyadicInterval N q) : ℕ :=
  interval.1.1.1

/-- Compatibility name for the dyadic scale. -/
@[expose]
def level {N q : ℕ} (interval : TypeIIProductDyadicInterval N q) : ℕ :=
  interval.scale

@[expose]
def block {N q : ℕ} (interval : TypeIIProductDyadicInterval N q) : ℕ :=
  interval.1.2.1

@[expose]
def width {N q : ℕ} (interval : TypeIIProductDyadicInterval N q) : ℕ :=
  2 ^ interval.scale

@[expose]
def lower {N q : ℕ} (interval : TypeIIProductDyadicInterval N q) : ℕ :=
  interval.block * interval.width

@[expose]
def upper {N q : ℕ} (interval : TypeIIProductDyadicInterval N q) : ℕ :=
  (interval.block + 1) * interval.width

/-- Integer carrier `(lower,upper]`. -/
@[expose]
def carrier {N q : ℕ} (interval : TypeIIProductDyadicInterval N q) :
    Finset ℕ :=
  Finset.Ioc interval.lower interval.upper

@[surface_novel, surface_published]
theorem scale_le_shell {N q : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    interval.scale ≤ q := by
  exact Nat.le_of_lt_succ interval.1.1.2

@[surface_novel, surface_published]
theorem width_pos {N q : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    0 < interval.width := by
  simp [width]

@[surface_novel, surface_published]
theorem lower_lt_upper {N q : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    interval.lower < interval.upper := by
  simp only [lower, upper]
  exact Nat.mul_lt_mul_of_pos_right (Nat.lt_succ_self _) interval.width_pos

@[surface_novel, surface_published]
theorem shell_lower_le {N q : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    2 ^ q ≤ interval.lower := by
  exact interval.2.1

@[surface_novel, surface_published]
theorem upper_le_effectiveShellUpper {N q : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    interval.upper ≤ typeIIProductShellUpper N q := by
  exact interval.2.2

@[surface_novel, surface_published]
theorem upper_le_shell_upper {N q : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    interval.upper ≤ 2 ^ (q + 1) := by
  exact interval.upper_le_effectiveShellUpper.trans
    (min_le_left _ _)

@[surface_novel, surface_published]
theorem upper_le_scale {N q : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    interval.upper ≤ 2 * N := by
  exact interval.upper_le_effectiveShellUpper.trans
    (min_le_right _ _)

@[surface_novel, surface_published]
theorem isDyadic {N q : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    ∃ s r : ℕ,
      interval.lower = r * 2 ^ s ∧
        interval.upper = (r + 1) * 2 ^ s := by
  exact ⟨interval.scale, interval.block, rfl, rfl⟩

@[surface_novel, surface_published]
theorem mem_carrier_iff {N q n : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    n ∈ interval.carrier ↔ interval.lower < n ∧ n ≤ interval.upper := by
  simp [carrier]

@[surface_novel, surface_published]
theorem mem_carrier_implies_shell {N q n : ℕ}
    {interval : TypeIIProductDyadicInterval N q}
    (hn : n ∈ interval.carrier) :
    n ∈ typeIIProductShell N q := by
  rw [mem_typeIIProductShell_iff]
  have hbounds := interval.mem_carrier_iff.mp hn
  exact ⟨interval.shell_lower_le.trans_lt hbounds.1,
    hbounds.2.trans interval.upper_le_effectiveShellUpper⟩

end TypeIIProductDyadicInterval

/-- The finite, nonduplicative family of all binary-aligned intervals wholly
contained in product shell `q`. -/
@[expose]
def typeIIProductDyadicIntervals (N q : ℕ) :
    Finset (TypeIIProductDyadicInterval N q) :=
  Finset.univ

@[surface_novel, surface_published]
theorem mem_typeIIProductDyadicIntervals {N q : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    interval ∈ typeIIProductDyadicIntervals N q := by
  simp [typeIIProductDyadicIntervals]

/-- Every moment in a nonempty product shell is retained at singleton scale.
The interval containing `n` is `(n-1,n]`. -/
@[surface_novel, surface_published]
theorem exists_productDyadicInterval_mem_carrier {N q n : ℕ}
    (hn : n ∈ typeIIProductShell N q) :
    ∃ interval ∈ typeIIProductDyadicIntervals N q,
      n ∈ interval.carrier := by
  have hshell := mem_typeIIProductShell_iff.mp hn
  have hblock : n - 1 < 2 * N + 1 := by
    have hnscale : n ≤ 2 * N :=
      hshell.2.trans (min_le_right _ _)
    omega
  let interval : TypeIIProductDyadicInterval N q :=
    ⟨(⟨0, by omega⟩, ⟨n - 1, hblock⟩), by
      simp [typeIIProductShellUpper]
      constructor <;> omega⟩
  refine ⟨interval, mem_typeIIProductDyadicIntervals interval, ?_⟩
  apply interval.mem_carrier_iff.mpr
  change (n - 1) * 2 ^ 0 < n ∧ n ≤ (n - 1 + 1) * 2 ^ 0
  simp
  omega

/-- Exact product-fiber indicator for one dyadic product interval. -/
@[expose]
def typeIIProductIntervalMatrix {N q : ℕ} {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (interval : TypeIIProductDyadicInterval N q) : Matrix Left Right ℂ :=
  fun left right ↦
    if interval.lower < leftIndex left * rightIndex right ∧
        leftIndex left * rightIndex right ≤ interval.upper then 1 else 0

@[surface_novel, surface_published]
theorem typeIIProductIntervalMatrix_apply {N q : ℕ}
    {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (interval : TypeIIProductDyadicInterval N q)
    (left : Left) (right : Right) :
    typeIIProductIntervalMatrix leftIndex rightIndex interval left right =
      if leftIndex left * rightIndex right ∈ interval.carrier then 1 else 0 := by
  simp [typeIIProductIntervalMatrix,
    TypeIIProductDyadicInterval.mem_carrier_iff]

/-- An interval matrix is the exact sum of its product-fiber increments. -/
@[surface_novel, surface_published]
theorem typeIIProductIntervalMatrix_eq_sum_fibers {N q : ℕ}
    {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (interval : TypeIIProductDyadicInterval N q) :
    typeIIProductIntervalMatrix leftIndex rightIndex interval =
      ∑ n ∈ interval.carrier,
        productFiberIncrementMatrix leftIndex rightIndex n := by
  ext left right
  rw [typeIIProductIntervalMatrix_apply]
  simp [Matrix.sum_apply, productFiberIncrementMatrix]

/-- Exact bilinear form of the product-fiber decomposition. -/
@[surface_novel, surface_published]
theorem bilinearMatrixPairing_productInterval_eq_sum_fibers
    {N q : ℕ} {Left Right : Type*} [Fintype Left] [Fintype Right]
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (left : Left → ℂ) (right : Right → ℂ)
    (interval : TypeIIProductDyadicInterval N q) :
    bilinearMatrixPairing left
        (typeIIProductIntervalMatrix leftIndex rightIndex interval) right =
      ∑ n ∈ interval.carrier,
        bilinearMatrixPairing left
          (productFiberIncrementMatrix leftIndex rightIndex n) right := by
  rw [typeIIProductIntervalMatrix_eq_sum_fibers]
  exact bilinearMatrixPairing_finset_sum left interval.carrier
    (productFiberIncrementMatrix leftIndex rightIndex) right

end

end Surface.Core.TypeII

end
```
