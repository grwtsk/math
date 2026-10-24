-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.FstStar.Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.FstStar.Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Star/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Star.Basic
import Mathlib.Algebra.Ring.Prod
import Mathlib.Algebra.Module.Prod


namespace GRWTSK.Algebra.UniversalAlgebra.FstStar.Variant16390e47f3a2c04b3613f04374751434ea4d2c082961f8c8dd4dca02cdc287fd

#align_import algebra.star.prod from "leanprover-community/mathlib"@"9abfa6f0727d5adc99067e325e15d1a9de17fd8e"

/-!
# `Star` on product types

We put a `Star` structure on product types that operates elementwise.
-/


universe u v w

variable {R : Type u} {S : Type v}

namespace Prod

instance [Star R] [Star S] : Star (R × S) where star x := (star x.1, star x.2)

@[simp]
theorem fst_star [Star R] [Star S] (x : R × S) : (star x).1 = star x.1 :=
  rfl
#align prod.fst_star Prod.fst_star

@[simp]
theorem snd_star [Star R] [Star S] (x : R × S) : (star x).2 = star x.2 :=
  rfl
#align prod.snd_star Prod.snd_star

theorem star_def [Star R] [Star S] (x : R × S) : star x = (star x.1, star x.2) :=
  rfl
#align prod.star_def Prod.star_def

instance [Star R] [Star S] [TrivialStar R] [TrivialStar S] : TrivialStar (R × S)
    where star_trivial _ := Prod.ext (star_trivial _) (star_trivial _)

instance [InvolutiveStar R] [InvolutiveStar S] : InvolutiveStar (R × S)
    where star_involutive _ := Prod.ext (star_star _) (star_star _)

instance [Mul R] [Mul S] [StarMul R] [StarMul S] : StarMul (R × S)
    where star_mul _ _ := Prod.ext (star_mul _ _) (star_mul _ _)

instance [AddMonoid R] [AddMonoid S] [StarAddMonoid R] [StarAddMonoid S] : StarAddMonoid (R × S)
    where star_add _ _ := Prod.ext (star_add _ _) (star_add _ _)

instance [NonUnitalNonAssocSemiring R] [NonUnitalNonAssocSemiring S] [StarRing R] [StarRing S] :
    StarRing (R × S) :=
  { inferInstanceAs (StarAddMonoid (R × S)),
    inferInstanceAs (StarMul (R × S)) with }

instance {α : Type w} [SMul α R] [SMul α S] [Star α] [Star R] [Star S]
    [StarModule α R] [StarModule α S] : StarModule α (R × S)
    where star_smul _ _ := Prod.ext (star_smul _ _) (star_smul _ _)

end Prod

--Porting note: removing @[simp], `simp` simplifies LHS
theorem Units.embed_product_star [Monoid R] [StarMul R] (u : Rˣ) :
    Units.embedProduct R (star u) = star (Units.embedProduct R u) :=
  rfl
#align units.embed_product_star Units.embed_product_star
