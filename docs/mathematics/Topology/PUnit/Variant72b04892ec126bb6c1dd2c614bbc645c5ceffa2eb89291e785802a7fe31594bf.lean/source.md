# Complete source: GRWTSK.Topology.PUnit.Variant72b04892ec126bb6c1dd2c614bbc645c5ceffa2eb89291e785802a7fe31594bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `622df47800a0c2494922016adff5c0fd2d112425` · SHA-256 `eeeb8b5d53e9626821eab4cf6d600233286c5c47a27b52eb9fef50d13ad631dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.IsSheafOfIsTerminalOfIndiscrete.Variantc99e5b9ee0e95069b1d5241ab605f3b04089be9f3cb89ba6d13d3584cf542dcf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c99e5b9ee0e95069b1d5241ab605f3b04089be9f3cb89ba6d13d3584cf542dcf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.IsSheafOfIsTerminalOfIndiscrete.Variantc99e5b9ee0e95069b1d5241ab605f3b04089be9f3cb89ba6d13d3584cf542dcf","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"c99e5b9ee0e95069b1d5241ab605f3b04089be9f3cb89ba6d13d3584cf542dcf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Sheaves/PUnit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/
module

public import Mathlib.Topology.Sheaves.SheafCondition.Sites

/-!
# Presheaves on `PUnit`

Presheaves on `PUnit` satisfy sheaf condition iff its value at empty set is a terminal object.
-/


namespace GRWTSK.Topology.IsSheafOfIsTerminalOfIndiscrete.Variantc99e5b9ee0e95069b1d5241ab605f3b04089be9f3cb89ba6d13d3584cf542dcf

public section


namespace TopCat.Presheaf

universe u v w

open CategoryTheory CategoryTheory.Limits TopCat Opposite

variable {C : Type u} [Category.{v} C]

theorem isSheaf_of_isTerminal_of_indiscrete {X : TopCat.{w}} (hind : X.str = ⊤) (F : Presheaf C X)
    (it : IsTerminal <| F.obj <| op ⊥) : F.IsSheaf := fun c U s hs => by
  have : IndiscreteTopology X := ⟨hind⟩
  obtain rfl | hne := eq_or_ne U ⊥
  · intro _ _
    rw [@existsUnique_iff_exists _ ⟨fun _ _ => _⟩]
    · refine ⟨it.from _, fun U hU hs => IsTerminal.hom_ext ?_ _ _⟩
      rwa [le_bot_iff.1 hU.le]
    · apply it.hom_ext
  · convert! Presieve.isSheafFor_top (F ⋙ coyoneda.obj (@op C c))
    rw [Sieve.arrows_eq_top_iff, ← Sieve.id_mem_iff_eq_top]
    have := U.eq_bot_or_top.resolve_left hne
    subst this
    obtain he | ⟨⟨x⟩⟩ := isEmpty_or_nonempty X
    · exact (hne <| SetLike.ext'_iff.2 <| Set.univ_eq_empty_iff.2 he).elim
    obtain ⟨U, f, hf, hm⟩ := hs x _root_.trivial
    obtain rfl | rfl := U.eq_bot_or_top
    · cases hm
    · convert! hf

theorem isSheaf_iff_isTerminal_of_indiscrete {X : TopCat.{w}} (hind : X.str = ⊤)
    (F : Presheaf C X) : F.IsSheaf ↔ Nonempty (IsTerminal <| F.obj <| op ⊥) :=
  ⟨fun h => ⟨Sheaf.isTerminalOfEmpty ⟨F, h⟩⟩, fun ⟨it⟩ =>
    isSheaf_of_isTerminal_of_indiscrete hind F it⟩

theorem isSheaf_on_punit_of_isTerminal (F : Presheaf C ↧PUnit)
    (it : IsTerminal <| F.obj <| op ⊥) : F.IsSheaf :=
  isSheaf_of_isTerminal_of_indiscrete (@Subsingleton.elim (TopologicalSpace PUnit) _ _ _) F it

theorem isSheaf_on_punit_iff_isTerminal (F : Presheaf C ↧PUnit) :
    F.IsSheaf ↔ Nonempty (IsTerminal <| F.obj <| op ⊥) :=
  ⟨fun h => ⟨Sheaf.isTerminalOfEmpty ⟨F, h⟩⟩, fun ⟨it⟩ => isSheaf_on_punit_of_isTerminal F it⟩

end TopCat.Presheaf
```
