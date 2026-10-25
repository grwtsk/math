# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant230d85a7142980a85c0c554b5464f225b6b46a099146ca7b8c21a07aa5a44495

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3b094471dd72ab93ad04b59fd01028b87a84e02` · SHA-256 `571c84812ec2dbc822e5005c455892968b8f80e5bb7cfdaf0fa9f82269fae99d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Range.Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Range.Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Range/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Control.Basic
public import Init.Grind.Tactics
public meta import Init.Grind.Tactics
import Init.Omega
import Init.WFTactics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Range.Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7

public section

namespace Std.Legacy
-- We put `Range` in `Init` because we want the notation `[i:j]`  without importing `Std`
-- We don't put `Range` in the top-level namespace to avoid collisions with user defined types
structure Range where
  start : Nat := 0
  stop  : Nat
  step  : Nat := 1
  step_pos : 0 < step

instance : Membership Nat Range where
  mem r i := r.start ≤ i ∧ i < r.stop ∧ (i - r.start) % r.step = 0

namespace Range
universe u v

/-- The number of elements in the range. -/
@[simp, expose] def size (r : Range) : Nat := (r.stop - r.start + r.step - 1) / r.step

@[inline] protected def forIn' [Monad m] (range : Range) (init : β)
    (f : (i : Nat) → i ∈ range → β → m (ForInStep β)) : m β :=
  let rec @[specialize] loop (b : β) (i : Nat)
      (hs : (i - range.start) % range.step = 0) (hl : range.start ≤ i := by omega) : m β := do
    if h : i < range.stop then
      match (← f i ⟨hl, by omega, hs⟩ b) with
      | .done b  => pure b
      | .yield b =>
        have := range.step_pos
        loop b (i + range.step) (by rwa [Nat.add_comm, Nat.add_sub_assoc hl, Nat.add_mod_left])
    else
      pure b
  have := range.step_pos
  loop init range.start (by simp)

instance [Monad m] : ForIn' m Range Nat inferInstance where
  forIn' := Range.forIn'

-- No separate `ForIn` instance is required because it can be derived from `ForIn'`.

@[inline] protected def forM [Monad m] (range : Range) (f : Nat → m PUnit) : m PUnit :=
  let rec @[specialize] loop (i : Nat): m PUnit := do
    if i < range.stop then
      f i
      have := range.step_pos
      loop (i + range.step)
    else
      pure ⟨⟩
  have := range.step_pos
  loop range.start

instance [Monad m] : ForM m Range Nat where
  forM := Range.forM

syntax:max "[" withoutPosition(":" term) "]" : term
syntax:max "[" withoutPosition(term ":" term) "]" : term
syntax:max "[" withoutPosition(":" term ":" term) "]" : term
syntax:max "[" withoutPosition(term ":" term ":" term) "]" : term

macro_rules
  | `([ : $stop]) => `({ stop := $stop, step_pos := Nat.zero_lt_one : Range })
  | `([ $start : $stop ]) => `({ start := $start, stop := $stop, step_pos := Nat.zero_lt_one : Range })
  | `([ $start : $stop : $step ]) => `({ start := $start, stop := $stop, step := $step, step_pos := by decide : Range })
  | `([ : $stop : $step ]) => `({ stop := $stop, step := $step, step_pos := by decide : Range })

end Range
end Std.Legacy

theorem Membership.mem.upper {i : Nat} {r : Std.Legacy.Range} (h : i ∈ r) : i < r.stop := h.2.1

theorem Membership.mem.lower {i : Nat} {r : Std.Legacy.Range} (h : i ∈ r) : r.start ≤ i := h.1

theorem Membership.mem.step {i : Nat} {r : Std.Legacy.Range} (h : i ∈ r) : (i - r.start) % r.step = 0 := h.2.2

theorem Membership.get_elem_helper {i n : Nat} {r : Std.Legacy.Range} (h₁ : i ∈ r) (h₂ : r.stop = n) :
    i < n := h₂ ▸ h₁.2.1

macro_rules
  | `(tactic| get_elem_tactic_extensible) => `(tactic| apply Membership.get_elem_helper; assumption; rfl)
```
