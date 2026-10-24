# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteMultiequalizer.Variant3e0b76fba0a1bd448c7f240450b2e5872935668b5cb6e611d82326656c6ebd02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8979f812b42c7f8a8909f5f0b640987e524ddde1` · SHA-256 `183f65b94638050c61755403022b4b666a325ee85df35fb616eb1acc7240e1cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinCategory.Variant69c3bd1b95779d057177edfd6b4fdd3bd3c956f35c5baa5f82590a6d165fcd20","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"69c3bd1b95779d057177edfd6b4fdd3bd3c956f35c5baa5f82590a6d165fcd20","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FinCategory.Variant69c3bd1b95779d057177edfd6b4fdd3bd3c956f35c5baa5f82590a6d165fcd20","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"69c3bd1b95779d057177edfd6b4fdd3bd3c956f35c5baa5f82590a6d165fcd20","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Shapes/FiniteMultiequalizer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.CategoryTheory.FinCategory.Basic
public import Mathlib.CategoryTheory.Limits.Shapes.Multiequalizer
public import Mathlib.Data.Fintype.Sum
public import Mathlib.Tactic.ProxyType

/-!
# Finiteness instances on multi-spans
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinCategory.Variant69c3bd1b95779d057177edfd6b4fdd3bd3c956f35c5baa5f82590a6d165fcd20

public section

namespace CategoryTheory.Limits

namespace WalkingMulticospan

variable {J : MulticospanShape} [Fintype J.L] [Fintype J.R]

instance : Fintype (WalkingMulticospan J) := .ofEquiv _ (proxy_equiv% (WalkingMulticospan J))

instance [DecidableEq J.L] [DecidableEq J.R] : FinCategory (WalkingMulticospan J) where
  fintypeHom
    | .left a, .left b => ⟨if e : a = b then {eqToHom (e ▸ rfl)} else ∅, by rintro ⟨⟩; simp⟩
    | .left a, .right b => ⟨⟨(if e : J.fst b = a then {eqToHom (e ▸ rfl) ≫ Hom.fst b} else 0) +
        (if e : J.snd b = a then {eqToHom (e ▸ rfl) ≫ Hom.snd b} else 0), by
        split_ifs with h₁ h₂
        · simp only [Multiset.singleton_add, Multiset.nodup_cons, Multiset.mem_singleton,
            Multiset.nodup_singleton, and_true]
          let f : ((left a : WalkingMulticospan J) ⟶ right b) → Prop
            | .fst a => True
            | .snd a => False
          apply ne_of_apply_ne f
          conv_lhs => tactic => subst h₁; simp only [eqToHom_refl, Category.id_comp, f]
          conv_rhs => tactic => subst h₂; simp only [eqToHom_refl, Category.id_comp, f]
          simp
        all_goals simp⟩, by rintro ⟨⟩ <;> simp⟩
    | .right a, .left b => ⟨∅, by rintro ⟨⟩⟩
    | .right a, .right b => ⟨if e : a = b then {eqToHom (e ▸ rfl)} else ∅, by rintro ⟨⟩; simp⟩

end WalkingMulticospan

namespace WalkingMultispan

variable {J : MultispanShape} [Fintype J.L] [Fintype J.R]

instance : Fintype (WalkingMultispan J) := .ofEquiv _ (proxy_equiv% (WalkingMultispan J))

instance [DecidableEq J.L] [DecidableEq J.R] : FinCategory (WalkingMultispan J) where
  fintypeHom
    | .left a, .left b => ⟨if e : a = b then {eqToHom (e ▸ rfl)} else ∅, by rintro ⟨⟩; simp⟩
    | .left a, .right b => ⟨⟨(if e : J.fst a = b then {Hom.fst a ≫ eqToHom (e ▸ rfl)} else 0) +
        (if e : J.snd a = b then {Hom.snd a ≫ eqToHom (e ▸ rfl)} else 0), by
        split_ifs with h₁ h₂
        · simp only [Multiset.singleton_add, Multiset.nodup_cons, Multiset.mem_singleton,
            Multiset.nodup_singleton, and_true]
          let f : ((left a : WalkingMultispan J) ⟶ right b) → Prop
            | .fst a => True
            | .snd a => False
          apply ne_of_apply_ne f
          conv_lhs => tactic => subst h₁; simp only [eqToHom_refl, f]
          conv_rhs => tactic => subst h₂; simp only [eqToHom_refl, f]
          simp
        all_goals simp⟩, by rintro ⟨⟩ <;> simp⟩
    | .right a, .left b => ⟨∅, by rintro ⟨⟩⟩
    | .right a, .right b => ⟨if e : a = b then {eqToHom (e ▸ rfl)} else ∅, by rintro ⟨⟩; simp⟩

end WalkingMultispan

end CategoryTheory.Limits
```
