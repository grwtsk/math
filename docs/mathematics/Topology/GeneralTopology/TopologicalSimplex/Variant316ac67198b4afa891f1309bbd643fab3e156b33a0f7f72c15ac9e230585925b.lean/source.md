# Complete source: GRWTSK.Topology.GeneralTopology.TopologicalSimplex.Variant316ac67198b4afa891f1309bbd643fab3e156b33a0f7f72c15ac9e230585925b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c0638d36b72bd2c67e55b7922c2d50746090599` · SHA-256 `25d6116e5b4a44dc7618da55067455ac2e4251d6b05735099b4ef03c11c03324`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ToTop.Variant8bb15669acaf67e60e3b95a3b1b59593693d26aa4da6cfeaafa8c7d69f73d376","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8bb15669acaf67e60e3b95a3b1b59593693d26aa4da6cfeaafa8c7d69f73d376","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ToTop.Variant8bb15669acaf67e60e3b95a3b1b59593693d26aa4da6cfeaafa8c7d69f73d376","mathematical_subject":"Topology.GeneralTopology","original_sha256":"8bb15669acaf67e60e3b95a3b1b59593693d26aa4da6cfeaafa8c7d69f73d376","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/TopologicalSimplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Adam Topaz, Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.SimplicialObject.Basic
public import Mathlib.Geometry.Convex.ConvexSpace.PathConnectedSpaceStdSimplex
public import Mathlib.Topology.Category.TopCat.ULift

/-!
# Topological simplices

We define the natural functor from `SimplexCategory` to `TopCat` sending `⦋n⦌` to the
topological `n`-simplex.
This is used to define `TopCat.toSSet` in `AlgebraicTopology.SingularSet`.
-/


namespace GRWTSK.Topology.GeneralTopology.ToTop.Variant8bb15669acaf67e60e3b95a3b1b59593693d26aa4da6cfeaafa8c7d69f73d376

@[expose] public section

universe u

open CategoryTheory Convexity

open scoped Simplicial

namespace SimplexCategory

/-- The functor `SimplexCategory ⥤ TopCat.{0}`
associating the topological `n`-simplex to `⦋n⦌ : SimplexCategory`. -/
@[simps obj map, implicit_reducible]
noncomputable def toTop₀ : CosimplicialObject TopCat.{0} where
  obj n := ↧(StdSimplex ℝ (Fin (n.len + 1)))
  map f := TopCat.ofHom ⟨_, StdSimplex.continuous_map ℝ f⟩
  map_comp f g := by
    ext : 1
    simp [← StdSimplex.map_comp]
    rfl

/-- The functor `SimplexCategory ⥤ TopCat.{u}`
associating the topological `n`-simplex to `⦋n⦌ : SimplexCategory`. -/
@[simps! obj map, pp_with_univ]
noncomputable def toTop : SimplexCategory ⥤ TopCat.{u} :=
  toTop₀ ⋙ TopCat.uliftFunctor

set_option backward.defeqAttrib.useBackward true in
instance (n : SimplexCategory) : Nonempty (toTop₀.obj n) := by dsimp; infer_instance

instance (n : SimplexCategory) : Nonempty (toTop.{u}.obj n) := inferInstanceAs (Nonempty (ULift _))

noncomputable instance : Unique (toTop₀.obj ⦋0⦌) := inferInstanceAs (Unique (StdSimplex ℝ (Fin 1)))

noncomputable instance : Unique (toTop.{u}.obj ⦋0⦌) := inferInstanceAs (Unique (ULift _))

set_option backward.defeqAttrib.useBackward true in
instance (n : SimplexCategory) : PathConnectedSpace (toTop₀.obj n) := by dsimp; infer_instance

instance (n : SimplexCategory) : PathConnectedSpace (toTop.{u}.obj n) :=
  ULift.up_surjective.pathConnectedSpace continuous_uliftUp

end SimplexCategory
```
