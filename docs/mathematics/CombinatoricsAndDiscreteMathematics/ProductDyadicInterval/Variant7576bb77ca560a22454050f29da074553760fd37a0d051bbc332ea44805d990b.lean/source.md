# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ProductDyadicInterval.Variant7576bb77ca560a22454050f29da074553760fd37a0d051bbc332ea44805d990b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e77c3baae638482ac5ce116736f6841c6523680` · SHA-256 `621c8b1d139a4aa55f45cdecc1c47db2b01d1c18ee39a30d08da309128675a46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TypeIIProductDyadicInterval.Variant28815824b6783f135bfcdd0bd0304d4d31555b6afcccda91a5e3c6d86ce3eaf7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28815824b6783f135bfcdd0bd0304d4d31555b6afcccda91a5e3c6d86ce3eaf7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TypeIIProductDyadicInterval.Variant28815824b6783f135bfcdd0bd0304d4d31555b6afcccda91a5e3c6d86ce3eaf7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"28815824b6783f135bfcdd0bd0304d4d31555b6afcccda91a5e3c6d86ce3eaf7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:f4ac95b375aea967f43ee6c3/workspace/lib/Surface/Core/TypeII/ProductDyadicInterval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.DyadicIntervals
import Mathlib.Tactic

/-!
# Canonical dyadic intervals inside a product shell

At master scale `N`, product shell `q` is the half-open arithmetic interval

`[2 ^ q, 2 ^ (q + 1))`.

`TypeIIProductDyadicInterval N q` consists of the full standard dyadic
intervals from `TypeIIDyadicInterval N` whose entire carrier lies in this
shell.  The ambient dyadic interval already lies in `[0, 2 * N]`, so the
effective shell is

`[2 ^ q, min (2 ^ (q + 1) - 1) (2 * N)]`.

Only exact finite combinatorics appear here.  In particular, the external
relevance condition `2 ^ q <= 2 * N` and every analytic estimate remain the
responsibility of callers.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TypeIIProductDyadicInterval.Variant28815824b6783f135bfcdd0bd0304d4d31555b6afcccda91a5e3c6d86ce3eaf7

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators

/-- A full canonical dyadic interval contained in product shell `q` and the
master window `[0, 2 * N]`. -/
abbrev TypeIIProductDyadicInterval (N q : ℕ) :=
  {interval : TypeIIDyadicInterval N //
    2 ^ q ≤ interval.lower ∧ interval.upper < 2 ^ (q + 1)}

namespace TypeIIProductDyadicInterval

/-- The underlying ambient dyadic interval. -/
@[expose]
def base {N q : ℕ} (interval : TypeIIProductDyadicInterval N q) :
    TypeIIDyadicInterval N :=
  interval.1

@[expose]
def level {N q : ℕ} (interval : TypeIIProductDyadicInterval N q) : ℕ :=
  interval.base.level

@[expose]
def block {N q : ℕ} (interval : TypeIIProductDyadicInterval N q) : ℕ :=
  interval.base.block

@[expose]
def width {N q : ℕ} (interval : TypeIIProductDyadicInterval N q) : ℕ :=
  interval.base.width

@[expose]
def lower {N q : ℕ} (interval : TypeIIProductDyadicInterval N q) : ℕ :=
  interval.base.lower

@[expose]
def upper {N q : ℕ} (interval : TypeIIProductDyadicInterval N q) : ℕ :=
  interval.base.upper

/-- The finite carrier in the arithmetic product coordinate. -/
@[expose]
def carrier {N q : ℕ} (interval : TypeIIProductDyadicInterval N q) :
    Finset ℕ :=
  interval.base.carrier

