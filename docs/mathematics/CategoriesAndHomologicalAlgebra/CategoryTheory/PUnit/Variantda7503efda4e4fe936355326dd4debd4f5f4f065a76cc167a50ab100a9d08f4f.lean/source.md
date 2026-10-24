# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PUnit.Variantda7503efda4e4fe936355326dd4debd4f5f4f065a76cc167a50ab100a9d08f4f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `904b8b709f37c92d7ab3ba10a18124359a32ef5d` · SHA-256 `7add99f023d2a3763416a0224435421fe84c4dda5f65385a90ffbabe60b71eee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PunitEquivDiscretePUnit.Variantf2c0e4c229d8afe60bb08a1b45356eb338b0bc230b7aef73bcaffa68cb646a36","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2c0e4c229d8afe60bb08a1b45356eb338b0bc230b7aef73bcaffa68cb646a36","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PunitEquivDiscretePUnit.Variantf2c0e4c229d8afe60bb08a1b45356eb338b0bc230b7aef73bcaffa68cb646a36","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f2c0e4c229d8afe60bb08a1b45356eb338b0bc230b7aef73bcaffa68cb646a36","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/AlgebraicTopology/FundamentalGroupoid/PUnit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Praneeth Kolichala. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Praneeth Kolichala
-/
import Mathlib.CategoryTheory.PUnit
import Mathlib.AlgebraicTopology.FundamentalGroupoid.Basic


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PunitEquivDiscretePUnit.Variantf2c0e4c229d8afe60bb08a1b45356eb338b0bc230b7aef73bcaffa68cb646a36

#align_import algebraic_topology.fundamental_groupoid.punit from "leanprover-community/mathlib"@"70fd9563a21e7b963887c9360bd29b2393e6225a"

/-!
# Fundamental groupoid of punit

The fundamental groupoid of punit is naturally isomorphic to `CategoryTheory.Discrete PUnit`
-/


noncomputable section

open CategoryTheory

universe u v

namespace Path

instance : Subsingleton (Path PUnit.unit PUnit.unit) :=
  ⟨fun x y => by ext⟩

end Path

namespace FundamentalGroupoid

instance {x y : FundamentalGroupoid PUnit} : Subsingleton (x ⟶ y) := by
  convert_to Subsingleton (Path.Homotopic.Quotient PUnit.unit PUnit.unit)
  apply Quotient.instSubsingletonQuotient

/-- Equivalence of groupoids between fundamental groupoid of punit and punit -/
def punitEquivDiscretePUnit : FundamentalGroupoid PUnit.{u + 1} ≌ Discrete PUnit.{v + 1} :=
  CategoryTheory.Equivalence.mk (Functor.star _) ((CategoryTheory.Functor.const _).obj PUnit.unit)
    -- Porting note: was `by decide`
    (NatIso.ofComponents fun _ => eqToIso (by simp))
    (Functor.punitExt _ _)
#align fundamental_groupoid.punit_equiv_discrete_punit FundamentalGroupoid.punitEquivDiscretePUnit

end FundamentalGroupoid
```
