# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Productive.Variantcb7baf93e846e256c0032206581003a091665ef9521c036ebdf652d5a25b643a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb0e1545e8998e176f0950730d4473a51cd81592` · SHA-256 `1a4a25915670424bd09a54f53e16047ef01d72413b847c50e9346a8b6c7d49c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Productive.Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Productive.Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e","mathematical_subject":"Foundations.Unclassified","original_sha256":"7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/WSeq/Productive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.WSeq.Relation

/-!
# Productive weak sequences

This file defines the property of a weak sequence being productive as never stalling – the next
output always comes after a finite time. Given a productive weak sequence, a regular sequence
(`Seq`) can be derived from it using `toSeq`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Productive.Variant7c411b52db282bd00fa704d7111420801567004b37a9bc7ec0733dc0ba9e9e0e

universe u

namespace Stream'.WSeq

variable {α : Type u}

open Function

/-- A weak sequence is *productive* if it never stalls forever - there are
always a finite number of `think`s between `cons` constructors.
The sequence itself is allowed to be infinite though. -/
class Productive (s : WSeq α) : Prop where
  get?_terminates : ∀ n, (get? s n).Terminates

theorem productive_iff (s : WSeq α) : Productive s ↔ ∀ n, (get? s n).Terminates :=
  ⟨fun h => h.1, fun h => ⟨h⟩⟩

instance get?_terminates (s : WSeq α) [h : Productive s] : ∀ n, (get? s n).Terminates :=
  h.get?_terminates

instance head_terminates (s : WSeq α) [Productive s] : (head s).Terminates :=
  s.get?_terminates 0

instance productive_tail (s : WSeq α) [Productive s] : Productive (tail s) :=
  ⟨fun n => by rw [get?_tail]; infer_instance⟩

instance productive_dropn (s : WSeq α) [Productive s] (n) : Productive (drop s n) :=
  ⟨fun m => by rw [← get?_add]; infer_instance⟩

open Computation

instance productive_ofSeq (s : Seq α) : Productive (ofSeq s) :=
  ⟨fun n => by rw [get?_ofSeq]; infer_instance⟩

theorem productive_congr {s t : WSeq α} (h : s ~ʷ t) : Productive s ↔ Productive t := by
  simp only [productive_iff]; exact forall_congr' fun n => terminates_congr <| get?_congr h _

/-- Given a productive weak sequence, we can collapse all the `think`s to
  produce a sequence. -/
def toSeq (s : WSeq α) [Productive s] : Seq α :=
  ⟨fun n => (get? s n).get,
   fun {n} h => by
    cases e : Computation.get (get? s (n + 1))
    · assumption
    have := Computation.mem_of_get_eq _ e
    simp? [get?] at this h says simp only [get?] at this h
    obtain ⟨a', h'⟩ := head_some_of_head_tail_some this
    have := mem_unique h' (@Computation.mem_of_get_eq _ _ _ _ h)
    contradiction⟩

theorem toSeq_ofSeq (s : Seq α) : toSeq (ofSeq s) = s := by
  apply Subtype.eq; funext n
  dsimp [toSeq]; apply get_eq_of_mem
  rw [get?_ofSeq]; apply ret_mem

end Stream'.WSeq
```
