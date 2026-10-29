-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ScPrimeIso.Variant43bed9eda123c5c892005c46610793902a6ecb0d154c8b11d0df32da4df35b0b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"43bed9eda123c5c892005c46610793902a6ecb0d154c8b11d0df32da4df35b0b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.ScPrimeIso.Variant43bed9eda123c5c892005c46610793902a6ecb0d154c8b11d0df32da4df35b0b","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"43bed9eda123c5c892005c46610793902a6ecb0d154c8b11d0df32da4df35b0b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/Embedding/RestrictionHomology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.Embedding.Restriction
import Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex

/-! # The homology of a restriction

Under extremely favourable circumstrnaces, we may relate the
homology of `K : HomologicalComplex C c'` in degree `j'` and
that of `K.restriction e` id a degree `j`  when `e : Embedding c c'`
is an embedding of complex shapes. See `restriction.sc'Iso`
and `restriction.hasHomology`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ScPrimeIso.Variant43bed9eda123c5c892005c46610793902a6ecb0d154c8b11d0df32da4df35b0b

open CategoryTheory Category Limits ZeroObject

variable {ι ι' : Type*} {c : ComplexShape ι} {c' : ComplexShape ι'}

namespace HomologicalComplex

variable {C : Type*} [Category C] [HasZeroMorphisms C]
  (K : HomologicalComplex C c') (e : c.Embedding c') [e.IsRelIff]

namespace restriction

variable (i j k : ι) (hi : c.prev j = i) (hk : c.next j = k)
  {i' j' k' : ι'} (hi' : e.f i = i') (hj' : e.f j = j') (hk' : e.f k = k')
  (hi'' : c'.prev j' = i') (hk'' : c'.next j' = k')

/-- The isomorphism `(K.restriction e).sc' i j k ≅ K.sc' i' j' k'` when
`e` is an embedding of complex shapes, `i'`, `j`, `k`' are the respective
images of `i`, `j`, `k` by `e.f`, `j` is the previous index of `i`, etc. -/
@[simps!]
def sc'Iso : (K.restriction e).sc' i j k ≅ K.sc' i' j' k' :=
  ShortComplex.isoMk (K.restrictionXIso e hi') (K.restrictionXIso e hj') (K.restrictionXIso e hk')
    (by subst hi' hj'; simp [restrictionXIso])
    (by subst hj' hk'; simp [restrictionXIso])

include hi hk hi' hj' hk' hi'' hk'' in
lemma hasHomology [K.HasHomology j'] : (K.restriction e).HasHomology j :=
  ShortComplex.hasHomology_of_iso (K.isoSc' i' j' k' hi'' hk'' ≪≫
    (sc'Iso K e i j k hi' hj' hk' hi'' hk'').symm ≪≫
    ((K.restriction e).isoSc' i j k hi hk).symm)

end restriction

end HomologicalComplex
