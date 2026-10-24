# Complete source: GRWTSK.Topology.GeneralTopology.KrullDimension.Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f28ed8f4918e021d08519bb5bcb45c2bb91beea` · SHA-256 `32f27a84daee1e9341c885ec4318bc2c9adf74a9c69ec3e4aaa19bcfd7162e1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TopologicalKrullDim.Variantb2c7e010f9aa15e61e8560aa6a2410b039960cf167446a02a2d1459abd760d26","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2c7e010f9aa15e61e8560aa6a2410b039960cf167446a02a2d1459abd760d26","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TopologicalKrullDim.Variantb2c7e010f9aa15e61e8560aa6a2410b039960cf167446a02a2d1459abd760d26","mathematical_subject":"Topology.GeneralTopology","original_sha256":"b2c7e010f9aa15e61e8560aa6a2410b039960cf167446a02a2d1459abd760d26","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/KrullDimension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang, Fangming Li
-/
import Mathlib.Order.KrullDimension
import Mathlib.Topology.Homeomorph.Lemmas
import Mathlib.Topology.Sets.Closeds

/-!
# The Krull dimension of a topological space

The Krull dimension of a topological space is the order theoretic Krull dimension applied to the
collection of all its subsets that are closed and irreducible. Unfolding this definition, it is
the length of longest series of closed irreducible subsets ordered by inclusion.
-/


namespace GRWTSK.Topology.GeneralTopology.TopologicalKrullDim.Variantb2c7e010f9aa15e61e8560aa6a2410b039960cf167446a02a2d1459abd760d26

open Order TopologicalSpace Topology

/--
The Krull dimension of a topological space is the supremum of lengths of chains of
closed irreducible sets.
-/
noncomputable def topologicalKrullDim (T : Type*) [TopologicalSpace T] : WithBot ℕ∞ :=
  krullDim (IrreducibleCloseds T)

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

/--
Map induced on irreducible closed subsets by a closed continuous map `f`.
This is just a wrapper around the image of `f` together with proofs that it
preserves irreducibility (by continuity) and closedness (since `f` is closed).
-/
def IrreducibleCloseds.map {f : X → Y} (hf1 : Continuous f) (hf2 : IsClosedMap f)
    (c : IrreducibleCloseds X) :
    IrreducibleCloseds Y where
  carrier := f '' c
  is_irreducible' := c.is_irreducible'.image f hf1.continuousOn
  is_closed' := hf2 c c.is_closed'

/--
Taking images under a closed embedding is strictly monotone on the preorder of irreducible closeds.
-/
lemma IrreducibleCloseds.map_strictMono {f : X → Y} (hf : IsClosedEmbedding f) :
    StrictMono (IrreducibleCloseds.map hf.continuous hf.isClosedMap) :=
  fun ⦃_ _⦄ UltV ↦ hf.injective.image_strictMono UltV

/--
If `f : X → Y` is a closed embedding, then the Krull dimension of `X` is less than or equal
to the Krull dimension of `Y`.
-/
theorem IsClosedEmbedding.topologicalKrullDim_le (f : X → Y) (hf : IsClosedEmbedding f) :
    topologicalKrullDim X ≤ topologicalKrullDim Y :=
  krullDim_le_of_strictMono _ (IrreducibleCloseds.map_strictMono hf)

/-- The topological Krull dimension is invariant under homeomorphisms -/
theorem IsHomeomorph.topologicalKrullDim_eq (f : X → Y) (h : IsHomeomorph f) :
    topologicalKrullDim X = topologicalKrullDim Y :=
  have fwd : topologicalKrullDim X ≤ topologicalKrullDim Y :=
    IsClosedEmbedding.topologicalKrullDim_le f h.isClosedEmbedding
  have bwd : topologicalKrullDim Y ≤ topologicalKrullDim X :=
    IsClosedEmbedding.topologicalKrullDim_le (h.homeomorph f).symm
    (h.homeomorph f).symm.isClosedEmbedding
  le_antisymm fwd bwd
```
