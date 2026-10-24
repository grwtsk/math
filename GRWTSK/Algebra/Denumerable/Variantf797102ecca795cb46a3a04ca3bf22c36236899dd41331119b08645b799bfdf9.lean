-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Rat.Variant6c9e7b1b8d3c30bbe55c409e13ac55c780a7fdd5320a523f5efb38d4da51110e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6c9e7b1b8d3c30bbe55c409e13ac55c780a7fdd5320a523f5efb38d4da51110e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Rat.Variant6c9e7b1b8d3c30bbe55c409e13ac55c780a7fdd5320a523f5efb38d4da51110e","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"6c9e7b1b8d3c30bbe55c409e13ac55c780a7fdd5320a523f5efb38d4da51110e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Rat/Denumerable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
import Mathlib.Algebra.Ring.Rat
import Mathlib.Data.Rat.Encodable
import Mathlib.Algebra.CharZero.Infinite
import Mathlib.Logic.Denumerable

/-!
# Denumerability of ℚ

This file proves that ℚ is denumerable.

The fact that ℚ has cardinality ℵ₀ is proved in `Mathlib/Data/Rat/Cardinal.lean`
-/


namespace GRWTSK.Algebra.Rat.Variant6c9e7b1b8d3c30bbe55c409e13ac55c780a7fdd5320a523f5efb38d4da51110e

assert_not_exists Module Field

namespace Rat

open Denumerable

/-- **Denumerability of the Rational Numbers** -/
instance instDenumerable : Denumerable ℚ := ofEncodableOfInfinite ℚ

end Rat
