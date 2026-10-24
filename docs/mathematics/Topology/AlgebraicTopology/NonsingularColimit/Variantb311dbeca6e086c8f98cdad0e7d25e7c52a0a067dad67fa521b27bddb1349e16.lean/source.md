# Complete source: GRWTSK.Topology.AlgebraicTopology.NonsingularColimit.Variantb311dbeca6e086c8f98cdad0e7d25e7c52a0a067dad67fa521b27bddb1349e16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4af41ee6a43649c35dec78ee4f119b094851827` · SHA-256 `bf8b81427a5d94b83b52e8eb85a760ef872e52a85381292dcf211b68ac5a68ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.ToSemiSimplexCategory.Variante65eabd9218ff8065ca53823a2f7782c2879a189b3f8bb227c6cb49fbfb583a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e65eabd9218ff8065ca53823a2f7782c2879a189b3f8bb227c6cb49fbfb583a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.ToSemiSimplexCategory.Variante65eabd9218ff8065ca53823a2f7782c2879a189b3f8bb227c6cb49fbfb583a0","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"e65eabd9218ff8065ca53823a2f7782c2879a189b3f8bb227c6cb49fbfb583a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/SimplicialSet/NonsingularColimit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.SimplexCategory.SemiSimplexCategory
public import Mathlib.AlgebraicTopology.SimplicialSet.Nonsingular
public import Mathlib.AlgebraicTopology.SimplicialSet.NonDegenerateSimplicesColimit

/-!
# Nonsingular simplicial sets, as colimits of standard simplices

In the file `Mathlib/AlgebraicTopology/SimplicialSet/NonDegenerateSimplicesColimit.lean`,
it was shown that any simplicial set `X` is the colimit (indexed by the type `X.N`
of nondegenerate simplices) of its monogenous subcomplexes.

In this file, we assume that `X` is nonsingular, in which case its monogenous subcomplexes
identify to standard simplices. This allows to show that `X` is the colimit
of `Δ[x.dim]` for `x : X.N`.

-/


namespace GRWTSK.Topology.AlgebraicTopology.ToSemiSimplexCategory.Variante65eabd9218ff8065ca53823a2f7782c2879a189b3f8bb227c6cb49fbfb583a0

@[expose] public section

universe u

open CategoryTheory Limits

open scoped Simplicial

namespace SSet

variable (X : SSet.{u}) [X.Nonsingular]

namespace N

set_option backward.isDefEq.respectTransparency false in
/-- If `X` is a nonsingular simplicial set, this is the functor
`X.N ⥤ SemiSimplexCategory` which sends a nondegenerate
simplex `s : X.N` to `⦋s.dim⦌ₛ`. -/
@[simps obj map]
noncomputable def toSemiSimplexCategory : X.N ⥤ SemiSimplexCategory where
  obj s := ⦋s.dim⦌ₛ
  map f := SemiSimplexCategory.homOfMono (N.monoOfLE (leOfHom f))
  map_id _ := SemiSimplexCategory.toSimplexCategory.map_injective (by simp)
  map_comp _ _ := SemiSimplexCategory.toSimplexCategory.map_injective (by simp)

end N

/-- The functor `X.N ⥤ SSet` which sends `x : X.N` to `Δ[x.dim]`. -/
noncomputable abbrev functorN' : X.N ⥤ SSet.{u} :=
    N.toSemiSimplexCategory X ⋙ SemiSimplexCategory.toSimplexCategory ⋙ SSet.stdSimplex

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The isomorphism `X.functorN' ≅ X.functorN` for a nonsingular simplicial set `X`. -/
noncomputable def functorN'Iso : X.functorN' ≅ X.functorN :=
  NatIso.ofComponents (fun x ↦ Nonsingular.iso _ x.nonDegenerate) (fun _ ↦ by
    simp [← cancel_mono (Subcomplex.ι _)])

/-- If `X` is a nonsingular simplicial set, this is the cocone consisting
of the (mono)morphisms `Δ[x.dim] ⟶ X` for all nondegenerate simplices `x : X.N`. -/
@[simps]
noncomputable def coconeN' : Cocone X.functorN' where
  pt := X
  ι.app s := yonedaEquiv.symm s.simplex
  ι.naturality _ _ f := N.stdSimplex_map_monoOfLE_yonedaEquiv_symm_simplex (leOfHom f)

/-- If `X` is a nonsingular simplicial set, `X` is the colimit of `Δ[x.dim]`
for all nondegenerate simplices `x : X.N`. -/
noncomputable def isColimitCoconeN' : IsColimit X.coconeN' :=
  (IsColimit.equivOfNatIsoOfIso
    X.functorN'Iso.symm _ _ (Cocone.ext (Iso.refl _))).1 X.isColimitCoconeN

end SSet
```
