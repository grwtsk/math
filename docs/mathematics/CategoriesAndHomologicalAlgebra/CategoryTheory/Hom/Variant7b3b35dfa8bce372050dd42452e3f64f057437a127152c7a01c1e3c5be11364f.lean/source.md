# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Hom.Variant7b3b35dfa8bce372050dd42452e3f64f057437a127152c7a01c1e3c5be11364f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b76bb022f0982ac8f7c174e599cf33e586978d78` · SHA-256 `4f16a7d82369b96335ca9e53a5abc82820ac2ce7ca9cb65957eb188893f6bba2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Hom.Variant5cd71a18687f6336092e7be14a1256cba57fdfd8e5db1201fb5bda17604d3a1d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5cd71a18687f6336092e7be14a1256cba57fdfd8e5db1201fb5bda17604d3a1d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Hom.Variant5cd71a18687f6336092e7be14a1256cba57fdfd8e5db1201fb5bda17604d3a1d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"5cd71a18687f6336092e7be14a1256cba57fdfd8e5db1201fb5bda17604d3a1d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Functor/Hom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Reid Barton. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Reid Barton, Kim Morrison
-/
module

public import Mathlib.CategoryTheory.Types.Basic

/-!
# The hom functor

The hom functor, sending `(X, Y)` to the type `X ⟶ Y`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Hom.Variant5cd71a18687f6336092e7be14a1256cba57fdfd8e5db1201fb5bda17604d3a1d

@[expose] public section


universe v u

open Opposite

open CategoryTheory

namespace CategoryTheory.Functor

variable (C : Type u) [Category.{v} C]

/-- `Functor.hom` is the hom-pairing, sending `(X, Y)` to `X ⟶ Y`, contravariant in `X` and
covariant in `Y`. -/
@[simps]
def hom : Cᵒᵖ × C ⥤ Type v where
  obj p := unop p.1 ⟶ p.2
  map f := ↾fun h => f.1.unop ≫ h ≫ f.2

end CategoryTheory.Functor
```
