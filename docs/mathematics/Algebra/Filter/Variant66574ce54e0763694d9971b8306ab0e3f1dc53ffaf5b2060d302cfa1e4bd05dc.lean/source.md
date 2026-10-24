# Complete source: GRWTSK.Algebra.Filter.Variant66574ce54e0763694d9971b8306ab0e3f1dc53ffaf5b2060d302cfa1e4bd05dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aabbf5bc60c114009c8bb6a9019295e45bd45ad9` · SHA-256 `90cd5c291acf6bbca19b7654deef45fc85c239b5839daf0db01c4770017ee61e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.EventuallyConstOfIsNoetherian.Variant855ddf610f8bac3ce202ca5475971fcc8ff0ed071a347d025bf72498e130dc03","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"855ddf610f8bac3ce202ca5475971fcc8ff0ed071a347d025bf72498e130dc03","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.EventuallyConstOfIsNoetherian.Variant855ddf610f8bac3ce202ca5475971fcc8ff0ed071a347d025bf72498e130dc03","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"855ddf610f8bac3ce202ca5475971fcc8ff0ed071a347d025bf72498e130dc03","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Noetherian/Filter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro, Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kevin Buzzard
-/
module

public import Mathlib.Order.Filter.EventuallyConst
public import Mathlib.RingTheory.Noetherian.Defs

/-!
# Noetherian modules and finiteness of chains

## Main results

Let `R` be a ring and let `M` be an `R`-module.

* `eventuallyConst_of_isNoetherian`: an ascending chain of submodules in a
  Noetherian module is eventually constant

## References

* [M. F. Atiyah and I. G. Macdonald, *Introduction to commutative algebra*][atiyah-macdonald]
* [P. Samuel, *Algebraic Theory of Numbers*][samuel1967]

## Tags

Noetherian, noetherian, Noetherian ring, Noetherian module, noetherian ring, noetherian module

-/


namespace GRWTSK.Algebra.EventuallyConstOfIsNoetherian.Variant855ddf610f8bac3ce202ca5475971fcc8ff0ed071a347d025bf72498e130dc03

public section


open Filter

open IsNoetherian Submodule

section Semiring

variable {R M : Type*} [Semiring R] [AddCommMonoid M] [Module R M]

theorem eventuallyConst_of_isNoetherian [IsNoetherian R M] (f : ℕ →o Submodule R M) :
    atTop.EventuallyConst f := by
  simp_rw [eventuallyConst_atTop, eq_comm]
  exact (monotone_stabilizes_iff_noetherian.mpr inferInstance) f

end Semiring
```
