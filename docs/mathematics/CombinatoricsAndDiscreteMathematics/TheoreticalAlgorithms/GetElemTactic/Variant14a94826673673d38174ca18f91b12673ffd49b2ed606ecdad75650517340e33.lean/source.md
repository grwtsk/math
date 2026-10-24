# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GetElemTactic.Variant14a94826673673d38174ca18f91b12673ffd49b2ed606ecdad75650517340e33

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `914f5109d0dc01097767db7fd80e198262791c84` · SHA-256 `50ced5cf6dc8ead9e1caa369236c3ac0d2ea240307b781d88ec77a8112eb2803`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tactics.Variantd9fc31539da2f4945b5268c7734cb39a90a0edfbeec126d8e66bbd7636e1ef69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d9fc31539da2f4945b5268c7734cb39a90a0edfbeec126d8e66bbd7636e1ef69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Tactics.Variantd9fc31539da2f4945b5268c7734cb39a90a0edfbeec126d8e66bbd7636e1ef69","mathematical_subject":"Computation.DataStructures","original_sha256":"d9fc31539da2f4945b5268c7734cb39a90a0edfbeec126d8e66bbd7636e1ef69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Range/Polymorphic/GetElemTactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public meta import Init.Grind.Tactics
public import Init.Data.Range.Polymorphic.Basic  -- shake: keep (macro output dependency)
public import Init.Data.Vector.Basic  -- shake: keep (macro output dependency)
public import Init.Data.Slice.Array.Lemmas  -- shake: keep (macro output dependency)


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tactics.Variantd9fc31539da2f4945b5268c7734cb39a90a0edfbeec126d8e66bbd7636e1ef69

public section

/-!
This module contains an advanced `GetElem` tactic extension for polymorphic ranges.
While `Init.Data.Range.Polymorphic.Basic` already defines one, it only works in very
basic cases where the open upper bound of the range is exactly the size of the collection.

This tactic is using `omega` to be more powerful, but it needs special handling for `Vector`,
which is impossible in `Init.Data.Range.Polymorphic.Basic` for bootstrapping reasons.
-/

macro_rules
  | `(tactic| get_elem_tactic_extensible) =>
    `(tactic|
      first
        | try rw [Std.Rcc.mem_iff] at *
          try rw [Std.Rco.mem_iff] at *
          try rw [Std.Rci.mem_iff] at *
          try rw [Std.Roc.mem_iff] at *
          try rw [Std.Roo.mem_iff] at *
          try rw [Std.Roi.mem_iff] at *
          try rw [Std.Ric.mem_iff] at *
          try rw [Std.Rio.mem_iff] at *
          try rw [Std.Rii.mem_iff] at *
          try dsimp +zetaDelta only [
            -- `Vector.size` needs to be unfolded because for `xs : Vector α n`, one needs to prove
            -- `i < n` instead of `i < xs.size`. Although `Vector.size` is reducible, this is
            -- not enough for `omega`.
            Vector.size] at *
          -- If we're accessing elements of a subarray, we need to calculate its size.
          try simp only [
            Array.size_mkSlice_rco, Array.size_mkSlice_rcc, Array.size_mkSlice_rci,
            Array.size_mkSlice_roo, Array.size_mkSlice_roc, Array.size_mkSlice_roi,
            Array.size_mkSlice_rio, Array.size_mkSlice_ric, Array.size_mkSlice_rii]
          omega
        | done)
```
