# Complete source: GRWTSK.Algebra.UniversalAlgebra.Abelian.Variantb2c9f155044234241c29bf036bd6f70aac8eca119422e626422d9ef5083ef3cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89bf6054a50ccded44dc607a80100f92869a5202` · SHA-256 `293286c65047f146ce514b45045ae47785f60340c49abde8edfbad3fba3c44e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CondensedAb.Variantaebbea73ce06e2baa62e7adc935fa9a7a35452da9bd671a39883e14e674f101d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aebbea73ce06e2baa62e7adc935fa9a7a35452da9bd671a39883e14e674f101d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CondensedAb.Variantaebbea73ce06e2baa62e7adc935fa9a7a35452da9bd671a39883e14e674f101d","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"aebbea73ce06e2baa62e7adc935fa9a7a35452da9bd671a39883e14e674f101d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Condensed/Abelian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
import Mathlib.Topology.Sheaves.Abelian
import Mathlib.Algebra.Category.GroupCat.Abelian
import Mathlib.Algebra.Category.GroupCat.FilteredColimits
import Mathlib.Condensed.Basic

/-!

Condensed abelian groups form an abelian category.

-/


namespace GRWTSK.Algebra.UniversalAlgebra.CondensedAb.Variantaebbea73ce06e2baa62e7adc935fa9a7a35452da9bd671a39883e14e674f101d

universe u

open CategoryTheory Limits

/--
The category of condensed abelian groups, defined as sheaves of abelian groups over
`CompHaus` with respect to the coherent Grothendieck topology.
-/
abbrev CondensedAb := Condensed.{u} AddCommGroupCat.{u+1}

noncomputable instance CondensedAb.abelian :
    CategoryTheory.Abelian CondensedAb.{u} :=
  letI : PreservesLimits (forget AddCommGroupCat.{u+1}) :=
    AddCommGroupCat.forgetPreservesLimits.{u+1, u+1}
  CategoryTheory.sheafIsAbelian
```
