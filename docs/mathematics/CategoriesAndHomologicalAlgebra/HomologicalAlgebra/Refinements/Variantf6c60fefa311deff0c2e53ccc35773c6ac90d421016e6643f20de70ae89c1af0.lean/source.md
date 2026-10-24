# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Refinements.Variantf6c60fefa311deff0c2e53ccc35773c6ac90d421016e6643f20de70ae89c1af0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90665f2bf112f327d7366470a86594ee28a4029c` · SHA-256 `a7b728677fab9c967bcc286951b123f92da043c958944b1e39e39f0c47513907`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.EqLiftCyclesHomology.Variantfe826e2461754c62bf02244bb953a9c3fed2f44ca7a2c2625cade9cc93cf124f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe826e2461754c62bf02244bb953a9c3fed2f44ca7a2c2625cade9cc93cf124f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.EqLiftCyclesHomology.Variantfe826e2461754c62bf02244bb953a9c3fed2f44ca7a2c2625cade9cc93cf124f","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"fe826e2461754c62bf02244bb953a9c3fed2f44ca7a2c2625cade9cc93cf124f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/Refinements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.CategoryTheory.Abelian.Refinements
import Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex

/-!
# Refinements

This file contains lemmas about "refinements" that are specific to
the study of the homology of `HomologicalComplex`. General
lemmas about refinements and the case of `ShortComplex` appear
in the file `CategoryTheory.Abelian.Refinements`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.EqLiftCyclesHomology.Variantfe826e2461754c62bf02244bb953a9c3fed2f44ca7a2c2625cade9cc93cf124f

open CategoryTheory

variable {C ι : Type*} [Category C] [Abelian C] {c : ComplexShape ι}
  (K : HomologicalComplex C c)

namespace HomologicalComplex

lemma eq_liftCycles_homologyπ_up_to_refinements {A : C} {i : ι} (γ : A ⟶ K.homology i)
    (j : ι) (hj : c.next i = j) :
    ∃ (A' : C) (π : A' ⟶ A) (_ : Epi π) (z : A' ⟶ K.X i) (hz : z ≫ K.d i j = 0),
      π ≫ γ = K.liftCycles z j hj hz ≫ K.homologyπ i := by
  subst hj
  exact (K.sc i).eq_liftCycles_homologyπ_up_to_refinements γ

end HomologicalComplex
```
