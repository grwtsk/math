# Complete source: GRWTSK.Topology.GeneralTopology.UniformSpaces.OfFun.Variant7fc3cb6bdfd6e692c2d81a5727d330e4383c56db2d15b85888dcb5792c5d7047

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ed7e67f428bd2c83084508a7348f59e19c59e91` · SHA-256 `c5bcb1673a8ba33e7129e5b1159dcd23ce1645c974652db062a9e041b1761436`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology.UniformSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.UniformSpaces.OfFun.Variant9403c49851b21306aa44506daa1d6f9a18bcbdc6d7ee75ab76cab38679a14864","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9403c49851b21306aa44506daa1d6f9a18bcbdc6d7ee75ab76cab38679a14864","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.UniformSpaces.SourceCorpus.OfFun.Variant9403c49851b21306aa44506daa1d6f9a18bcbdc6d7ee75ab76cab38679a14864","mathematical_subject":"Topology.UniformSpaces","original_sha256":"9403c49851b21306aa44506daa1d6f9a18bcbdc6d7ee75ab76cab38679a14864","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/UniformSpace/OfFun.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.UniformSpace.Defs

/-!
# Construct a `UniformSpace` from a `dist`-like function

In this file we provide a constructor for `UniformSpace`
given a `dist`-like function

## TODO

RFC: use `UniformSpace.Core.mkOfBasis`? This will change defeq here and there
-/


namespace GRWTSK.Topology.GeneralTopology.UniformSpaces.OfFun.Variant9403c49851b21306aa44506daa1d6f9a18bcbdc6d7ee75ab76cab38679a14864

open Filter Set
open scoped Uniformity

variable {X M : Type*}

namespace UniformSpace

/-- Define a `UniformSpace` using a "distance" function. The function can be, e.g., the
distance in a (usual or extended) metric space or an absolute value on a ring. -/
def ofFun [AddCommMonoid M] [PartialOrder M]
    (d : X → X → M) (refl : ∀ x, d x x = 0)
    (symm : ∀ x y, d x y = d y x) (triangle : ∀ x y z, d x z ≤ d x y + d y z)
    (half : ∀ ε > (0 : M), ∃ δ > (0 : M), ∀ x < δ, ∀ y < δ, x + y < ε) :
    UniformSpace X :=
  .ofCore
    { uniformity := ⨅ r > 0, 𝓟 { x | d x.1 x.2 < r }
      refl := le_iInf₂ fun r hr => principal_mono.2 <| idRel_subset.2 fun x => by simpa [refl]
      symm := tendsto_iInf_iInf fun r => tendsto_iInf_iInf fun _ => tendsto_principal_principal.2
        fun x hx => by rwa [mem_setOf, symm]
      comp := le_iInf₂ fun r hr => let ⟨δ, h0, hδr⟩ := half r hr; le_principal_iff.2 <|
        mem_of_superset
          (mem_lift' <| mem_iInf_of_mem δ <| mem_iInf_of_mem h0 <| mem_principal_self _)
          fun (x, z) ⟨y, h₁, h₂⟩ => (triangle _ _ _).trans_lt (hδr _ h₁ _ h₂) }

theorem hasBasis_ofFun [AddCommMonoid M] [LinearOrder M]
    (h₀ : ∃ x : M, 0 < x) (d : X → X → M) (refl : ∀ x, d x x = 0) (symm : ∀ x y, d x y = d y x)
    (triangle : ∀ x y z, d x z ≤ d x y + d y z)
    (half : ∀ ε > (0 : M), ∃ δ > (0 : M), ∀ x < δ, ∀ y < δ, x + y < ε) :
    𝓤[.ofFun d refl symm triangle half].HasBasis ((0 : M) < ·) (fun ε => { x | d x.1 x.2 < ε }) :=
  hasBasis_biInf_principal'
    (fun ε₁ h₁ ε₂ h₂ => ⟨min ε₁ ε₂, lt_min h₁ h₂, fun _x hx => lt_of_lt_of_le hx (min_le_left _ _),
      fun _x hx => lt_of_lt_of_le hx (min_le_right _ _)⟩) h₀

end UniformSpace
```
