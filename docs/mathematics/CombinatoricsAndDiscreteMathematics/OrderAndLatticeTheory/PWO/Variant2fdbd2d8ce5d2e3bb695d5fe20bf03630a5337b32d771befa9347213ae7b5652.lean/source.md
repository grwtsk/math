# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PWO.Variant2fdbd2d8ce5d2e3bb695d5fe20bf03630a5337b32d771befa9347213ae7b5652

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4794b3f665d76e041ca537518839c4b8e2069df7` · SHA-256 `d26a7951747947a6940f7f2fd597e00e48645b13f0e2423fab3580efa0ab4ef9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Finsupp.Variantef4d9284efd5a59f2f1acfb14fd6890a21e974972aa8c56dca647d3400222475","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef4d9284efd5a59f2f1acfb14fd6890a21e974972aa8c56dca647d3400222475","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.Finsupp.Variantef4d9284efd5a59f2f1acfb14fd6890a21e974972aa8c56dca647d3400222475","mathematical_subject":"Algebra.OrderTheory","original_sha256":"ef4d9284efd5a59f2f1acfb14fd6890a21e974972aa8c56dca647d3400222475","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Finsupp/PWO.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
module

public import Mathlib.Order.Preorder.Finsupp
public import Mathlib.Order.WellQuasiOrder

/-!
# Partial well ordering on finsupps

This file contains the fact that finitely supported functions from a fintype are
partially well-ordered when the codomain is a linear order that is well ordered.
It is in a separate file for now so as to not add imports to the file `Order.WellFoundedSet`.

## Main statements

* `Finsupp.isPWO` - finitely supported functions from a fintype are partially well-ordered when
  the codomain is a linear order that is well ordered

## Tags

Dickson, order, partial well order
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Finsupp.Variantef4d9284efd5a59f2f1acfb14fd6890a21e974972aa8c56dca647d3400222475

public section
/-- A version of **Dickson's lemma**: `σ →₀ α` is well-quasi-ordered when `σ` is `Finite` and `α` is
well-quasi-ordered.
This version uses finsupps on a finite type as it is intended for use with `MVPowerSeries`.
-/
instance Finsupp.wellQuasiOrderedLE {α σ : Type*} [Zero α] [Preorder α] [WellQuasiOrderedLE α]
    [Finite σ] : WellQuasiOrderedLE (σ →₀ α) :=
  orderIsoFunOnFinite.wellQuasiOrderedLE_iff.2 inferInstance
```
