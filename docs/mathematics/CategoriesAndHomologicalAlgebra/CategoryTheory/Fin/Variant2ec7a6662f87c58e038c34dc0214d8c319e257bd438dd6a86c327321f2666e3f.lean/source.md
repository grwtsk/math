# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Fin.Variant2ec7a6662f87c58e038c34dc0214d8c319e257bd438dd6a86c327321f2666e3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12ebf658fad15c62018d76a0cc30876f60851b21` · SHA-256 `1e8f48ac8628fd1d63305da1f3cd5e632ff7dbde43ba5853592399f11d1641f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsInitialZero.Varianta8b040372b4948c285b062ee7f800d598be4adea2074188a04b038b08b13d32c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a8b040372b4948c285b062ee7f800d598be4adea2074188a04b038b08b13d32c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsInitialZero.Varianta8b040372b4948c285b062ee7f800d598be4adea2074188a04b038b08b13d32c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a8b040372b4948c285b062ee7f800d598be4adea2074188a04b038b08b13d32c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Shapes/Preorder/Fin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Limits.Shapes.IsTerminal
import Mathlib.Order.Fin.Basic

/-!
# Limits and colimits indexed by `Fin`

In this file, we show that `0 : Fin (n + 1)` is an initial object
and `Fin.last n` is a terminal object. This allows to compute
limits and colimits indexed by `Fin (n + 1)`, see
`limitOfDiagramInitial` and `colimitOfDiagramTerminal`
in the file `Limits.Shapes.IsTerminal`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsInitialZero.Varianta8b040372b4948c285b062ee7f800d598be4adea2074188a04b038b08b13d32c

universe v v' u u' w

open CategoryTheory Limits

namespace Fin

variable (n : ℕ)

/-- `0` is an initial object in `Fin n` when `n ≠ 0`. -/
def isInitialZero [NeZero n] : IsInitial (0 : Fin n) := isInitialBot

/-- `Fin.last n` is a terminal object in `Fin (n + 1)`. -/
def isTerminalLast : IsTerminal (Fin.last n) := isTerminalTop

end Fin
```
