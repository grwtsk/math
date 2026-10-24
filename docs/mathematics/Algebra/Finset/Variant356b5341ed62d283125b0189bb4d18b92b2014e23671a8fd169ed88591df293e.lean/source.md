# Complete source: GRWTSK.Algebra.Finset.Variant356b5341ed62d283125b0189bb4d18b92b2014e23671a8fd169ed88591df293e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9698ac2ee37baa5fbfa0a7a870c8a1378f147ef7` · SHA-256 `2d5925e1c55a691fb2e71f13217f242b080368fc73e2a3b52ade5a324f8c3fd4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Scalar.Variant84dfc524443d5891b2fe06ec3d17ca574be29e709ee9954728e678ac59a32ad8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84dfc524443d5891b2fe06ec3d17ca574be29e709ee9954728e678ac59a32ad8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Scalar.Variant84dfc524443d5891b2fe06ec3d17ca574be29e709ee9954728e678ac59a32ad8","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"84dfc524443d5891b2fe06ec3d17ca574be29e709ee9954728e678ac59a32ad8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Action/Pointwise/Finset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Pointwise.Finset.Scalar
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Group.Pointwise.Finset.Basic

/-!
# Pointwise actions on sets in a ring

This file proves properties of pointwise actions on sets in a ring.

## Tags

set multiplication, set addition, pointwise addition, pointwise multiplication,
pointwise subtraction
-/


namespace GRWTSK.Algebra.Scalar.Variant84dfc524443d5891b2fe06ec3d17ca574be29e709ee9954728e678ac59a32ad8

open scoped Pointwise

variable {R G : Type*}

namespace Finset
variable [Ring R] [AddCommGroup G] [Module R G] [DecidableEq G] {s : Finset R} {t : Finset G}
  {a : R}

@[simp] lemma neg_smul_finset : -a • t = -(a • t) := by
  simp only [← image_smul, ← image_neg_eq_neg, image_image, neg_smul, Function.comp_def]

@[simp] protected lemma neg_smul [DecidableEq R] : -s • t = -(s • t) := by
  simp_rw [← image_neg_eq_neg]
  exact image₂_image_left_comm neg_smul

end Finset
```
