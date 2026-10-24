# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WidePullbackOfTerminal.Variant00fb9dc45585b3b9abb586aac263709ff897cf7b2d146d3561a44e82fb078a2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `266e539485a6de98696100c1abf35ee734f89491` · SHA-256 `d8047bd44e13bab12d07b4cc72579c7366ae04e2d8a3bc9230138062bf7806d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ToFan.Variant328a29dd0bfb24ff117a7c4e34ef2292d149b58602089c75a476be59f784c0f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"328a29dd0bfb24ff117a7c4e34ef2292d149b58602089c75a476be59f784c0f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ToFan.Variant328a29dd0bfb24ff117a7c4e34ef2292d149b58602089c75a476be59f784c0f7","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"328a29dd0bfb24ff117a7c4e34ef2292d149b58602089c75a476be59f784c0f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Constructions/WidePullbackOfTerminal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks
public import Mathlib.CategoryTheory.Limits.Shapes.Products
public import Mathlib.CategoryTheory.Limits.Shapes.IsTerminal

/-!
# Existence of wide pullbacks when the target object is terminal

In this file, we show that the wide pullback of a family of arrows `objs j ⟶ B`
exists when `B` is terminal and the product of the objects `objs j` exists.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ToFan.Variant328a29dd0bfb24ff117a7c4e34ef2292d149b58602089c75a476be59f784c0f7

@[expose] public section

universe w v u

namespace CategoryTheory.Limits

variable {C : Type u} [Category.{v} C]
  {ι : Type w} {B : C} {objs : ι → C}
  (arrows : (j : ι) → objs j ⟶ B)

namespace WidePullbackCone

/-- The fan that is induced by a wide pullback cone. -/
abbrev toFan (s : WidePullbackCone arrows) : Fan objs :=
  Fan.mk _ s.π

variable (c : Fan objs)

/-- The wide pullback cone given by a fan, when the base object is terminal. -/
abbrev ofFan (hB : IsTerminal B) : WidePullbackCone arrows :=
  WidePullbackCone.mk (hB.from _) c.proj (fun _ ↦ hB.hom_ext _ _)

variable {c} in
/-- When the base object is terminal, a limit wide pullback cone can be obtained
from a limit fan. -/
def isLimitOfFan (hc : IsLimit c) (hB : IsTerminal B) :
    IsLimit (ofFan arrows c hB) :=
  IsLimit.mk _
    (fun s ↦ hc.lift s.toFan)
    (fun s ↦ hB.hom_ext _ _)
    (fun s i ↦ hc.fac s.toFan (.mk i))
    (fun s m _ hm ↦ hc.hom_ext (fun ⟨i⟩ ↦ by simpa using! hm i))

end WidePullbackCone

lemma hasWidePullback_of_isTerminal
    [HasProduct objs] (hB : IsTerminal B) :
    HasWidePullback B objs arrows where
  exists_limit :=
    ⟨_, WidePullbackCone.isLimitOfFan (arrows := arrows) (limit.isLimit _) hB⟩

end CategoryTheory.Limits
```
