# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MePo.Variant6bb1d433060c041c5b2e0b44cd6e6eb36a12304f090871425454584ed7ad5396

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2ce3245fc8dce58e228421312a19061070aaf91` · SHA-256 `d205b2fed7548017a267b11ee960d308e628e8942f06072645863222f9dbb9aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WeightedScore.Variant7aff61742855a290a9bc904b6ede9320ae8992edc238995673438688ba04aa6c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7aff61742855a290a9bc904b6ede9320ae8992edc238995673438688ba04aa6c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WeightedScore.Variant7aff61742855a290a9bc904b6ede9320ae8992edc238995673438688ba04aa6c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7aff61742855a290a9bc904b6ede9320ae8992edc238995673438688ba04aa6c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/LibrarySuggestions/MePo.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Lean.LibrarySuggestions.Basic
import Lean.LibrarySuggestions.SymbolFrequency

/-!
# MePo premise selection

This is a naive implement of the MePo premise selection algorithm, from
"Lightweight relevance filtering for machine-generated resolution problems" by Meng and Paulson.

It needs to be tuned and evaluated for Lean.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WeightedScore.Variant7aff61742855a290a9bc904b6ede9320ae8992edc238995673438688ba04aa6c

open Lean

namespace Lean.LibrarySuggestions.MePo

builtin_initialize registerTraceClass `mepo

def weightedScore (weight : Name → Float) (relevant candidate : NameSet) : Float :=
  let S := candidate
  let R := relevant ∩ S
  let R' := (S \ R).size.toFloat
  let M := R.foldl (fun acc n => acc + weight n) 0
  M / (M + R')

-- This function is taken from the MePo paper and needs to be tuned.
def weightFunction (n : Nat) := 1.0 + 2.0 / (n.log2.toFloat + 1.0)

def frequencyScore (frequency : Name → Nat) (relevant candidate : NameSet) : Float :=
  weightedScore (fun n => weightFunction (frequency n)) relevant candidate

def unweightedScore (relevant candidate : NameSet) : Float := weightedScore (fun _ => 1) relevant candidate

def mepo (initialRelevant : NameSet) (score : NameSet → NameSet → Float) (accept : ConstantInfo → CoreM Bool)
    (maxSuggestions : Nat) (p : Float) (c : Float) : CoreM (Array Suggestion) := do
  let env ← getEnv
  let mut p := p
  let mut candidates := #[]
  let mut relevant := initialRelevant
  let mut accepted : Array Suggestion := {}
  for (n, ci) in env.constants do
    if ← accept ci then
      candidates := candidates.push (n, ci.type.getUsedConstantsAsSet)
  while candidates.size > 0 && accepted.size < maxSuggestions do
    trace[mepo] m!"Considering candidates with threshold {p}."
    trace[mepo] m!"Current relevant set: {relevant.toList}."
    let (newAccepted, candidates') := candidates.map
      (fun (n, c) => (n, c, score relevant c))
      |>.partition fun (_, _, s) => p ≤ s
    if newAccepted.isEmpty then return accepted
    trace[mepo] m!"Accepted {newAccepted.map fun (n, _, s) => (n, s)}."
    -- Scores from different iterations are not comparable: each iteration accepts
    -- against a strictly larger `relevant` set and a higher threshold. We order the
    -- output by `(iteration, score)`: earlier iterations always rank first, and
    -- within an iteration we sort by descending score.
    let newAccepted := newAccepted.qsort (fun (_, _, s₁) (_, _, s₂) => s₁ > s₂)
    accepted := newAccepted.foldl (fun acc (n, _, s) => acc.push { name := n, score := s }) accepted
    candidates := candidates'.map fun (n, c, _) => (n, c)
    relevant := newAccepted.foldl (fun acc (_, ns, _) => acc ++ ns) relevant
    p := p + (1 - p) / c
  return accepted

end MePo

open MePo

-- The values of p := 0.6 and c := 2.4 are taken from the MePo paper, and need to be tuned.
public def mepoSelector (useRarity : Bool) (p : Float := 0.6) (c : Float := 2.4) : Selector := fun g config => do
  let constants ← g.getRelevantConstants
  let env ← getEnv
  let score ← if useRarity then do
    let frequency ← symbolFrequencyMap
    pure <| frequencyScore (fun n => frequency.getD n 0)
  else
    pure <| unweightedScore
  let accept := fun ci =>
    return !isDeniedPremise env ci.name && wasOriginallyTheorem env ci.name
  let suggestions ← mepo constants score accept config.maxSuggestions p c
  -- `mepo` already returns suggestions ordered by `(iteration, score)`.
  return suggestions.take config.maxSuggestions
```
