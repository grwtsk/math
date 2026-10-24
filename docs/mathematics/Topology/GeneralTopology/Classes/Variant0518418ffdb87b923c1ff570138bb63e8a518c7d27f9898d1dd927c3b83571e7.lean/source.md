# Complete source: GRWTSK.Topology.GeneralTopology.Classes.Variant0518418ffdb87b923c1ff570138bb63e8a518c7d27f9898d1dd927c3b83571e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b842079ae9aa2747506332d1b6be775898c35902` · SHA-256 `e5613d4d43d6a54411615a67ab25cff2078a78fbc23eb1e761e9620456bbe2b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.NonUnitalCStarAlgebra.Variant4c4df77d40d71b3b3e0058720dce489e704789582f0ebb4ce464b3d5d4cfae6b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c4df77d40d71b3b3e0058720dce489e704789582f0ebb4ce464b3d5d4cfae6b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.NonUnitalCStarAlgebra.Variant4c4df77d40d71b3b3e0058720dce489e704789582f0ebb4ce464b3d5d4cfae6b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"4c4df77d40d71b3b3e0058720dce489e704789582f0ebb4ce464b3d5d4cfae6b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/CStarAlgebra/Classes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
module

public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Topology.Algebra.NonUnitalStarAlgebra
public import Mathlib.Topology.Algebra.StarSubalgebra

/-! # Classes of C⋆-algebras

This file defines classes for complex C⋆-algebras. These are (unital or non-unital, commutative or
noncommutative) Banach algebra over `ℂ` with an antimultiplicative conjugate-linear involution
(`star`) satisfying the C⋆-identity `∥star x * x∥ = ∥x∥ ^ 2`.

## Notes

These classes are not defined in `Mathlib/Analysis/CStarAlgebra/Basic.lean` because they require
heavier imports.

-/


namespace GRWTSK.Topology.GeneralTopology.NonUnitalCStarAlgebra.Variant4c4df77d40d71b3b3e0058720dce489e704789582f0ebb4ce464b3d5d4cfae6b

public section

noncomputable section

/-- The class of non-unital (complex) C⋆-algebras. -/
class NonUnitalCStarAlgebra (A : Type*) extends NonUnitalNormedRing A, StarRing A, CompleteSpace A,
    CStarRing A, NormedSpace ℂ A, IsScalarTower ℂ A A, SMulCommClass ℂ A A, StarModule ℂ A where

/-- The class of non-unital commutative (complex) C⋆-algebras. -/
class NonUnitalCommCStarAlgebra (A : Type*) extends
    NonUnitalNormedCommRing A, NonUnitalCStarAlgebra A

/-- The class of unital (complex) C⋆-algebras. -/
class CStarAlgebra (A : Type*) extends NormedRing A, StarRing A, CompleteSpace A, CStarRing A,
    NormedAlgebra ℂ A, StarModule ℂ A where

/-- The class of unital commutative (complex) C⋆-algebras. -/
class CommCStarAlgebra (A : Type*) extends NormedCommRing A, CStarAlgebra A

noncomputable instance (priority := 100) CStarAlgebra.toNonUnitalCStarAlgebra (A : Type*)
    [CStarAlgebra A] : NonUnitalCStarAlgebra A where

noncomputable instance (priority := 100) CommCStarAlgebra.toNonUnitalCommCStarAlgebra (A : Type*)
    [CommCStarAlgebra A] : NonUnitalCommCStarAlgebra A where

noncomputable instance StarSubalgebra.cstarAlgebra {S A : Type*} [CStarAlgebra A]
    [SetLike S A] [SubringClass S A] [SMulMemClass S ℂ A] [StarMemClass S A]
    (s : S) [h_closed : IsClosed (s : Set A)] : CStarAlgebra s where
  toCompleteSpace := h_closed.completeSpace_coe
  norm_mul_self_le x := CStarRing.norm_star_mul_self (x := (x : A)) |>.symm.le

noncomputable instance StarSubalgebra.commCStarAlgebra {S A : Type*} [CommCStarAlgebra A]
    [SetLike S A] [SubringClass S A] [SMulMemClass S ℂ A] [StarMemClass S A]
    (s : S) [h_closed : IsClosed (s : Set A)] : CommCStarAlgebra s where
  toCompleteSpace := h_closed.completeSpace_coe
  norm_mul_self_le x := CStarRing.norm_star_mul_self (x := (x : A)) |>.symm.le
  mul_comm _ _ := Subtype.ext <| mul_comm _ _

noncomputable instance NonUnitalStarSubalgebra.nonUnitalCStarAlgebra {S A : Type*}
    [NonUnitalCStarAlgebra A] [SetLike S A] [NonUnitalSubringClass S A] [SMulMemClass S ℂ A]
    [StarMemClass S A] (s : S) [h_closed : IsClosed (s : Set A)] : NonUnitalCStarAlgebra s where
  toCompleteSpace := h_closed.completeSpace_coe
  norm_mul_self_le x := CStarRing.norm_star_mul_self (x := (x : A)) |>.symm.le

noncomputable instance NonUnitalStarSubalgebra.nonUnitalCommCStarAlgebra {S A : Type*}
    [NonUnitalCommCStarAlgebra A] [SetLike S A] [NonUnitalSubringClass S A] [SMulMemClass S ℂ A]
    [StarMemClass S A] (s : S) [h_closed : IsClosed (s : Set A)] : NonUnitalCommCStarAlgebra s where
  toCompleteSpace := h_closed.completeSpace_coe
  norm_mul_self_le x := CStarRing.norm_star_mul_self (x := (x : A)) |>.symm.le
  mul_comm _ _ := Subtype.ext <| mul_comm _ _

