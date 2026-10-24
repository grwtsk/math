# Complete source: GRWTSK.Topology.AlgebraicTopology.PoincareConjecture.Variant227dcb4b0e72559dbb63dd7397818d2b791ebd48af4fff7b432de051c8e80cf2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f3b092761895f47fba1b2c4e28f74bf783cd060` · SHA-256 `47dd9427cf8b9add95c5d66795ab16fb1def38fba38f7b9bc4d3a131c3e4f150`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.ContinuousMapHomotopyEquivNonemptyDiffeomorphSphere.Variant05da54540c28a513ae5cfb32f78ef80c32cb3db6411a879f14f6a8172de245e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05da54540c28a513ae5cfb32f78ef80c32cb3db6411a879f14f6a8172de245e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.ContinuousMapHomotopyEquivNonemptyDiffeomorphSphere.Variant05da54540c28a513ae5cfb32f78ef80c32cb3db6411a879f14f6a8172de245e4","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"05da54540c28a513ae5cfb32f78ef80c32cb3db6411a879f14f6a8172de245e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Geometry/Manifold/PoincareConjecture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
module

public import Mathlib.Geometry.Manifold.Instances.Sphere
public import Mathlib.Topology.Homotopy.Equiv
public import Mathlib.Util.Superscript

/-!
# Statement of the generalized Poincaré conjecture

https://en.wikipedia.org/wiki/Generalized_Poincar%C3%A9_conjecture

The `proof_wanted` statements of the generalized Poincaré conjecture and related conjectures
now live in `Wanted/Geometry/Manifold/PoincareConjecture.lean`.

The mathlib notation `≃ₕ` stands for a homotopy equivalence, `≃ₜ` stands for a homeomorphism,
and `≃ₘ⟮𝓡 n, 𝓡 n⟯` stands for a diffeomorphism, where `𝓡 n` is the `n`-dimensional Euclidean
space viewed as a model space.
-/


namespace GRWTSK.Topology.AlgebraicTopology.ContinuousMapHomotopyEquivNonemptyDiffeomorphSphere.Variant05da54540c28a513ae5cfb32f78ef80c32cb3db6411a879f14f6a8172de245e4

@[expose] public section

open scoped Manifold ContDiff
open Metric (sphere)

local macro:max "ℝ" noWs n:superscript(term) : term => `(EuclideanSpace ℝ (Fin $(⟨n.raw[0]⟩)))
local macro:max "𝕊" noWs n:superscript(term) : term =>
  `(sphere (0 : EuclideanSpace ℝ (Fin ($(⟨n.raw[0]⟩) + 1))) 1)

variable (M : Type*) [TopologicalSpace M]

open ContinuousMap

/-- The smooth Poincaré conjecture; true for n = 1, 2, 3, 5, 6, 12, 56, and 61,
open for n = 4, and it is conjectured that there are no other n > 4 for which it is true
(Conjecture 1.17, https://annals.math.princeton.edu/2017/186-2/p03). -/
def ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere (n : ℕ) : Prop :=
  ∀ (_ : ChartedSpace ℝⁿ M) (_ : IsManifold (𝓡 n) ∞ M),
    M ≃ₕ 𝕊ⁿ → Nonempty (M ≃ₘ⟮𝓡 n, 𝓡 n⟯ 𝕊ⁿ)
```
