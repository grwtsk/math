# Complete source: GRWTSK.Algebra.LinearAlgebra.RestrictScalars.Variant5a0bb903b388ce6ad4d7b7cef7f6a21228df66e1f6c277d657ae194f1475437f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4237c0e4180fc14166c24651a68f93ff610e70b4` · SHA-256 `559ba5488d2562fddad3a7f1cc9b45c7c5bdb7f51418c010af9cd27893af6047`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RestrictScalarsData.Variant3b5830cbe139bd5f8078f8a3a8af7fd483d59887714f1a7701adda82aeaf4478","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b5830cbe139bd5f8078f8a3a8af7fd483d59887714f1a7701adda82aeaf4478","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.RestrictScalarsData.Variant3b5830cbe139bd5f8078f8a3a8af7fd483d59887714f1a7701adda82aeaf4478","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"3b5830cbe139bd5f8078f8a3a8af7fd483d59887714f1a7701adda82aeaf4478","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/Presentation/RestrictScalars.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Module.Presentation.DirectSum
import Mathlib.Algebra.Module.Presentation.Cokernel

/-!
# Presentation of the restriction of scalars of a module

Given a morphism of rings `A → B` and a `B`-module `M`, we obtain a presentation
of `M` as a `A`-module from a presentation of `M` as `B`-module,
a presentation of `B` as a `A`-module (and some additional data).

## TODO
* deduce that if `B` is a finitely presented as an `A`-module and `M` is
  finitely presented as an `B`-module, then `M` is finitely presented as an `A`-module

-/


namespace GRWTSK.Algebra.LinearAlgebra.RestrictScalarsData.Variant3b5830cbe139bd5f8078f8a3a8af7fd483d59887714f1a7701adda82aeaf4478

namespace Module

variable {B : Type*} [Ring B] {M : Type*} [AddCommGroup M] [Module B M]
  [DecidableEq B]
  (presM : Presentation B M) [DecidableEq presM.G]
  {A : Type*} [CommRing A] [Algebra A B] [Module A M] [IsScalarTower A B M]
  (presB : Presentation A B)

namespace Presentation

/-- The additional data that is necessary in order to obtain a presentation
of the restriction of scalars of a module. -/
abbrev RestrictScalarsData : Type _ :=
  (presB.finsupp presM.G).CokernelData
    (LinearMap.restrictScalars A presM.map)
    (fun (⟨g, g'⟩ : presB.G × presM.R) ↦ presB.var g • Finsupp.single g' (1 : B))

variable (data : presM.RestrictScalarsData presB)

/-- A presentation of the restriction of scalars from `B` to `A` of a `B`-module `M`,
given a presentation of `M` as a `B`-module, a presentation of `B` as an `A`-module,
and an additional data. -/
noncomputable def restrictScalars : Presentation A M :=
  ofExact (g := LinearMap.restrictScalars A presM.π) (presB.finsupp presM.G) data
    presM.exact presM.surjective_π (by
      ext v
      dsimp
      simp only [Submodule.mem_top, iff_true]
      apply Finsupp.induction
      · simp
      · intro r b w _ _ hw
        refine Submodule.add_mem _ ?_ hw
        obtain ⟨β, rfl⟩ := presB.surjective_π b
        apply Finsupp.induction (motive := fun β ↦ Finsupp.single r (presB.π β) ∈ _)
        · simp
        · intro g a f _ _ hf
          rw [map_add, Finsupp.single_add]
          refine Submodule.add_mem _ ?_ hf
          rw [← Finsupp.smul_single_one, ← Finsupp.smul_single_one,
            map_smul, Relations.Solution.π_single, smul_assoc]
          exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨⟨g, r⟩, rfl⟩))

end Presentation

end Module
```
