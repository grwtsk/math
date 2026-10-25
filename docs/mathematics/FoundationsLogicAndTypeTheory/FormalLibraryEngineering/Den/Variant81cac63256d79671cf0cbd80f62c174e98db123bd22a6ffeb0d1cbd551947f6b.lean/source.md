# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Den.Variant81cac63256d79671cf0cbd80f62c174e98db123bd22a6ffeb0d1cbd551947f6b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `744af7e8c350bc5b8b3fc779b95eea0976d7a05c` · SHA-256 `f49e50221e7d821f2ea94fe1cd64729eb227b99ff1ec7c34c8cfd1cbbdf0dd22`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CleanupDenominatorsPrime.Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CleanupDenominatorsPrime.Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Linear/Den.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Linear.LinearM
import Lean.Meta.Tactic.Grind.Arith.CommRing.SafePoly

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CleanupDenominatorsPrime.Variant7f69d08652f67c1dbd7b1663c744380437e1e141d1d237ac5c6849293d807d47

namespace Lean.Meta.Grind.Arith.Linear

partial def cleanupDenominators' (c : α)
    (getPoly : α → CommRing.Poly)
    (updateCnstr : α → CommRing.Poly → Int → Var → Nat → α)
    : LinearM α := do
  let s ← getStruct
  if s.fieldInst?.isNone then return c
  let some (_, char) := s.charInst? | return c
  unless char == 0 do return c
  withRingM <| go c
where
  go (c : α) : CommRing.RingM α := do
    let p := getPoly c
    let some (val, x) ← p.findInvNumeralVar? | return c
    let n := p.maxDegreeOf x
    let p := p.mulConst (val ^ n)
    let p := p.cancelVar val x
    go (updateCnstr c p val x n)

public def RingIneqCnstr.cleanupDenominators (c : RingIneqCnstr) : LinearM RingIneqCnstr :=
  cleanupDenominators' c (·.p) fun c p val x n => { c with p, h := .cancelDen c val x n }

public def RingEqCnstr.cleanupDenominators (c : RingEqCnstr) : LinearM RingEqCnstr :=
  cleanupDenominators' c (·.p) fun c p val x n => { c with p, h := .cancelDen c val x n }

public def RingDiseqCnstr.cleanupDenominators (c : RingDiseqCnstr) : LinearM RingDiseqCnstr := do
  let s ← getStruct
  if s.noNatDivInst?.isNone then return c
  cleanupDenominators' c (·.p) fun c p val x n => { c with p, h := .cancelDen c val x n }

end Lean.Meta.Grind.Arith.Linear
```
