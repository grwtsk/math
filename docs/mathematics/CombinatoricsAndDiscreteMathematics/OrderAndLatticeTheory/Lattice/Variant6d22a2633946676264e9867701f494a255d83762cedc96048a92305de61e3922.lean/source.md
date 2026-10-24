# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant6d22a2633946676264e9867701f494a255d83762cedc96048a92305de61e3922

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6f0107970fc20bfd879107912f1838867c2315a` · SHA-256 `45b64c0ef2d233ae72f4989ca4e82accdc015cc01363e9fa20150af1d97d9ffa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variantdbb195cb87c877406dac18ab762d610454c85a5548c933b3949e9526d22ee0d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dbb195cb87c877406dac18ab762d610454c85a5548c933b3949e9526d22ee0d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.Lattice.Variantdbb195cb87c877406dac18ab762d610454c85a5548c933b3949e9526d22ee0d4","mathematical_subject":"Algebra.OrderTheory","original_sha256":"dbb195cb87c877406dac18ab762d610454c85a5548c933b3949e9526d22ee0d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Preserves/Lattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Brian Nugent. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Brian Nugent
-/
module

public import Mathlib.CategoryTheory.Limits.Lattice
public import Mathlib.CategoryTheory.Limits.Preserves.Finite
public import Mathlib.Order.ConditionallyCompleteLattice.Basic
public import Mathlib.Order.Hom.CompleteLattice

/-!
# Lattice Homs that Preserve Limits and Colimits

This file provides instances for when OrderHom.toFunctor preserves limits/colimits.
In particular, if `f` preserves finite infs/sups (i.e. is from a InfTopHomClass/SupBotHomClass)
then `(toOrderHom f).toFunctor` preserves finite limits/colimits. If `f` preserves
arbitrary infs/sups (i.e. is from a sInfHomClass/sSupHomClass) then `(toOrderHom f).toFunctor`
preserves all limits/colimits.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variantdbb195cb87c877406dac18ab762d610454c85a5548c933b3949e9526d22ee0d4

public section

open OrderHomClass

namespace CategoryTheory.Limits.CompleteLattice

universe w w' u v

variable {α : Type u} {β : Type v} {F : Type*} [FunLike F α β] (f : F)

section

variable [SemilatticeInf α] [OrderTop α] [SemilatticeInf β] [OrderTop β] [InfTopHomClass F α β]

instance preservesLimit_finite_toFunctor {J : Type w} [SmallCategory J]
    [FinCategory J] (K : J ⥤ α) : PreservesLimit K (OrderHom.ofClass f).toFunctor :=
  preservesLimit_of_preserves_limit_cone (finiteLimitCone K).isLimit <|
    (finiteLimitCone _).isLimit.ofIsoLimit
      (Cone.ext (eqToIso (show Finset.univ.inf _ = f _ by aesop)) (by subsingleton))

instance preservesLimitsOfShape_finite_toFunctor {J : Type w} [SmallCategory J] [FinCategory J] :
    PreservesLimitsOfShape J (OrderHom.ofClass f).toFunctor where

instance : PreservesFiniteLimits (OrderHom.ofClass f).toFunctor where
  preservesFiniteLimits _ _ _ := inferInstance

end

section

variable [SemilatticeSup α] [OrderBot α] [SemilatticeSup β] [OrderBot β] [SupBotHomClass F α β]

instance preservesColimit_finite_toFunctor {J : Type w} [SmallCategory J]
    [FinCategory J] (K : J ⥤ α) : PreservesColimit K (OrderHom.ofClass f).toFunctor :=
  preservesColimit_of_preserves_colimit_cocone (finiteColimitCocone K).isColimit <|
    (finiteColimitCocone _).isColimit.ofIsoColimit
      (Cocone.ext (eqToIso (show Finset.univ.sup _ = f _ by aesop)) (by subsingleton))

instance preservesColimitsOfShape_finite_toFunctor {J : Type w} [SmallCategory J]
    [FinCategory J] : PreservesColimitsOfShape J (OrderHom.ofClass f).toFunctor where

instance : PreservesFiniteColimits (OrderHom.ofClass f).toFunctor where
  preservesFiniteColimits _ _ _ := inferInstance

end

section

variable [CompleteLattice α] [CompleteLattice β]

instance preservesLimit_toFunctor [sInfHomClass F α β] {J : Type w} [Category.{w'} J]
    (K : J ⥤ α) : PreservesLimit K (OrderHom.ofClass f).toFunctor :=
  preservesLimit_of_preserves_limit_cone (limitCone K).isLimit <|
    (limitCone _).isLimit.ofIsoLimit (Cone.ext (eqToIso (by aesop)) (by subsingleton))

instance preservesLimitsOfShape_toFunctor [sInfHomClass F α β] {J : Type w} [Category.{w'} J] :
    PreservesLimitsOfShape J (OrderHom.ofClass f).toFunctor where

instance preservesLimitsOfSize_toFunctor [sInfHomClass F α β] :
    PreservesLimitsOfSize.{w', w} (OrderHom.ofClass f).toFunctor where

instance preservesLimits_toFunctor [sInfHomClass F α β] :
    PreservesLimits (OrderHom.ofClass f).toFunctor where

instance preservesColimit_toFunctor [sSupHomClass F α β] {J : Type w} [Category.{w'} J]
    (K : J ⥤ α) : PreservesColimit K (OrderHom.ofClass f).toFunctor :=
  preservesColimit_of_preserves_colimit_cocone (colimitCocone K).isColimit <|
    (colimitCocone _).isColimit.ofIsoColimit (Cocone.ext (eqToIso (by aesop)) (by subsingleton))

instance preservesColimitsOfShape_toFunctor [sSupHomClass F α β] {J : Type w} [Category.{w'} J] :
    PreservesColimitsOfShape J (OrderHom.ofClass f).toFunctor where

instance preservesColimitsOfSize_toFunctor [sSupHomClass F α β] :
    PreservesColimitsOfSize.{w', w} (OrderHom.ofClass f).toFunctor where

instance preservesColimits_toFunctor [sSupHomClass F α β] :
    PreservesColimits (OrderHom.ofClass f).toFunctor where

end

end CategoryTheory.Limits.CompleteLattice
```
