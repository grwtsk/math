# Complete source: GRWTSK.Algebra.UniversalAlgebra.EnoughInjectives.Varianta675e4734ab2c611b554298b2819fc6108a34280656ac0fce1c8766ae210d5f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `155ce470d754e5249b361a5b367fe7afd487d79c` · SHA-256 `bac1147aab3bb05e9420fff70fdac68b8a3c7e6b872dcd19186fe4a48acdf184`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CharacterModule.Variantc66a866cc16af9b2b301a5180b77de92692f64469ec4eb05e8e98687e295e887","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c66a866cc16af9b2b301a5180b77de92692f64469ec4eb05e8e98687e295e887","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CharacterModule.Variantc66a866cc16af9b2b301a5180b77de92692f64469ec4eb05e8e98687e295e887","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"c66a866cc16af9b2b301a5180b77de92692f64469ec4eb05e8e98687e295e887","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/Grp/EnoughInjectives.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang, Junyan Xu
-/

import Mathlib.Algebra.Module.CharacterModule
import Mathlib.Algebra.Category.Grp.EquivalenceGroupAddGroup
import Mathlib.Algebra.Category.Grp.EpiMono
import Mathlib.Algebra.Category.Grp.Injective

/-!

# Category of abelian groups has enough injectives

Given an abelian group `A`, then `i : A ⟶ ∏_{A⋆} ℚ ⧸ ℤ` defined by `i : a ↦ c ↦ c a` is an
injective presentation for `A`, hence category of abelian groups has enough injectives.

## Implementation notes

This file is split from `Mathlib/Algebra/Category/Grp/Injective.lean` to prevent import loops.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.CharacterModule.Variantc66a866cc16af9b2b301a5180b77de92692f64469ec4eb05e8e98687e295e887

open CategoryTheory

universe u

namespace AddCommGrp

open CharacterModule

instance enoughInjectives : EnoughInjectives AddCommGrp.{u} where
  presentation A_ := Nonempty.intro
    { J := of <| (CharacterModule A_) → ULift.{u} (AddCircle (1 : ℚ))
      injective := injective_of_divisible _
      f := ofHom ⟨⟨fun a i ↦ ULift.up (i a), by aesop⟩, by aesop⟩
      mono := (AddCommGrp.mono_iff_injective _).mpr <| (injective_iff_map_eq_zero _).mpr
        fun _ h0 ↦ eq_zero_of_character_apply (congr_arg ULift.down <| congr_fun h0 ·) }

end AddCommGrp


namespace CommGrp

instance enoughInjectives : EnoughInjectives CommGrp.{u} :=
  EnoughInjectives.of_equivalence commGroupAddCommGroupEquivalence.functor

end CommGrp
```
