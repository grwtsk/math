# Complete source: GRWTSK.Topology.AlgebraicTopology.Boundary.Variant1ab983e8da2f0a122e6fd8c3241e6479951a246b70f97c605b0c968b342a68d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d73e463ec15c0ac5bf60ba7fe7741ef0489bb717` · SHA-256 `706e9e3867834fca46d11af203940670f4cae13ce7d8561a3c9ccd9dee00a1a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.Boundary.Variant416c4c6a018095088c6ec5040f3a2c00e3899930143870f27d64da25450a0cad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"416c4c6a018095088c6ec5040f3a2c00e3899930143870f27d64da25450a0cad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.Boundary.Variant416c4c6a018095088c6ec5040f3a2c00e3899930143870f27d64da25450a0cad","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"416c4c6a018095088c6ec5040f3a2c00e3899930143870f27d64da25450a0cad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicTopology/SimplicialSet/Boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Kim Morrison, Adam Topaz
-/
import Mathlib.AlgebraicTopology.SimplicialSet.StdSimplex

/-!
# The boundary of the standard simplex

We introduce the boundary `∂Δ[n]` of the standard simplex `Δ[n]`.
(These notations become available by doing `open Simplicial`.)

## Future work

There isn't yet a complete API for simplices, boundaries, and horns.
As an example, we should have a function that constructs
from a non-surjective order preserving function `Fin n → Fin n`
a morphism `Δ[n] ⟶ ∂Δ[n]`.


-/


namespace GRWTSK.Topology.AlgebraicTopology.Boundary.Variant416c4c6a018095088c6ec5040f3a2c00e3899930143870f27d64da25450a0cad

universe u

open Simplicial

namespace SSet

/-- The boundary `∂Δ[n]` of the `n`-th standard simplex consists of
all `m`-simplices of `stdSimplex n` that are not surjective
(when viewed as monotone function `m → n`). -/
def boundary (n : ℕ) : (Δ[n] : SSet.{u}).Subcomplex where
  obj _ := setOf (fun s ↦ ¬Function.Surjective (stdSimplex.asOrderHom s))
  map _ _ hs h := hs (Function.Surjective.of_comp h)

/-- The boundary `∂Δ[n]` of the `n`-th standard simplex -/
scoped[Simplicial] notation3 "∂Δ[" n "]" => SSet.boundary n

lemma boundary_eq_iSup (n : ℕ) :
    boundary.{u} n = ⨆ (i : Fin (n + 1)), stdSimplex.face {i}ᶜ := by
  ext
  simp [stdSimplex.face_obj, boundary, Function.Surjective]
  tauto

/-- The inclusion of the boundary of the `n`-th standard simplex into that standard simplex. -/
@[deprecated boundary (since := "2025-01-26")]
abbrev boundaryInclusion (n : ℕ) : (∂Δ[n] : SSet.{u}) ⟶ Δ[n] := ∂Δ[n].ι

end SSet
```
