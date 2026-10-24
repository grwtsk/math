# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Cardinal.Variant3feed1cfa94fde19344811c29acdd19c9f9145fa0477f4ddf350941b2e56339f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `070c346dc8206d32b59633e1fed1755c7d20082b` · SHA-256 `73d44b5a4ccf55a1df3d4e2a5a2c46c5b3b03db210ccf6a3d96aff67bfbfbc57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.CardinalMkEqMax.Variant73b928ce2dc9bc95ccaf90ce20d4dd0fce001d2383bc97941be99d4ad074c7b0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"73b928ce2dc9bc95ccaf90ce20d4dd0fce001d2383bc97941be99d4ad074c7b0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.CardinalMkEqMax.Variant73b928ce2dc9bc95ccaf90ce20d4dd0fce001d2383bc97941be99d4ad074c7b0","mathematical_subject":"Algebra.Polynomials","original_sha256":"73b928ce2dc9bc95ccaf90ce20d4dd0fce001d2383bc97941be99d4ad074c7b0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Polynomial/Cardinal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Chris Hughes, Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Junyan Xu
-/
module

public import Mathlib.Algebra.MonoidAlgebra.Cardinal
public import Mathlib.Algebra.Polynomial.Basic
public import Mathlib.SetTheory.Cardinal.Finsupp

/-!
# Cardinality of Polynomial Ring

The result in this file is that the cardinality of `R[X]` is at most the maximum
of `#R` and `ℵ₀`.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.CardinalMkEqMax.Variant73b928ce2dc9bc95ccaf90ce20d4dd0fce001d2383bc97941be99d4ad074c7b0

public section

open Cardinal

universe u v
variable {R : Type u} [Semiring R]

namespace Polynomial

@[simp]
lemma cardinalMk_eq_max {R : Type u} [Semiring R] [Nontrivial R] : #(R[X]) = max #R ℵ₀ := by
  simp [(toFinsuppIso R).toEquiv.cardinal_eq]

lemma cardinalMk_le_max {R : Type u} [Semiring R] : #(R[X]) ≤ max #R ℵ₀ := by
  cases subsingleton_or_nontrivial R
  · exact (mk_eq_one _).trans_le (le_max_of_le_right one_le_aleph0)
  · exact cardinalMk_eq_max.le

end Polynomial
```
