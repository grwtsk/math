# Complete source: GRWTSK.Algebra.Defs.Variantb66a07f3efdbc69a2f5828627314ffdcacd08f0de4474281cf13d8c0e0c9c5d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66928f6717c2900d7f60a2189f1870179f92dad8` · SHA-256 `91a56c0cc78b82c7e16baba7ae7f86746caa343dc2e5a7d30f398e92957f3d07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.AlgebraIsCentral.Variant273ef235944898b36833ea17646bc6ece060bcebb62cee46d3f2df3c7f273e86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"273ef235944898b36833ea17646bc6ece060bcebb62cee46d3f2df3c7f273e86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.AlgebraIsCentral.Variant273ef235944898b36833ea17646bc6ece060bcebb62cee46d3f2df3c7f273e86","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"273ef235944898b36833ea17646bc6ece060bcebb62cee46d3f2df3c7f273e86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Central/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/

import Mathlib.Algebra.Algebra.Subalgebra.Lattice

/-!
# Central Algebras

In this file we define the predicate `Algebra.IsCentral K D` where `K` is a commutative ring and `D`
is a (not necessarily commutative) `K`-algebra.

## Main definitions

- `Algebra.IsCentral K D` : `D` is a central algebra over `K` iff the center of `D` is exactly `K`.

## Implementation notes

We require the `K`-center of `D` to be smaller than or equal to the smallest subalgebra so that when
we prove something is central, we don't need to prove `⊥ ≤ center K D` even though this
direction is trivial.

### Central Simple Algebras

To define central simple algebras, we could do the following:
```lean
class Algebra.IsCentralSimple (K : Type u) [Field K] (D : Type v) [Ring D] [Algebra K D] where
  [is_central : IsCentral K D]
  [is_simple : IsSimpleRing D]
```
but an instance of `[Algebra.IsCentralSimple K D]` would not imply `[IsSimpleRing D]` because of
synthesization orders (`K` cannot be inferred). Thus, to obtain a central simple `K`-algebra `D`,
one should use `Algebra.IsCentral K D` and `IsSimpleRing D` separately.

Note that the predicate `Algebra.IsCentral K D` and `IsSimpleRing D` makes sense just for `K` a
`CommRing` but it doesn't give the right definition for central simple algebra; for a commutative
ring base, one should use the theory of Azumaya algebras. In fact ideals of `K` immediately give
rise to nontrivial quotients of `D` so there are no central simple algebras in this case according
to our definition, if `K` is not a field.
The theory of central simple algebras really is a theory over fields.

Thus to declare a central simple algebra, one should use the following:
```lean
variable (k D : Type*) [Field k] [Ring D] [Algebra k D]
variable [Algebra.IsCentral k D] [IsSimpleRing D]
variable [FiniteDimensional k D]
```
where `FiniteDimensional k D` is almost always assumed in most references, but some results do not
need this assumption.

## Tags
central algebra, center, simple ring, central simple algebra

-/


namespace GRWTSK.Algebra.AlgebraIsCentral.Variant273ef235944898b36833ea17646bc6ece060bcebb62cee46d3f2df3c7f273e86

universe u v

/--
For a commutative ring `K` and a `K`-algebra `D`, we say that `D` is a central algebra over `K` if
the center of `D` is the image of `K` in `D`.
-/
class Algebra.IsCentral
    (K : Type u) [CommSemiring K] (D : Type v) [Semiring D] [Algebra K D] : Prop where
  out : Subalgebra.center K D ≤ ⊥
````
