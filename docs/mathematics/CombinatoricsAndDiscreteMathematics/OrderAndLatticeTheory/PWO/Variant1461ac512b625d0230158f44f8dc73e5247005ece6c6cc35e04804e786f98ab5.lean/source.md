# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PWO.Variant1461ac512b625d0230158f44f8dc73e5247005ece6c6cc35e04804e786f98ab5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33eef948f80285b45ecb6192a555a26e93a34941` · SHA-256 `47873448bc6490f39fc0b10d4637777bb27dc07704d0497b11de9e5afb9765ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FinsuppIsPWO.Variant5dedf846b92f7e30860fbdf2a6b40c4b272da453e7c29eac1cbcc04ab746786e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5dedf846b92f7e30860fbdf2a6b40c4b272da453e7c29eac1cbcc04ab746786e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.FinsuppIsPWO.Variant5dedf846b92f7e30860fbdf2a6b40c4b272da453e7c29eac1cbcc04ab746786e","mathematical_subject":"Algebra.OrderTheory","original_sha256":"5dedf846b92f7e30860fbdf2a6b40c4b272da453e7c29eac1cbcc04ab746786e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finsupp/PWO.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
import Mathlib.Data.Finsupp.Order
import Mathlib.Order.WellFoundedSet

/-!
# Partial well ordering on finsupps

This file contains the fact that finitely supported functions from a fintype are
partially well ordered when the codomain is a linear order that is well ordered.
It is in a separate file for now so as to not add imports to the file `Order.WellFoundedSet`.

## Main statements

* `Finsupp.isPWO` - finitely supported functions from a fintype are partially well ordered when
  the codomain is a linear order that is well ordered

## Tags

Dickson, order, partial well order
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FinsuppIsPWO.Variant5dedf846b92f7e30860fbdf2a6b40c4b272da453e7c29eac1cbcc04ab746786e

/-- A version of **Dickson's lemma** any subset of functions `σ →₀ α` is partially well
ordered, when `σ` is `Finite` and `α` is a linear well order.
This version uses finsupps on a finite type as it is intended for use with `MVPowerSeries`.
-/
theorem Finsupp.isPWO {α σ : Type*} [Zero α] [LinearOrder α] [WellFoundedLT α] [Finite σ]
    (S : Set (σ →₀ α)) : S.IsPWO :=
  Finsupp.equivFunOnFinite.symm_image_image S ▸
    Set.PartiallyWellOrderedOn.image_of_monotone_on (Pi.isPWO _) fun _a _b _ha _hb => id
```