@[surface_novel, surface_published]
theorem shell_lower_le {N q : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    2 ^ q ≤ interval.lower := by
  exact interval.2.1

@[surface_novel, surface_published]
theorem upper_lt_shell_upper {N q : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    interval.upper < 2 ^ (q + 1) := by
  exact interval.2.2

@[surface_novel, surface_published]
theorem lower_le_upper {N q : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    interval.lower ≤ interval.upper := by
  exact interval.base.lower_le_upper

@[surface_novel, surface_published]
theorem upper_le_scale {N q : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    interval.upper ≤ 2 * N := by
  exact interval.base.upper_le_scale

@[surface_novel, surface_published]
theorem upper_le_effectiveShellUpper {N q : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    interval.upper ≤ min (2 ^ (q + 1) - 1) (2 * N) := by
  exact (Nat.le_min).2 ⟨
    Nat.le_sub_one_of_lt interval.upper_lt_shell_upper,
    interval.upper_le_scale⟩

@[surface_novel, surface_published]
theorem mem_carrier_iff {N q n : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    n ∈ interval.carrier ↔ interval.lower ≤ n ∧ n ≤ interval.upper := by
  exact interval.base.mem_carrier_iff n

@[surface_novel, surface_published]
theorem mem_carrier_implies_shell {N q n : ℕ}
    {interval : TypeIIProductDyadicInterval N q}
    (hn : n ∈ interval.carrier) :
    2 ^ q ≤ n ∧ n < 2 ^ (q + 1) := by
  have hbounds := (interval.mem_carrier_iff).mp hn
  exact ⟨interval.shell_lower_le.trans hbounds.1,
    hbounds.2.trans_lt interval.upper_lt_shell_upper⟩

@[surface_novel, surface_published]
theorem mem_carrier_implies_scale {N q n : ℕ}
    {interval : TypeIIProductDyadicInterval N q}
    (hn : n ∈ interval.carrier) :
    n ≤ 2 * N := by
  exact ((interval.mem_carrier_iff).mp hn).2.trans interval.upper_le_scale

end TypeIIProductDyadicInterval

/-- The finite, nonduplicative family of all full dyadic intervals contained
in product shell `q` and the master window. -/
@[expose]
def typeIIProductDyadicIntervals (N q : ℕ) :
    Finset (TypeIIProductDyadicInterval N q) :=
  Finset.univ

@[surface_novel, surface_published]
theorem mem_typeIIProductDyadicIntervals {N q : ℕ}
    (interval : TypeIIProductDyadicInterval N q) :
    interval ∈ typeIIProductDyadicIntervals N q := by
  simp [typeIIProductDyadicIntervals]

/-- Every arithmetic moment in the effective product shell is covered by a
canonical singleton interval.  Thus the finite interval family does not lose
any product fiber at the smallest dyadic scale. -/
@[surface_novel, surface_published]
theorem exists_productDyadicInterval_mem_carrier {N q n : ℕ}
    (hshellLower : 2 ^ q ≤ n)
    (hshellUpper : n < 2 ^ (q + 1))
    (hscale : n ≤ 2 * N) :
    ∃ interval ∈ typeIIProductDyadicIntervals N q,
      n ∈ interval.carrier := by
  let ambient : TypeIIDyadicInterval N :=
    ⟨(⟨0, by omega⟩, ⟨n, by omega⟩), by simp; omega⟩
  have hambientLower : ambient.lower = n := by
    simp [ambient, TypeIIDyadicInterval.lower, TypeIIDyadicInterval.block,
      TypeIIDyadicInterval.width, TypeIIDyadicInterval.level]
  have hambientUpper : ambient.upper = n := by
    simp [ambient, TypeIIDyadicInterval.upper,
      TypeIIDyadicInterval.upperExclusive, TypeIIDyadicInterval.block,
      TypeIIDyadicInterval.width, TypeIIDyadicInterval.level]
  let interval : TypeIIProductDyadicInterval N q :=
    ⟨ambient, ⟨by simpa [hambientLower] using hshellLower,
      by simpa [hambientUpper] using hshellUpper⟩⟩
  refine ⟨interval, mem_typeIIProductDyadicIntervals interval, ?_⟩
  apply (interval.mem_carrier_iff).2
  constructor
  · change ambient.lower ≤ n
    omega
  · change n ≤ ambient.upper
    omega

/-- Exact product-fiber indicator for a dyadic interval inside one product
shell. -/
@[expose]
def typeIIProductIntervalMatrix {N q : ℕ} {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (interval : TypeIIProductDyadicInterval N q) : Matrix Left Right ℂ :=
  productDyadicIntervalMatrix leftIndex rightIndex interval.base

@[surface_novel, surface_published]
theorem typeIIProductIntervalMatrix_apply {N q : ℕ}
    {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (interval : TypeIIProductDyadicInterval N q)
    (left : Left) (right : Right) :
    typeIIProductIntervalMatrix leftIndex rightIndex interval left right =
      if leftIndex left * rightIndex right ∈ interval.carrier then 1 else 0 := by
  rw [typeIIProductIntervalMatrix, productDyadicIntervalMatrix_apply]
  change
    (if interval.base.lower ≤ leftIndex left * rightIndex right ∧
        leftIndex left * rightIndex right ≤ interval.base.upper then 1 else 0) =
      if leftIndex left * rightIndex right ∈ interval.base.carrier then 1 else 0
  simp only [TypeIIDyadicInterval.mem_carrier_iff]

/-- A shell interval matrix is exactly the sum of its product-fiber
increments. -/
@[surface_novel, surface_published]
theorem typeIIProductIntervalMatrix_eq_sum_fibers {N q : ℕ}
    {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (interval : TypeIIProductDyadicInterval N q) :
    typeIIProductIntervalMatrix leftIndex rightIndex interval =
      ∑ n ∈ interval.carrier,
        productFiberIncrementMatrix leftIndex rightIndex n := by
  exact productDyadicIntervalMatrix_eq_sum_fibers
    leftIndex rightIndex interval.base

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
  exact bilinearMatrixPairing_dyadicInterval_eq_sum_fibers
    leftIndex rightIndex left right interval.base

end

end Surface.Core.TypeII

end
```
