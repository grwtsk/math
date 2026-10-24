# Complete source: GRWTSK.Geometry.ConvexGeometry.Module.Variant0cfcebcd9f5f1ff49765719789840e1be4c04ea8f0f39ad8207aad118b603b29

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a58f9be2de7a8c059b52952187f30d549e24b9f3` · SHA-256 `f9fb9e3ba808888381b780e5aa4e6ff78d77a207823752fa128fd4969a248474`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ConvexGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ConvexGeometry.Module.Variantef3bcae7342722c441f3ae12ce805d22616d909f03a41fccb9912dcf68fe8c34","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef3bcae7342722c441f3ae12ce805d22616d909f03a41fccb9912dcf68fe8c34","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.ConvexGeometry.SourceCorpus.Module.Variantef3bcae7342722c441f3ae12ce805d22616d909f03a41fccb9912dcf68fe8c34","mathematical_subject":"Geometry.ConvexGeometry","original_sha256":"ef3bcae7342722c441f3ae12ce805d22616d909f03a41fccb9912dcf68fe8c34","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Geometry/Convex/AffineMap/Module.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Data.FunLike.Module
public import Mathlib.Geometry.Convex.AffineMap.Defs
public import Mathlib.Geometry.Convex.ConvexSpace.Module

/-!
# The module of affine maps from a convex space to a module

This file shows that the affine maps from a convex space `X` to a module `M` themselves form a
module, and that the convex space structure this induces is the pointwise one.

## Main declarations

* `Convexity.ConvexSpace.AffineMap.instModule`: The affine maps from a convex space to a module
  form a module.
* `Convexity.ConvexSpace.AffineMap.instIsModuleConvexSpace`: The pointwise convex space structure
  on the affine maps into a module is given by weighted sums.
-/


namespace GRWTSK.Geometry.ConvexGeometry.Module.Variantef3bcae7342722c441f3ae12ce805d22616d909f03a41fccb9912dcf68fe8c34

public noncomputable section

namespace Convexity
variable {R S X M : Type*} [Semiring R] [PartialOrder R] [IsStrictOrderedRing R]

namespace ConvexSpace.AffineMap
variable [ConvexSpace R X]

section AddCommMonoid
variable [AddCommMonoid M] [Module R M] [ConvexSpace R M] [IsModuleConvexSpace R M]

instance : Zero (ConvexSpace.AffineMap R X M) := ⟨.const 0⟩

instance : IsZeroApply (ConvexSpace.AffineMap R X M) X M where zero_apply _ := rfl

instance : Add (ConvexSpace.AffineMap R X M) where
  add f g := ⟨f + g, f.isAffineMap.add g.isAffineMap⟩

instance : IsAddApply (ConvexSpace.AffineMap R X M) X M where add_apply _ _ _ := rfl

section SMul
variable [Monoid S] [DistribMulAction S M] [SMulCommClass S R M]

instance : SMul S (ConvexSpace.AffineMap R X M) where smul s f := ⟨s • f, by fun_prop⟩

instance : IsSMulApply S (ConvexSpace.AffineMap R X M) X M where smul_apply _ _ _ := rfl

variable {T : Type*} [Monoid T] [DistribMulAction T M] [SMulCommClass T R M]

instance [SMulCommClass S T M] : SMulCommClass S T (ConvexSpace.AffineMap R X M) where
  smul_comm _ _ _ := ext <| funext fun _ ↦ smul_comm ..

instance [SMul S T] [IsScalarTower S T M] : IsScalarTower S T (ConvexSpace.AffineMap R X M) where
  smul_assoc _ _ _ := ext <| funext fun _ ↦ smul_assoc ..

instance [DistribMulAction Sᵐᵒᵖ M] [IsCentralScalar S M] :
    IsCentralScalar S (ConvexSpace.AffineMap R X M) where
  op_smul_eq_smul _ _ := ext <| funext fun _ ↦ op_smul_eq_smul ..

end SMul

instance : AddCommMonoid (ConvexSpace.AffineMap R X M) :=
  fast_instance% FunLike.addCommMonoid

instance [Monoid S] [DistribMulAction S M] [SMulCommClass S R M] :
    DistribMulAction S (ConvexSpace.AffineMap R X M) := fast_instance% FunLike.distribMulAction

instance [Semiring S] [Module S M] [SMulCommClass S R M] :
    Module S (ConvexSpace.AffineMap R X M) := fast_instance% FunLike.module

end AddCommMonoid

section AddCommGroup
variable [AddCommGroup M] [Module R M] [ConvexSpace R M] [IsModuleConvexSpace R M]

instance : Neg (ConvexSpace.AffineMap R X M) where
  neg f := ⟨-f, f.isAffineMap.neg⟩

instance : IsNegApply (ConvexSpace.AffineMap R X M) X M where neg_apply _ _ := rfl

instance : Sub (ConvexSpace.AffineMap R X M) where
  sub f g := ⟨f - g, f.isAffineMap.sub g.isAffineMap⟩

instance : IsSubApply (ConvexSpace.AffineMap R X M) X M where sub_apply _ _ _ := rfl

instance : AddCommGroup (ConvexSpace.AffineMap R X M) :=
  fast_instance% FunLike.addCommGroup

end AddCommGroup
end ConvexSpace.AffineMap

/-! ### Compatibility with the pointwise convex space structure -/

section Pointwise
variable {R S : Type*} [Semiring R] [PartialOrder R] [IsStrictOrderedRing R] [Semiring S]
  [PartialOrder S] [IsStrictOrderedRing S] [ConvexSpace R X] [AddCommMonoid M] [Module R M]
  [Module S M] [SMulCommClass S R M] [ConvexSpace R M] [IsModuleConvexSpace R M] [ConvexSpace S M]
  [IsModuleConvexSpace S M]

instance ConvexSpace.AffineMap.instIsModuleConvexSpace :
    IsModuleConvexSpace S (ConvexSpace.AffineMap R X M) where
  sConvexComb_eq_sum w := by ext x; simp [Finsupp.sum]

end Pointwise
end Convexity
```
