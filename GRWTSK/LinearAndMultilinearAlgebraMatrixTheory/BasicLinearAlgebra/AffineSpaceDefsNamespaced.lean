-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.AddTorsor.Variant5b5b572d2efdcf6626d615a48a295feb8d9e18815798d9f1fe5398313172ec68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5b5b572d2efdcf6626d615a48a295feb8d9e18815798d9f1fe5398313172ec68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.AddTorsor.Variant5b5b572d2efdcf6626d615a48a295feb8d9e18815798d9f1fe5398313172ec68","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"5b5b572d2efdcf6626d615a48a295feb8d9e18815798d9f1fe5398313172ec68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/AffineSpace/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers
-/
import Mathlib.Algebra.AddTorsor.Defs

/-!
# Affine space

In this file we introduce the following notation:

* `AffineSpace V P` is an alternative notation for `AddTorsor V P` introduced at the end of this
  file.

We tried to use an `abbreviation` instead of a `notation` but this led to hard-to-debug elaboration
errors. So, we introduce a localized notation instead. When this notation is enabled with
`open Affine`, Lean will use `AffineSpace` instead of `AddTorsor` both in input and in the
proof state.

Here is an incomplete list of notions related to affine spaces, all of them are defined in other
files:

* `AffineMap`: a map between affine spaces that preserves the affine structure;
* `AffineEquiv`: an equivalence between affine spaces that preserves the affine structure;
* `AffineSubspace`: a subset of an affine space closed w.r.t. affine combinations of points;
* `AffineCombination`: an affine combination of points;
* `AffineIndependent`: affine independent set of points;
* `AffineBasis.coord`: the barycentric coordinate of a point.

## TODO

Some key definitions are not yet present.

* Affine frames.  An affine frame might perhaps be represented as an `AffineEquiv` to a `Finsupp`
  (in the general case) or function type (in the finite-dimensional case) that gives the
  coordinates, with appropriate proofs of existence when `k` is a field.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.AddTorsor.Variant5b5b572d2efdcf6626d615a48a295feb8d9e18815798d9f1fe5398313172ec68

assert_not_exists MonoidWithZero

@[inherit_doc] scoped[Affine] notation "AffineSpace" => AddTorsor
