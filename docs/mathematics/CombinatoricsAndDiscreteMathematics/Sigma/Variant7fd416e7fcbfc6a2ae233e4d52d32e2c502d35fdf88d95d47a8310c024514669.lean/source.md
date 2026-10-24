# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Sigma.Variant7fd416e7fcbfc6a2ae233e4d52d32e2c502d35fdf88d95d47a8310c024514669

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fdbb61eff8096bbaa63ad08c14fab77ef072b77` · SHA-256 `43032caaad07b77663e1a071ee042566a87c9f4706228effa739d5d3054f71c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SetBiUnionFinsetSigmaUniv.Variant9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SetBiUnionFinsetSigmaUniv.Variant9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Fintype/Sigma.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Finset.Sigma
import Mathlib.Data.Fintype.OfMap

/-!
# fintype instances for sigma types
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SetBiUnionFinsetSigmaUniv.Variant9b0636c329d86dcf525106a893d6e0485dd5430abb01221bc1fddae124ee9700

open Function

open Nat

universe u v

variable {ι α : Type*} {κ : ι → Type*} [Π i, Fintype (κ i)]

open Finset Function

lemma Set.biUnion_finsetSigma_univ (s : Finset ι) (f : Sigma κ → Set α) :
    ⋃ ij ∈ s.sigma fun _ ↦ Finset.univ, f ij = ⋃ i ∈ s, ⋃ j, f ⟨i, j⟩ := by aesop

lemma Set.biUnion_finsetSigma_univ' (s : Finset ι) (f : Π i, κ i → Set α) :
    ⋃ i ∈ s, ⋃ j, f i j = ⋃ ij ∈ s.sigma fun _ ↦ Finset.univ, f ij.1 ij.2 := by aesop

lemma Set.biInter_finsetSigma_univ (s : Finset ι) (f : Sigma κ → Set α) :
    ⋂ ij ∈ s.sigma fun _ ↦ Finset.univ, f ij = ⋂ i ∈ s, ⋂ j, f ⟨i, j⟩ := by aesop

attribute [local simp] Sigma.forall in
lemma Set.biInter_finsetSigma_univ' (s : Finset ι) (f : Π i, κ i → Set α) :
    ⋂ i ∈ s, ⋂ j, f i j = ⋂ ij ∈ s.sigma fun _ ↦ Finset.univ, f ij.1 ij.2 := by aesop

variable [Fintype ι]

instance Sigma.instFintype : Fintype (Σ i, κ i) := ⟨univ.sigma fun _ ↦ univ, by simp⟩
instance PSigma.instFintype : Fintype (Σ' i, κ i) := .ofEquiv _ (Equiv.psigmaEquivSigma _).symm

@[simp] lemma Finset.univ_sigma_univ : univ.sigma (fun _ ↦ univ) = (univ : Finset (Σ i, κ i)) := rfl
```
