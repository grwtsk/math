# Complete source: GRWTSK.Algebra.LinearAlgebra.Defs.Variant42ac94e76de000f8fecbd323f910b9cf9d51b42933868f887b15ae1bfc875797

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bba7874d05a01bb6ec83586b5d0f40be1d770d49` · SHA-256 `95c0f0becec8c9c6e26d4dddef850fd32e91d27368ba05a3267d4f88e90e9c2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IsArtinian.Variant7d74a6ff8cb2f1b4dd6e93c5c894c1ee6ef648597ea732410514498b35721ab3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d74a6ff8cb2f1b4dd6e93c5c894c1ee6ef648597ea732410514498b35721ab3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IsArtinian.Variant7d74a6ff8cb2f1b4dd6e93c5c894c1ee6ef648597ea732410514498b35721ab3","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"7d74a6ff8cb2f1b4dd6e93c5c894c1ee6ef648597ea732410514498b35721ab3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Artinian/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
module

public import Mathlib.Algebra.Module.Submodule.Defs

/-!
# Artinian rings and modules

A module satisfying these equivalent conditions is said to be an *Artinian* R-module
if every decreasing chain of submodules is eventually constant, or equivalently,
if the relation `<` on submodules is well founded.

A ring is said to be left (or right) Artinian if it is Artinian as a left (or right) module over
itself, or simply Artinian if it is both left and right Artinian.

## Main definitions

Let `R` be a ring and let `M` and `P` be `R`-modules. Let `N` be an `R`-submodule of `M`.

* `IsArtinian R M` is the proposition that `M` is an Artinian `R`-module. It is a class,
  implemented as the predicate that the `<` relation on submodules is well founded.
* `IsArtinianRing R` is the proposition that `R` is a left Artinian ring.

## References

* [M. F. Atiyah and I. G. Macdonald, *Introduction to commutative algebra*][atiyah-macdonald]
* [P. Samuel, *Algebraic Theory of Numbers*][samuel1967]

## Tags

Artinian, artinian, Artinian ring, Artinian module, artinian ring, artinian module

-/


namespace GRWTSK.Algebra.LinearAlgebra.IsArtinian.Variant7d74a6ff8cb2f1b4dd6e93c5c894c1ee6ef648597ea732410514498b35721ab3

public section

/-- `IsArtinian R M` is the proposition that `M` is an Artinian `R`-module,
implemented as the well-foundedness of submodule inclusion. -/
abbrev IsArtinian (R M) [Semiring R] [AddCommMonoid M] [Module R M] : Prop :=
  WellFoundedLT (Submodule R M)

@[deprecated "this is definitionally true" (since := "2026-09-07")]
theorem isArtinian_iff (R M) [Semiring R] [AddCommMonoid M] [Module R M] : IsArtinian R M ↔
    WellFounded (· < · : Submodule R M → Submodule R M → Prop) :=
  .rfl

/-- If `∀ I > J, P I` implies `P J`, then `P` holds for all submodules. -/
theorem IsArtinian.induction {R M} [Semiring R] [AddCommMonoid M] [Module R M] [IsArtinian R M]
    {P : Submodule R M → Prop} (hgt : ∀ I, (∀ J < I, P J) → P I) (I : Submodule R M) : P I :=
  WellFoundedLT.induction I hgt

-- See `Mathlib/RingTheory/Artinian/Ring.lean`
assert_not_exists IsLocalization IsLocalRing

/-- A ring is Artinian if it is Artinian as a module over itself.

Strictly speaking, this should be called `IsLeftArtinianRing` but we omit the `Left` for
convenience in the commutative case. For a right Artinian ring, use `IsArtinian Rᵐᵒᵖ R`.

For equivalent definitions, see `Mathlib/RingTheory/Artinian/Ring.lean`.
-/
@[stacks 00J5]
abbrev IsArtinianRing (R) [Semiring R] :=
  IsArtinian R R

theorem isArtinianRing_iff {R} [Semiring R] : IsArtinianRing R ↔ IsArtinian R R := Iff.rfl
```
