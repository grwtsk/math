# Complete source: GRWTSK.Topology.AlgebraicTopology.KanComplex.Variant5ca1f67e85c1e87b6842d59779d1d51fbeedd34fe691f05ec73fe61eb317e91e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `797e1662dea07f26821815efc9ca8c36166e92a2` · SHA-256 `a0e323dc4835e1bfb8ce1b8bfbb588d59bd54206582d5bfb6758b96243fdf7d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.KanComplex.Variant2d9edf8a00f88e6d2468a679104784d6b8647dc0d01a03863a8acd691eeba230","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d9edf8a00f88e6d2468a679104784d6b8647dc0d01a03863a8acd691eeba230","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.KanComplex.Variant2d9edf8a00f88e6d2468a679104784d6b8647dc0d01a03863a8acd691eeba230","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"2d9edf8a00f88e6d2468a679104784d6b8647dc0d01a03863a8acd691eeba230","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicTopology/SimplicialSet/KanComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Joël Riou
-/
import Mathlib.AlgebraicTopology.ModelCategory.IsCofibrant
import Mathlib.AlgebraicTopology.SimplicialSet.CategoryWithFibrations
import Mathlib.AlgebraicTopology.SimplicialSet.Subcomplex

/-!
# Kan complexes

In this file, the abbreviation `KanComplex` is introduced for
fibrant objects in the category `SSet` which is equipped with
Kan fibrations.

In `Mathlib/AlgebraicTopology/Quasicategory/Basic.lean`
we show that every Kan complex is a quasicategory.

## TODO

- Show that the singular simplicial set of a topological space is a Kan complex.

-/


namespace GRWTSK.Topology.AlgebraicTopology.KanComplex.Variant2d9edf8a00f88e6d2468a679104784d6b8647dc0d01a03863a8acd691eeba230

universe u

namespace SSet

open CategoryTheory Simplicial Limits

open modelCategoryQuillen in
/-- A simplicial set `S` is a Kan complex if it is fibrant, which means that
the projection `S ⟶ ⊤_ _` has the right lifting property with respect to horn inclusions. -/
abbrev KanComplex (S : SSet.{u}) : Prop := HomotopicalAlgebra.IsFibrant S

/-- A Kan complex `S` satisfies the following horn-filling condition:
for every nonzero `n : ℕ` and `0 ≤ i ≤ n`,
every map of simplicial sets `σ₀ : Λ[n, i] → S` can be extended to a map `σ : Δ[n] → S`. -/
lemma KanComplex.hornFilling {S : SSet.{u}} [KanComplex S]
    {n : ℕ} {i : Fin (n + 2)} (σ₀ : (Λ[n + 1, i] : SSet) ⟶ S) :
    ∃ σ : Δ[n + 1] ⟶ S, σ₀ = Λ[n + 1, i].ι ≫ σ := by
  have sq' : CommSq σ₀ Λ[n + 1, i].ι (terminal.from S) (terminal.from _) := ⟨by simp⟩
  exact ⟨sq'.lift, by simp⟩

end SSet
```
