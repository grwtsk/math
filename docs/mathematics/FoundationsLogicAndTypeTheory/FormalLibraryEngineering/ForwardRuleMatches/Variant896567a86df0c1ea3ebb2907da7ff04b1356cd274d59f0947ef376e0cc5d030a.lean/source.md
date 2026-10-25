# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardRuleMatches.Variant896567a86df0c1ea3ebb2907da7ff04b1356cd274d59f0947ef376e0cc5d030a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e077fe83b411072f0820c8e484be2ae2f113e6ff` · SHA-256 `036f38a892cc95ac67a00d22fec8de37c2a29e39f6b2349928f0156b605f2ac6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardRuleMatches.Varianta23be6e151064f3a3886642ade55bb7a4c43793b749f98ae8889f687cc242b4d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a23be6e151064f3a3886642ade55bb7a4c43793b749f98ae8889f687cc242b4d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ForwardRuleMatches.Varianta23be6e151064f3a3886642ade55bb7a4c43793b749f98ae8889f687cc242b4d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a23be6e151064f3a3886642ade55bb7a4c43793b749f98ae8889f687cc242b4d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Tree/Data/ForwardRuleMatches.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Rule
import Aesop.Forward.Match


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardRuleMatches.Varianta23be6e151064f3a3886642ade55bb7a4c43793b749f98ae8889f687cc242b4d

public section

set_option linter.missingDocs true

open Lean Lean.Meta

namespace Aesop

/-- Sets of complete matches for norm/safe/unsafe rules. -/
structure ForwardRuleMatches where
  /-- Complete matches of norm rules. -/
  normMatches   : PHashSet ForwardRuleMatch
  /-- Complete matches of safe rules. -/
  safeMatches   : PHashSet ForwardRuleMatch
  /-- Complete matches of unsafe rules. -/
  unsafeMatches : PHashSet ForwardRuleMatch
  deriving Inhabited

namespace ForwardRuleMatches

/-- Empty `ForwardRuleMatches`. -/
protected def empty : ForwardRuleMatches where
  normMatches := ∅
  safeMatches := ∅
  unsafeMatches := ∅

instance : EmptyCollection ForwardRuleMatches :=
  ⟨.empty⟩

/-- Add a complete match. -/
def insert (m : ForwardRuleMatch) (ms : ForwardRuleMatches) :
    ForwardRuleMatches :=
  match m.rule.name.phase with
  | .norm =>   { ms with normMatches   := ms.normMatches.insert   m }
  | .safe =>   { ms with safeMatches   := ms.safeMatches.insert   m }
  | .unsafe => { ms with unsafeMatches := ms.unsafeMatches.insert m }

/-- Add several complete matches. -/
def insertMany (ms : Array ForwardRuleMatch) (ms' : ForwardRuleMatches) :
    ForwardRuleMatches :=
  ms.foldl (init := ms') λ ms' m => ms'.insert m

/-- Erase a complete match. -/
def erase (m : ForwardRuleMatch) (ms : ForwardRuleMatches) :
    ForwardRuleMatches :=
  match m.rule.name.phase with
  | .norm =>   { ms with normMatches   := ms.normMatches.erase m }
  | .safe =>   { ms with safeMatches   := ms.safeMatches.erase m }
  | .unsafe => { ms with unsafeMatches := ms.unsafeMatches.erase m }

/-- Erase several complete matches. -/
def eraseMany (ms : Array ForwardRuleMatch) (ms' : ForwardRuleMatches) :
    ForwardRuleMatches :=
  ms.foldl (init := ms') λ ms' m => ms'.erase m

/-- Build a `ForwardRuleMatches` structure containing the matches from `ms`. -/
def ofArray (ms : Array ForwardRuleMatch) : ForwardRuleMatches :=
  (∅ : ForwardRuleMatches).insertMany ms

/-- Erase matches containing any of the hypotheses `hs` from `ms`. -/
def eraseHyps (hs : Std.HashSet FVarId) (ms : ForwardRuleMatches) :
    ForwardRuleMatches where
  normMatches   := go ms.normMatches
  safeMatches   := go ms.safeMatches
  unsafeMatches := go ms.unsafeMatches
where
  go (ms : PHashSet ForwardRuleMatch) : PHashSet ForwardRuleMatch :=
    let toErase := ms.fold (init := #[]) λ toErase m =>
      if m.anyHyp hs.contains then toErase.push m else toErase
    toErase.foldl (init := ms) λ ms m => ms.erase m

/-- Erase matches containing the hypothesis `h` from `ms`. -/
def eraseHyp (h : FVarId) (ms : ForwardRuleMatches) : ForwardRuleMatches :=
  ms.eraseHyps {h}

/-- Update the `ForwardRuleMatches` of a goal so that they are suitable for a
child goal. `newMatches` are new forward rule matches obtained by updating the
old goal's `ForwardState` with new hypotheses from the new goal. `erasedHyps`
are the hypotheses from the old goal that no longer appear in the new goal.
`consumedForwardRuleMatches` contains forward rule matches that were applied as
rules to transform the old goal into the new goal. -/
def update (newMatches : Array ForwardRuleMatch)
    (erasedHyps : Std.HashSet FVarId)
    (consumedForwardRuleMatches : Array ForwardRuleMatch)
    (forwardRuleMatches : ForwardRuleMatches) : ForwardRuleMatches := Id.run do
  let mut ms := forwardRuleMatches
  for m in consumedForwardRuleMatches do
    ms := ms.erase m
  return ms.eraseHyps erasedHyps |>.insertMany newMatches

private def pHashSetToArray [BEq α] [Hashable α] (s : PHashSet α) : Array α :=
  s.fold (init := #[]) λ acc x => acc.push x

/-- Get the norm rules corresponding to the norm rule matches. -/
def normRules (ms : ForwardRuleMatches) : Array NormRule :=
  forwardRuleMatchesToNormRules? (pHashSetToArray ms.normMatches) |>.get!

/-- Get the safe rules corresponding to the safe rule matches. -/
def safeRules (ms : ForwardRuleMatches) : Array SafeRule :=
  forwardRuleMatchesToSafeRules? (pHashSetToArray ms.safeMatches) |>.get!

/-- Get the unsafe rules corresponding to the unsafe rule matches. -/
def unsafeRules (ms : ForwardRuleMatches) : Array UnsafeRule :=
  forwardRuleMatchesToUnsafeRules? (pHashSetToArray ms.unsafeMatches) |>.get!

/-- `O(n)` Number of matches in `ms`. -/
def size (ms : ForwardRuleMatches) : Nat :=
  ms.normMatches.fold   (init := 0) (λ n _ => n + 1) +
  ms.safeMatches.fold   (init := 0) (λ n _ => n + 1) +
  ms.unsafeMatches.fold (init := 0) (λ n _ => n + 1)

end ForwardRuleMatches

end Aesop
```
