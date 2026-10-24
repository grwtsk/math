# Complete source: GRWTSK.Topology.GeneralTopology.Finset.Variantf1c7e98efb1e16ba1a75fd94dafda316edb77d0c4fd7ca6ba98746a6765056bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0bd0a3b0b9d1ef11e9f2b32f3c3c5d01c5fc8547` · SHA-256 `913973dd0bed4f7940ab5c65f2234bb8cfa470afca395af93d05e5d7b12ce905`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.MemPiFinsetIffZeroTail.Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.MemPiFinsetIffZeroTail.Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf","mathematical_subject":"Topology.GeneralTopology","original_sha256":"38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Fin/Tuple/Finset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Bolton Bailey. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bolton Bailey
-/
import Mathlib.Data.Finset.Prod
import Mathlib.Data.Fintype.Pi

/-!
# Fin-indexed tuples of finsets
-/


namespace GRWTSK.Topology.GeneralTopology.MemPiFinsetIffZeroTail.Variant38ff3cd3895f5f368f4ffd873ace75b474439ff7ea60e603973cb3f62ac89fbf

open Fin Fintype

namespace Fin
variable {n : ℕ} {α : Fin (n + 1) → Type*} {f : ∀ i, α i} {s : ∀ i, Finset (α i)} {p : Fin (n + 1)}

open Fintype

lemma mem_piFinset_iff_zero_tail :
    f ∈ Fintype.piFinset s ↔ f 0 ∈ s 0 ∧ tail f ∈ piFinset (tail s) := by
  simp only [Fintype.mem_piFinset, forall_fin_succ, tail]

lemma mem_piFinset_iff_last_init :
    f ∈ piFinset s ↔ f (last n) ∈ s (last n) ∧ init f ∈ piFinset (init s) := by
  simp only [Fintype.mem_piFinset, forall_fin_succ', init, and_comm]

lemma mem_piFinset_iff_pivot_removeNth (p : Fin (n + 1)) :
    f ∈ piFinset s ↔ f p ∈ s p ∧ removeNth p f ∈ piFinset (removeNth p s) := by
  simp only [Fintype.mem_piFinset, forall_iff_succAbove p, removeNth]

lemma cons_mem_piFinset_cons {x_zero : α 0} {x_tail : (i : Fin n) → α i.succ}
    {s_zero : Finset (α 0)} {s_tail : (i : Fin n) → Finset (α i.succ)} :
    cons x_zero x_tail ∈ piFinset (cons s_zero s_tail) ↔
      x_zero ∈ s_zero ∧ x_tail ∈ piFinset s_tail := by
  simp_rw [mem_piFinset_iff_zero_tail, cons_zero, tail_cons]

lemma snoc_mem_piFinset_snoc {x_last : α (last n)} {x_init : (i : Fin n) → α i.castSucc}
    {s_last : Finset (α (last n))} {s_init : (i : Fin n) → Finset (α i.castSucc)} :
    snoc x_init x_last ∈ piFinset (snoc s_init s_last) ↔
      x_last ∈ s_last ∧ x_init ∈ piFinset s_init := by
  simp_rw [mem_piFinset_iff_last_init, init_snoc, snoc_last]

lemma insertNth_mem_piFinset_insertNth {x_pivot : α p} {x_remove : ∀ i, α (succAbove p i)}
    {s_pivot : Finset (α p)} {s_remove : ∀ i, Finset (α (succAbove p i))} :
    insertNth p x_pivot x_remove ∈ piFinset (insertNth p s_pivot s_remove) ↔
      x_pivot ∈ s_pivot ∧ x_remove ∈ piFinset s_remove := by
  simp [mem_piFinset_iff_pivot_removeNth p]

end Fin

namespace Finset
variable {n : ℕ} {α : Fin (n + 1) → Type*} {p : Fin (n + 1)} (S : ∀ i, Finset (α i))

lemma map_consEquiv_filter_piFinset (P : (∀ i, α (succ i)) → Prop) [DecidablePred P] :
    {r ∈ piFinset S | P (tail r)}.map (consEquiv α).symm.toEmbedding =
      S 0 ×ˢ {r ∈ piFinset (tail S) | P r} := by
  unfold tail; ext; simp [Fin.forall_iff_succ, and_assoc]

lemma map_snocEquiv_filter_piFinset (P : (∀ i, α (castSucc i)) → Prop) [DecidablePred P] :
    {r ∈ piFinset S | P (init r)}.map (snocEquiv α).symm.toEmbedding =
      S (last _) ×ˢ {r ∈ piFinset (init S) | P r} := by
  unfold init; ext; simp [Fin.forall_iff_castSucc, and_assoc]

lemma map_insertNthEquiv_filter_piFinset (P : (∀ i, α (p.succAbove i)) → Prop) [DecidablePred P] :
    {r ∈ piFinset S | P (p.removeNth r)}.map (p.insertNthEquiv α).symm.toEmbedding =
      S p ×ˢ {r ∈ piFinset (p.removeNth  S) | P r} := by
  unfold removeNth; ext; simp [Fin.forall_iff_succAbove p, and_assoc]

lemma filter_piFinset_eq_map_consEquiv (P : (∀ i, α (succ i)) → Prop) [DecidablePred P] :
    {r ∈ piFinset S | P (tail r)} =
      (S 0 ×ˢ {r ∈ piFinset (tail S) | P r}).map (consEquiv α).toEmbedding := by
  simp [← map_consEquiv_filter_piFinset, map_map]

lemma filter_piFinset_eq_map_snocEquiv (P : (∀ i, α (castSucc i)) → Prop) [DecidablePred P] :
    {r ∈ piFinset S | P (init r)} =
      (S (last _) ×ˢ {r ∈ piFinset (init S) | P r}).map (snocEquiv α).toEmbedding := by
  simp [← map_snocEquiv_filter_piFinset, map_map]

lemma filter_piFinset_eq_map_insertNthEquiv (P : (∀ i, α (p.succAbove i)) → Prop)
    [DecidablePred P] :
    {r ∈ piFinset S | P (p.removeNth r)} =
      (S p ×ˢ {r ∈ piFinset (p.removeNth  S) | P r}).map (p.insertNthEquiv α).toEmbedding := by
  simp [← map_insertNthEquiv_filter_piFinset, map_map]

lemma card_consEquiv_filter_piFinset (P : (∀ i, α (succ i)) → Prop) [DecidablePred P] :
    {r ∈ piFinset S | P (tail r)}.card = (S 0).card * {r ∈ piFinset (tail S) | P r}.card := by
  rw [← card_product, ← map_consEquiv_filter_piFinset, card_map]

lemma card_snocEquiv_filter_piFinset (P : (∀ i, α (castSucc i)) → Prop) [DecidablePred P] :
    {r ∈ piFinset S | P (init r)}.card =
      (S (last _)).card * {r ∈ piFinset (init S) | P r}.card := by
  rw [← card_product, ← map_snocEquiv_filter_piFinset, card_map]

lemma card_insertNthEquiv_filter_piFinset (P : (∀ i, α (p.succAbove i)) → Prop) [DecidablePred P] :
    {r ∈ piFinset S | P (p.removeNth r)}.card =
      (S p).card * {r ∈ piFinset (p.removeNth  S) | P r}.card := by
  rw [← card_product, ← map_insertNthEquiv_filter_piFinset, card_map]

end Finset
```
