# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CheckCompositions.Variant5f20a71de4afd6abc0ccddd0693f18c94a85397ea3f147b32a64b8369defe802

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88dd9e50cdb5a02eebc22962340d2319969a368d` · SHA-256 `7b71c6b79bc211f0a46a3c0e1949b37de6fc13caca112d4446f7fba48b1f7c6c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variante039644c04f58f0b0fb9355fff78e9f2d975707089ff208a15557088c2368cf6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e039644c04f58f0b0fb9355fff78e9f2d975707089ff208a15557088c2368cf6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Limits.Variante039644c04f58f0b0fb9355fff78e9f2d975707089ff208a15557088c2368cf6","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e039644c04f58f0b0fb9355fff78e9f2d975707089ff208a15557088c2368cf6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/CategoryTheory/CheckCompositions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module
import Mathlib.CategoryTheory.Limits.Preserves.Limits
import Mathlib.Tactic.CategoryTheory.CheckCompositions
import Mathlib.Tactic.Recall


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variante039644c04f58f0b0fb9355fff78e9f2d975707089ff208a15557088c2368cf6

universe v₁ v₂ v₃ v u₁ u₂ u₃ u

open CategoryTheory Limits

variable {J : Type u} [Category.{v} J] {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]
    {E : Type u₃} [Category.{v₃} E] (F : J ⥤ C) (G : C ⥤ D) (H : D ⥤ E)

variable [HasColimitsOfShape J C] [HasColimitsOfShape J E] [PreservesColimit F (G ⋙ H)]

/--
info: In composition
  colimit.ι ((F ⋙ G) ⋙ H) j ≫ (preservesColimitIso (G ⋙ H) F).inv
the source of
  (preservesColimitIso (G ⋙ H) F).inv
is
  colimit (Functor.comp.{v, v₁, v₃, u, u₁, u₃} F (G ⋙ H))
but should be
  colimit (Functor.comp.{v, v₂, v₃, u, u₂, u₃} (F ⋙ G) H)
-/
#guard_msgs in
set_option linter.unusedTactic false in
example (j : J) :
    colimit.ι ((F ⋙ G) ⋙ H) j ≫ (preservesColimitIso (G ⋙ H) F).inv =
      H.map (G.map (colimit.ι F j)) := by

  -- We know which lemma we want to use, and it's even a simp lemma, but `rw` won't let us apply it
  fail_if_success rw [ι_preservesColimitIso_inv]
  fail_if_success rw [ι_preservesColimitIso_inv (G ⋙ H)]
  fail_if_success simp only [ι_preservesColimitIso_inv]

  -- This would work:
  -- erw [ι_preservesColimitIso_inv (G ⋙ H)]

  -- `check_compositions` checks if the two morphisms we're composing are composed by abusing defeq,
  -- and indeed it tells us that we are abusing definitional associativity of composition of
  -- functors here!
  check_compositions

  -- In this case, we can "fix" this by reassociating in the goal, but usually at this point the
  -- right thing to do is to back off and check how we ended up with a bad goal in the first place.
  dsimp only [Functor.assoc]

  -- This would work now, but it is not needed, because simp works as well
  -- rw [ι_preservesColimitIso_inv]

  simp
```
