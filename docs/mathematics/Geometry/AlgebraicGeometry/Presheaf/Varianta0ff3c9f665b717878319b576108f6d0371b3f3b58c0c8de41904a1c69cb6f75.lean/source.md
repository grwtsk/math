# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Presheaf.Varianta0ff3c9f665b717878319b576108f6d0371b3f3b58c0c8de41904a1c69cb6f75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9296d57c8243d57927710035afa6ee58152d7385` · SHA-256 `2345ddaf63fbd7b31705ea1f2130c15896a67efe504badb452e5a08f67b15f4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.RingCatSheaf.Variant17074ef85bdca5727ad286e32fabc7348bfff123ff05956b7d8376e93bf84b94","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17074ef85bdca5727ad286e32fabc7348bfff123ff05956b7d8376e93bf84b94","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.RingCatSheaf.Variant17074ef85bdca5727ad286e32fabc7348bfff123ff05956b7d8376e93bf84b94","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"17074ef85bdca5727ad286e32fabc7348bfff123ff05956b7d8376e93bf84b94","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicGeometry/Modules/Presheaf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Category.ModuleCat.Presheaf
import Mathlib.AlgebraicGeometry.Scheme
import Mathlib.CategoryTheory.Sites.Whiskering

/-!
# The category of presheaves of modules over a scheme

In this file, given a scheme `X`, we define the category of presheaves
of modules over `X`. As categories of presheaves of modules are
defined for presheaves of rings (and not presheaves of commutative rings),
we also introduce a definition `X.ringCatSheaf` for the underlying sheaf
of rings of `X`.

-/


namespace GRWTSK.Geometry.AlgebraicGeometry.RingCatSheaf.Variant17074ef85bdca5727ad286e32fabc7348bfff123ff05956b7d8376e93bf84b94

universe u

open CategoryTheory

namespace AlgebraicGeometry.Scheme

variable (X : Scheme.{u})

/-- The underlying sheaf of rings of a scheme. -/
abbrev ringCatSheaf : TopCat.Sheaf RingCat.{u} X :=
  (sheafCompose _ (forget₂ CommRingCat RingCat)).obj X.sheaf

/-- The category of presheaves of modules over a scheme. -/
nonrec abbrev PresheafOfModules := PresheafOfModules.{u} X.ringCatSheaf.val

end AlgebraicGeometry.Scheme
```
