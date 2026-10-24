# Complete source: GRWTSK.Algebra.GroupTheory.IsCommutative.Variant66bb96164ffe0a3b4b882e7c1feeb78c7686461c4f223f476c3a66b94a59fe90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb00602fb869f48fbeea6812fe51d8d2e0dcae47` · SHA-256 `e2f19477285a2be668a42fe4335ec9aaaef536cefca96f3761cec1024fb30fd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Group.Variantc552d5ffe47c1234faf8aef9d43b4095cb8ab5c4e6d50bd96e9d47324592b161","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c552d5ffe47c1234faf8aef9d43b4095cb8ab5c4e6d50bd96e9d47324592b161","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Group.Variantc552d5ffe47c1234faf8aef9d43b4095cb8ab5c4e6d50bd96e9d47324592b161","mathematical_subject":"Algebra.Groups","original_sha256":"c552d5ffe47c1234faf8aef9d43b4095cb8ab5c4e6d50bd96e9d47324592b161","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/IsCommutative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Simon Hudon, Mario Carneiro
-/
module

public import Mathlib.Algebra.Group.Defs

/-!
# Commutative structures from unbundled commutativity

This file provides scoped instances that promote algebraic structures satisfying
`IsMulCommutative` or `IsAddCommutative` to their bundled commutative counterparts.
-/


namespace GRWTSK.Algebra.GroupTheory.Group.Variantc552d5ffe47c1234faf8aef9d43b4095cb8ab5c4e6d50bd96e9d47324592b161

@[expose] public section

assert_not_exists MonoidWithZero DenselyOrdered Function.const_injective

open Function

variable {G : Type*}

namespace IsMulCommutative

/-- A magma which `IsMulCommutative` is a `CommMagma`.

This is primarily used to deduce the bundled version from the unbundled one for commutative
subobjects in a noncommutative ambient type. As such this is only available inside the
`IsMulCommutative` scope so as to avoid deleterious effects to type class synthesis for bundled
commutativity.

See note [commutative subobjects]. -/
@[to_additive
/-- An additive magma which `IsMulCommutative` is a `AddCommMagma`.

This is primarily used to deduce the bundled version from the unbundled one for commutative
subobjects in a noncommutative ambient type. As such this is only available inside the
`IsMulCommutative` scope so as to avoid deleterious effects to type class synthesis for bundled
commutativity.

See note [commutative subobjects]. -/ ]
scoped instance (priority := 50) {M : Type*} [Mul M] [IsMulCommutative M] : CommMagma M where
  mul_comm := mul_comm'

/-- A `Semigroup` which `IsMulCommutative` is a `CommSemigroup`.

This is primarily used to deduce the bundled version from the unbundled one for commutative
subobjects in a noncommutative ambient type. As such this is only available inside the
`IsMulCommutative` scope so as to avoid deleterious effects to type class synthesis for bundled
commutativity.

See note [commutative subobjects]. -/
@[to_additive
/-- An `AddSemigroup` which `IsMulCommutative` is a `AddCommSemigroup`.

This is primarily used to deduce the bundled version from the unbundled one for commutative
subobjects in a noncommutative ambient type. As such this is only available inside the
`IsMulCommutative` scope so as to avoid deleterious effects to type class synthesis for bundled
commutativity.

See note [commutative subobjects]. -/ ]
scoped instance (priority := 50) {M : Type*} [Semigroup M] [IsMulCommutative M] :
    CommSemigroup M where

/-- A `Monoid` which `IsMulCommutative` is a `CommMonoid`.

This is primarily used to deduce the bundled version from the unbundled one for commutative
subobjects in a noncommutative ambient type. As such this is only available inside the
`IsMulCommutative` scope so as to avoid deleterious effects to type class synthesis for bundled
commutativity.

See note [commutative subobjects]. -/
@[to_additive
/-- A `AddMonoid` which `IsMulCommutative` is a `AddCommMonoid`.

This is primarily used to deduce the bundled version from the unbundled one for commutative
subobjects in a noncommutative ambient type. As such this is only available inside the
`IsMulCommutative` scope so as to avoid deleterious effects to type class synthesis for bundled
commutativity.

See note [commutative subobjects]. -/ ]
scoped instance (priority := 50) {M : Type*} [Monoid M] [IsMulCommutative M] :
    CommMonoid M where

/-- A `DivisionMonoid` which `IsMulCommutative` is a `DivisionCommMonoid`.

This is primarily used to deduce the bundled version from the unbundled one for commutative
subobjects in a noncommutative ambient type. As such this is only available inside the
`IsMulCommutative` scope so as to avoid deleterious effects to type class synthesis for bundled
commutativity.

See note [commutative subobjects]. -/
@[to_additive
/-- A `SubtractionMonoid` which `IsMulCommutative` is a `SubtractionCommMonoid`.

This is primarily used to deduce the bundled version from the unbundled one for commutative
subobjects in a noncommutative ambient type. As such this is only available inside the
`IsMulCommutative` scope so as to avoid deleterious effects to type class synthesis for bundled
commutativity.

See note [commutative subobjects]. -/ ]
scoped instance (priority := 50) {M : Type*} [DivisionMonoid M] [IsMulCommutative M] :
    DivisionCommMonoid M where

/-- A `Group` which `IsMulCommutative` is a `CommGroup`.

This is primarily used to deduce the bundled version from the unbundled one for commutative
subobjects in a noncommutative ambient type. As such this is only available inside the
`IsMulCommutative` scope so as to avoid deleterious effects to type class synthesis for bundled
commutativity.

See note [commutative subobjects]. -/
@[to_additive
/-- An `AddGroup` which `IsMulCommutative` is a `AddCommGroup`.

This is primarily used to deduce the bundled version from the unbundled one for commutative
subobjects in a noncommutative ambient type. As such this is only available inside the
`IsMulCommutative` scope so as to avoid deleterious effects to type class synthesis for bundled
commutativity.

See note [commutative subobjects]. -/ ]
scoped instance (priority := 50) {G : Type*} [Group G] [IsMulCommutative G] :
    CommGroup G where

end IsMulCommutative
```
