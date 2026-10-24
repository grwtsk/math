# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.InverseTriangleSum.Variant3a713f731eaf12ab9bd07534004bae4fadbb11349218dbf48a5948f7a2c284c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc1fb63054577014013c2b2b4ede24544a30cdee` · SHA-256 `448f970fb30a6883b533205705220537a6fad0cfabf866c6de9e45552f3e6f7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Theorem100InverseTriangleSum.Variant7899b135ad54403566cc563a2a015fd59c2b424c42a8d7dabee78b45a299bd11","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7899b135ad54403566cc563a2a015fd59c2b424c42a8d7dabee78b45a299bd11","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.Theorem100InverseTriangleSum.Variant7899b135ad54403566cc563a2a015fd59c2b424c42a8d7dabee78b45a299bd11","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"7899b135ad54403566cc563a2a015fd59c2b424c42a8d7dabee78b45a299bd11","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Archive/Wiedijk100Theorems/InverseTriangleSum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jalex Stark, Yury Kudryashov
-/
import Mathlib.Algebra.BigOperators.Basic
import Mathlib.Data.Real.Basic


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Theorem100InverseTriangleSum.Variant7899b135ad54403566cc563a2a015fd59c2b424c42a8d7dabee78b45a299bd11

#align_import wiedijk_100_theorems.inverse_triangle_sum from "leanprover-community/mathlib"@"5563b1b49e86e135e8c7b556da5ad2f5ff881cad"

/-!
# Sum of the Reciprocals of the Triangular Numbers

This file proves Theorem 42 from the [100 Theorems List](https://www.cs.ru.nl/~freek/100/).

We interpret “triangular numbers” as naturals of the form $\frac{k(k+1)}{2}$ for natural `k`.
We prove that the sum of the reciprocals of the first `n` triangular numbers is $2 - \frac2n$.

## Tags

discrete_sum
-/


open scoped BigOperators

open Finset

/-- **Sum of the Reciprocals of the Triangular Numbers** -/
theorem Theorem100.inverse_triangle_sum :
    ∀ n, ∑ k in range n, (2 : ℚ) / (k * (k + 1)) = if n = 0 then 0 else 2 - (2 : ℚ) / n := by
  refine' sum_range_induction _ _ (if_pos rfl) _
  rintro (_ | n)
  · rw [if_neg, if_pos] <;> norm_num
  simp_rw [if_neg (Nat.succ_ne_zero _), Nat.succ_eq_add_one]
  have A : (n + 1 + 1 : ℚ) ≠ 0 := by norm_cast; norm_num
  push_cast
  field_simp
  ring
#align theorem_100.inverse_triangle_sum Theorem100.inverse_triangle_sum
```
