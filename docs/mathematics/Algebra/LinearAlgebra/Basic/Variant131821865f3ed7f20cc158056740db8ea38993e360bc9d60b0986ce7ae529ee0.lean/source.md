# Complete source: GRWTSK.Algebra.LinearAlgebra.Basic.Variant131821865f3ed7f20cc158056740db8ea38993e360bc9d60b0986ce7ae529ee0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43b6dd4255b2eb512ae85da7756e772ec4fd50c3` · SHA-256 `75e93c8b51062ab234c565e15adacc1489726fdfef52cd20804a39497e3ae881`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LeftPreLieRing.Variant64e1470bc5db964f5ef3ee1e661abf518638bd9acf0122ef64e2abf76f63d0ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64e1470bc5db964f5ef3ee1e661abf518638bd9acf0122ef64e2abf76f63d0ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LeftPreLieRing.Variant64e1470bc5db964f5ef3ee1e661abf518638bd9acf0122ef64e2abf76f63d0ba","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"64e1470bc5db964f5ef3ee1e661abf518638bd9acf0122ef64e2abf76f63d0ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/NonAssoc/PreLie/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Nikolas Tapia. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nikolas Tapia
-/
module

public import Mathlib.Algebra.Module.Opposite
public import Mathlib.Algebra.Ring.Associator
/-!
# Pre-Lie rings and algebras

In this file we introduce left and right pre-Lie rings, defined as a `NonUnitalNonAssocRing` where
the associator `associator x y z := (x * y) * z - x * (y * z)` is left or right symmetric,
respectively.

We prove that every `Left(Right)PreLieRing L` is a `Right(Left)PreLieRing L` with
the opposite `mul`. The equivalence is simple given by `op : L ≃* Lᵐᵒᵖ`.

Everything holds for the algebra versions where `L` is also an `R`-Module over a commutative ring
`R`.

## Main definitions
  All are a defined as a `NonUnitalNonAssocRing` whose `associator` satisfies an identity.
  * `LeftPreLieRing`
  * `RightPreLieRing`
  * `LeftPreLieAlgebra`
  * `RightPreLieAlgebra`

## Main results
  * Every `LeftPreLieRing` is a `RightPreLieRing` with the opposite multiplication.

## Implementation notes
There are left and right versions of the structures, equivalent via `ᵐᵒᵖ`.
Perhaps one could be favored but there is no real reason to.

## References
[F. Chapoton, M. Livernet, *Pre-Lie algebras and the rooted trees operad*][chapoton_livernet_2001]
[D. Manchon, *A short survey on pre-Lie algebras*][manchon_2011]
[J.-M. Oudom, D. Guin, *On the Lie enveloping algebra of a pre-Lie algebra*][oudom_guin_2008]
<https://ncatlab.org/nlab/show/pre-Lie+algebra>
-/


namespace GRWTSK.Algebra.LinearAlgebra.LeftPreLieRing.Variant64e1470bc5db964f5ef3ee1e661abf518638bd9acf0122ef64e2abf76f63d0ba

public section

/-- `LeftPreLieRing`s are `NonUnitalNonAssocRing`s such that the `associator` is symmetric in the
first two variables. -/
@[ext]
class LeftPreLieRing (L : Type*) extends NonUnitalNonAssocRing L where
  assoc_symm' (x y z : L) : associator x y z = associator y x z

/-- `RightPreLieRing`s are `NonUnitalNonAssocRing`s such that the `associator` is symmetric in the
last two variables. -/
@[ext]
class RightPreLieRing (L : Type*) extends NonUnitalNonAssocRing L where
  assoc_symm' (x y z : L) : associator x y z = associator x z y

section algebras

variable (R : Type*) [CommRing R]

/-- A `LeftPreLieAlgebra` is a `LeftPreLieRing` with an action of a `CommRing` satisfying
`r • x * y = r • (x * y)` and ` x * (r • y) = r • (x * y)`. -/
@[ext]
class LeftPreLieAlgebra (L : Type*) [LeftPreLieRing L] : Type _ extends
  Module R L, IsScalarTower R L L, SMulCommClass R L L

/-- A `RightPreLieAlgebra` is a `RightPreLieRing` with an action of a `CommRing` satisfying
`r • x * y = r • (x * y)` and ` x * (r • y) = r • (x * y)`. -/
@[ext]
class RightPreLieAlgebra (L : Type*) [RightPreLieRing L] : Type _ extends
  Module R L, IsScalarTower R L L, SMulCommClass R L L

end algebras

variable {R L : Type*} [CommRing R]

namespace LeftPreLieRing

variable [LeftPreLieRing L]

theorem assoc_symm (x y z : L) :
    associator x y z = associator y x z := LeftPreLieRing.assoc_symm' x y z

/-- Every left pre-Lie ring is a right pre-Lie ring with the opposite multiplication -/
instance : RightPreLieRing Lᵐᵒᵖ where
  assoc_symm' x y z := by
    simp [assoc_symm]

end LeftPreLieRing

namespace LeftPreLieAlgebra

variable [LeftPreLieRing L] [LeftPreLieAlgebra R L]

/-- Every left pre-Lie algebra is a right pre-Lie algebra with the opposite multiplication -/
instance : RightPreLieAlgebra R Lᵐᵒᵖ where

end LeftPreLieAlgebra

namespace RightPreLieRing

variable [RightPreLieRing L]

theorem assoc_symm (x y z : L) :
    associator x y z = associator x z y := RightPreLieRing.assoc_symm' x y z

/-- Every left pre-Lie ring is a right pre-Lie ring with the opposite multiplication -/
instance : LeftPreLieRing Lᵐᵒᵖ where
  assoc_symm' x y z := by
    simp [assoc_symm]

end RightPreLieRing

namespace RightPreLieAlgebra

variable [RightPreLieRing L] [RightPreLieAlgebra R L]

/-- Every left pre-Lie algebra is a right pre-Lie algebra with the opposite multiplication -/
instance : LeftPreLieAlgebra R Lᵐᵒᵖ where

end RightPreLieAlgebra
```
