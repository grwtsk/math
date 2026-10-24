# Complete source: GRWTSK.Topology.MetricTopology.Pi.Variant8da1f8dc521472ff6c4708ee89afa45998356a1497c2ebc13f824950fd9c91f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f162d3e56ef3087fb5b7d2aceb922b09441b0dba` · SHA-256 `ae3989caea8b9cd70ce1b362f85063d3ac50e8801b9e4bc114666adaaf360c04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.EdistPiDef.Variant9ce9189ba8c6a657f84e4b61f64cca8ca86d568e43216fdf6aad7a10db591b30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ce9189ba8c6a657f84e4b61f64cca8ca86d568e43216fdf6aad7a10db591b30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.EdistPiDef.Variant9ce9189ba8c6a657f84e4b61f64cca8ca86d568e43216fdf6aad7a10db591b30","mathematical_subject":"Topology.MetricSpaces","original_sha256":"9ce9189ba8c6a657f84e4b61f64cca8ca86d568e43216fdf6aad7a10db591b30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/EMetricSpace/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Robert Y. Lewis, Johannes Hölzl, Mario Carneiro, Sébastien Gouëzel
-/
module

public import Mathlib.Topology.EMetricSpace.Basic
public import Mathlib.Topology.UniformSpace.Pi

/-!
# Indexed product of extended metric spaces
-/


namespace GRWTSK.Topology.MetricTopology.EdistPiDef.Variant9ce9189ba8c6a657f84e4b61f64cca8ca86d568e43216fdf6aad7a10db591b30

public section

open Set Filter

universe u v w

variable {α : Type u} {β : Type v} {X : Type*}

open scoped Uniformity Topology NNReal ENNReal Pointwise

variable [TopologicalSpace α] [WeakPseudoEMetricSpace α]

open EMetric

section Pi

open Finset

variable {X : β → Type*} [Fintype β]

instance [∀ b, EDist (X b)] : EDist (∀ b, X b) where
  edist f g := Finset.sup univ fun b => edist (f b) (g b)

theorem edist_pi_def [∀ b, EDist (X b)] (f g : ∀ b, X b) :
    edist f g = Finset.sup univ fun b => edist (f b) (g b) :=
  rfl

theorem edist_le_pi_edist [∀ b, EDist (X b)] (f g : ∀ b, X b) (b : β) :
    edist (f b) (g b) ≤ edist f g :=
  le_sup (f := fun b => edist (f b) (g b)) (Finset.mem_univ b)

theorem edist_pi_le_iff [∀ b, EDist (X b)] {f g : ∀ b, X b} {d : ℝ≥0∞} :
    edist f g ≤ d ↔ ∀ b, edist (f b) (g b) ≤ d :=
  Finset.sup_le_iff.trans <| by simp only [Finset.mem_univ, forall_const]

theorem edist_pi_const_le (a b : α) : (edist (fun _ : β => a) fun _ => b) ≤ edist a b :=
  edist_pi_le_iff.2 fun _ => le_rfl

@[simp]
theorem edist_pi_const [Nonempty β] (a b : α) : (edist (fun _ : β => a) fun _ => b) = edist a b :=
  Finset.sup_const univ_nonempty (edist a b)

/-- The product of a finite number of pseudoemetric spaces, with the max distance, is still
a pseudoemetric space.
This construction would also work for infinite products, but it would not give rise
to the product topology. Hence, we only formalize it in the good situation of finitely many
spaces. -/
instance pseudoEMetricSpacePi [∀ b, PseudoEMetricSpace (X b)] : PseudoEMetricSpace (∀ b, X b) where
  edist_self f := bot_unique <| Finset.sup_le <| by simp
  edist_comm f g := by simp [edist_pi_def, edist_comm]
  edist_triangle _ g _ := edist_pi_le_iff.2 fun b => le_trans (edist_triangle _ (g b) _)
    (add_le_add (edist_le_pi_edist _ _ _) (edist_le_pi_edist _ _ _))
  toUniformSpace := Pi.uniformSpace _
  uniformity_edist := by
    simp only [Pi.uniformity, PseudoEMetricSpace.uniformity_edist, comap_iInf, gt_iff_lt,
      preimage_ofPred_eq, comap_principal, edist_pi_def]
    rw [iInf_comm]; congr; funext ε
    rw [iInf_comm]; congr; funext εpos
    simp [ofPred_forall, εpos]

end Pi

section Pi

variable {X : β → Type*} [Fintype β]

/-- The product of a finite number of emetric spaces, with the max distance, is still
an emetric space.
This construction would also work for infinite products, but it would not give rise
to the product topology. Hence, we only formalize it in the good situation of finitely many
spaces. -/
instance emetricSpacePi [∀ b, EMetricSpace (X b)] : EMetricSpace (∀ b, X b) :=
  .ofT0PseudoEMetricSpace _

end Pi
```
