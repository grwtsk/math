# Complete source: GRWTSK.Topology.GeneralTopology.Filter.Variante0bd4ea2298c424da4c61b913a78b01502873a9baf26136dd0458c90a58b6cda

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1370367c29a1502e7e6c92bcda6f79cdd89b4aa` · SHA-256 `acbf80124f4f7c416e83570108fde18fef7a7843aa54cddc2383b079990caffc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.List.Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.List.Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Filter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Jannis Limperg
-/

import Aesop


namespace GRWTSK.Topology.GeneralTopology.List.Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e

set_option aesop.check.all true

namespace TBA

inductive List (α : Type) where
  | nil : List α
  | cons (head : α) (tail : List α) : List α

notation  (priority := high) "[" "]" => List.nil
infixr:67 (priority := high) " :: "  => List.cons

def filter (p : α → Prop) [DecidablePred p] (as : List α) : List α :=
  match as with
  | [] => []
  | a::as => if p a then a :: filter p as else filter p as

variable {p : α → Prop} [DecidablePred p] {as bs : List α}

@[simp]
theorem filter_cons_true (h : p a) : filter p (a :: as) = a :: filter p as := by
  simp [filter, h]

@[simp]
theorem filter_cons_false (h : ¬ p a) : filter p (a :: as) = filter p as := by
  simp [filter, h]

@[aesop 50% [constructors, cases]]
inductive Mem (a : α) : List α → Prop where
  | head {as : _} : Mem a (a::as)
  | tail {as : _} : Mem a as → Mem a (a'::as)

infix:50 " ∈ " => Mem

theorem mem_filter : a ∈ filter p as ↔ a ∈ as ∧ p a := by
  apply Iff.intro
  case mp =>
    intro h
    induction as with
    | nil => cases h
    | cons a' as ih => by_cases ha' : p a' <;> aesop
  case mpr =>
    intro h
    induction as with
    | nil => cases h.1
    | cons a' as ih =>
      cases h.1 with
      | head =>
        rw [filter_cons_true h.2]
        constructor
      | tail ha =>
        have : a ∈ filter p as := ih ⟨ha, h.2⟩
        by_cases hpa' : p a'
        case pos =>
          rw [filter_cons_true hpa']
          exact Mem.tail this
        case neg =>
          rw [filter_cons_false hpa']
          exact this

end TBA
```
