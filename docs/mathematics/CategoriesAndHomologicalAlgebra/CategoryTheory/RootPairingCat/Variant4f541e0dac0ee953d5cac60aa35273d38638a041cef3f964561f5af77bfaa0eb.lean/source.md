# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RootPairingCat.Variant4f541e0dac0ee953d5cac60aa35273d38638a041cef3f964561f5af77bfaa0eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe21ab711cd3fe483a2635cd67d47b08cd41eb09` · SHA-256 `07b6cdf23213d5bb3376e083518d31098d89da153c9171737651ce5d8e2f1baf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RootPairingCat.Variant2bd9fd932ac12b65e46d89a2fb9721bfd00a2971d3f8e151aa330190ed108348","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2bd9fd932ac12b65e46d89a2fb9721bfd00a2971d3f8e151aa330190ed108348","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.RootPairingCat.Variant2bd9fd932ac12b65e46d89a2fb9721bfd00a2971d3f8e151aa330190ed108348","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2bd9fd932ac12b65e46d89a2fb9721bfd00a2971d3f8e151aa330190ed108348","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/RootSystem/RootPairingCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Scott Carnahan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Carnahan
-/
module

public import Mathlib.LinearAlgebra.RootSystem.Hom
public import Mathlib.CategoryTheory.Category.Basic

/-!
# The category of root pairings

This file defines the category of root pairings, following the definition of category of root data
given in SGA III Exp. 21 Section 6.

## Main definitions:
* `RootPairingCat`: Objects are root pairings.

## TODO

* Forgetful functors
* Functions passing between module maps and root pairing homs

## Implementation details

This is mostly copied from `ModuleCat`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RootPairingCat.Variant2bd9fd932ac12b65e46d89a2fb9721bfd00a2971d3f8e151aa330190ed108348

public section

open CategoryTheory

noncomputable section

universe v u

variable {R : Type u} [CommRing R]

/-- Objects in the category of root pairings. -/
structure RootPairingCat (R : Type u) [CommRing R] where
  /-- The weight space of a root pairing. -/
  weight : Type v
  [weightIsAddCommGroup : AddCommGroup weight]
  [weightIsModule : Module R weight]
  /-- The coweight space of a root pairing. -/
  coweight : Type v
  [coweightIsAddCommGroup : AddCommGroup coweight]
  [coweightIsModule : Module R coweight]
  /-- The set that indexes roots and coroots. -/
  index : Type v
  /-- The root pairing structure. -/
  pairing : RootPairing index R weight coweight

attribute [instance] RootPairingCat.weightIsAddCommGroup RootPairingCat.weightIsModule
attribute [instance] RootPairingCat.coweightIsAddCommGroup RootPairingCat.coweightIsModule

namespace RootPairingCat

instance category : Category.{v, max (v + 1) u} (RootPairingCat.{v} R) where
  Hom P Q := RootPairing.Hom P.pairing Q.pairing
  id P := RootPairing.Hom.id P.pairing
  comp f g := RootPairing.Hom.comp g f

end RootPairingCat
```