noncomputable instance : CommCStarAlgebra ℂ where

namespace IsMulCommutative

/-- A `NonUnitalCStarAlgebra` which `IsMulCommutative` is a `NonUnitalCommCStarAlgebra`.

This is primarily used to deduce the bundled version from the unbundled one for commutative
subobjects in a noncommutative ambient type. As such this is only available inside the
`IsMulCommutative` scope so as to avoid deleterious effects to type class synthesis for bundled
commutativity.

See note [commutative subobjects]. -/
scoped instance (priority := 50) {A : Type*} [NonUnitalCStarAlgebra A] [IsMulCommutative A] :
    NonUnitalCommCStarAlgebra A where

/-- A `CStarAlgebra` which `IsMulCommutative` is a `CommCStarAlgebra`.

This is primarily used to deduce the bundled version from the unbundled one for commutative
subobjects in a noncommutative ambient type. As such this is only available inside the
`IsMulCommutative` scope so as to avoid deleterious effects to type class synthesis for bundled
commutativity.

See note [commutative subobjects]. -/
scoped instance (priority := 50) {A : Type*} [CStarAlgebra A] [IsMulCommutative A] :
    CommCStarAlgebra A where

end IsMulCommutative

section Elemental

variable {A : Type*}

noncomputable instance [CStarAlgebra A] (x : A) :
    CStarAlgebra (StarAlgebra.elemental ℂ x) :=
  StarSubalgebra.cstarAlgebra _ (h_closed := StarAlgebra.elemental.isClosed ℂ x)

noncomputable instance [NonUnitalCStarAlgebra A] (x : A) :
    NonUnitalCStarAlgebra (NonUnitalStarAlgebra.elemental ℂ x) :=
  NonUnitalStarSubalgebra.nonUnitalCStarAlgebra _
    (h_closed := NonUnitalStarAlgebra.elemental.isClosed ℂ x)

open scoped IsMulCommutative in
noncomputable instance [CStarAlgebra A] (x : A) [IsStarNormal x] :
    CommCStarAlgebra (StarAlgebra.elemental ℂ x) where

open scoped IsMulCommutative in
noncomputable instance [NonUnitalCStarAlgebra A] (x : A) [IsStarNormal x] :
    NonUnitalCommCStarAlgebra (NonUnitalStarAlgebra.elemental ℂ x) where

end Elemental

section Pi

variable {ι : Type*} {A : ι → Type*} [Fintype ι]

noncomputable instance [(i : ι) → NonUnitalCStarAlgebra (A i)] :
    NonUnitalCStarAlgebra (Π i, A i) where

noncomputable instance [(i : ι) → NonUnitalCommCStarAlgebra (A i)] :
    NonUnitalCommCStarAlgebra (Π i, A i) where

noncomputable instance [(i : ι) → CStarAlgebra (A i)] : CStarAlgebra (Π i, A i) where

noncomputable instance [(i : ι) → CommCStarAlgebra (A i)] : CommCStarAlgebra (Π i, A i) where

end Pi

section Prod

variable {A B : Type*}

noncomputable instance [NonUnitalCStarAlgebra A] [NonUnitalCStarAlgebra B] :
    NonUnitalCStarAlgebra (A × B) where

noncomputable instance [NonUnitalCommCStarAlgebra A] [NonUnitalCommCStarAlgebra B] :
    NonUnitalCommCStarAlgebra (A × B) where

noncomputable instance [CStarAlgebra A] [CStarAlgebra B] : CStarAlgebra (A × B) where

noncomputable instance [CommCStarAlgebra A] [CommCStarAlgebra B] : CommCStarAlgebra (A × B) where

end Prod

namespace MulOpposite

variable {A : Type*}

noncomputable instance [NonUnitalCStarAlgebra A] : NonUnitalCStarAlgebra Aᵐᵒᵖ where

noncomputable instance [NonUnitalCommCStarAlgebra A] : NonUnitalCommCStarAlgebra Aᵐᵒᵖ where

noncomputable instance [CStarAlgebra A] : CStarAlgebra Aᵐᵒᵖ where

noncomputable instance [CommCStarAlgebra A] : CommCStarAlgebra Aᵐᵒᵖ where

end MulOpposite

attribute [local instance] IsUnital.toMulOneClass in
/-- A unital non-unital C⋆-algebra is a C⋆-algebra.

This constructor is primarily intended to be used within proofs since it creates bad definitional
equalities. -/
noncomputable abbrev IsUnital.toCStarAlgebra {A : Type*} [NonUnitalCStarAlgebra A] [IsUnital A] :
    CStarAlgebra A where
  __ := ‹NonUnitalCStarAlgebra A›
  __ := toSemiring
  __ := toAlgebra

attribute [local instance] IsUnital.toCStarAlgebra in
/-- A unital non-unital commutative C⋆-algebra is a commutative C⋆-algebra.

This constructor is primarily intended to be used within proofs since it creates bad definitional
equalities. -/
noncomputable abbrev IsUnital.toCommCStarAlgebra {A : Type*} [NonUnitalCommCStarAlgebra A]
    [IsUnital A] : CommCStarAlgebra A where
```
