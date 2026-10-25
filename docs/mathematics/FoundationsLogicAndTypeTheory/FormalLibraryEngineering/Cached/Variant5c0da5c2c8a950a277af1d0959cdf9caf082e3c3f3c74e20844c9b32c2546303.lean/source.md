# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cached.Variant5c0da5c2c8a950a277af1d0959cdf9caf082e3c3f3c74e20844c9b32c2546303

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e958238d58b421a27452b39b2c51ff74edfd2b2c` · SHA-256 `be954a5203ee5c2ad676d84bd0babecaec6614a2595a1e0e6de83acc7f27dd88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkAtomCached.Variant70c6790dea6aa74769f41ddc7ab293143b766634efdbbf2c0ba2617f2b34ed4c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70c6790dea6aa74769f41ddc7ab293143b766634efdbbf2c0ba2617f2b34ed4c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MkAtomCached.Variant70c6790dea6aa74769f41ddc7ab293143b766634efdbbf2c0ba2617f2b34ed4c","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"70c6790dea6aa74769f41ddc7ab293143b766634efdbbf2c0ba2617f2b34ed4c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Sat/AIG/Cached.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Sat.AIG.Lemmas
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkAtomCached.Variant70c6790dea6aa74769f41ddc7ab293143b766634efdbbf2c0ba2617f2b34ed4c

@[expose] public section

/-!
This module contains functions to construct AIG nodes while making use of the sub-circuit cache
if possible. For performance reasons these functions should usually be preferred over the naive
AIG node creation ones.
-/

namespace Std
namespace Sat

namespace AIG

variable {α : Type} [Hashable α] [DecidableEq α]

/--
A version of `AIG.mkAtom` that uses the subterm cache in `AIG`. This version is meant for
programming, for proving purposes use `AIG.mkAtom` and equality theorems to this one.
-/
def mkAtomCached (aig : AIG α) (n : α) : Entrypoint α :=
  let ⟨decls, cache, hdag, hzero, hconst⟩ := aig
  let decl := .atom n
  match cache.get? decl with
  | some hit =>
    ⟨⟨decls, cache, hdag, hzero, hconst⟩ , hit.idx, false, hit.hbound⟩
  | none =>
    let g := decls.size
    let cache := cache.insert decls decl
    let decls := decls.push decl
    have hdag := by
      intro i lhs rhs h1 h2
      simp only [decls, Array.getElem_push] at h2
      split at h2
      · apply hdag <;> assumption
      · contradiction
    have hzero' := by simp [decls]
    have hconst := by simp [decls, Array.getElem_push, hzero, hconst]
    ⟨⟨decls, cache, hdag, hzero', hconst⟩, ⟨g, false, by simp [g, decls]⟩⟩

/--
A version of `AIG.mkConst` that uses the subterm cache in `AIG`. This version is meant for
programming, for proving purposes use `AIG.mkGate` and equality theorems to this one.
-/
@[inline]
def mkConstCached (aig : AIG α) (val : Bool) : Ref aig :=
  ⟨0, val, aig.hzero⟩

/--
A version of `AIG.mkGate` that uses the subterm cache in `AIG`. This version is meant for
programming, for proving purposes use `AIG.mkGate` and equality theorems to this one.

Beyond caching this function also implements a subset of the optimizations presented in:
-/
def mkGateCached (aig : AIG α) (input : BinaryInput aig) : Entrypoint α :=
  let lhs := input.lhs.gate
  let rhs := input.rhs.gate
  if lhs < rhs then
    go aig ⟨input.lhs, input.rhs⟩
  else
    go aig ⟨input.rhs, input.lhs⟩
where
  go (aig : AIG α) (input : BinaryInput aig) : Entrypoint α :=
    let ⟨decls, cache, hdag, hzero, hconst⟩ := aig
    let lhs := input.lhs.gate
    let rhs := input.rhs.gate
    let linv := input.lhs.invert
    let rinv := input.rhs.invert
    have := input.lhs.hgate
    have := input.rhs.hgate
    let decl := .gate (.mk lhs linv) (.mk rhs rinv)
    match cache.get? decl with
    | some hit =>
      ⟨⟨decls, cache, hdag, hzero, hconst⟩, ⟨hit.idx, false, hit.hbound⟩⟩
    | none =>
      /-
      Here we implement the one-level subset of:
      https://fmv.jku.at/papers/BrummayerBiere-MEMICS06.pdf
      TODO: rest of the table
      -/
      let lhsVal := AIG.getConstant ⟨decls, cache, hdag, hzero, hconst⟩ input.lhs
      let rhsVal := AIG.getConstant ⟨decls, cache, hdag, hzero, hconst⟩ input.rhs
      match lhsVal, rhsVal with
      -- Boundedness
      | .some false, _ | _, .some false =>
        let ref := mkConstCached ⟨decls, cache, hdag, hzero, hconst⟩ false
        ⟨⟨decls, cache, hdag, hzero, hconst⟩, ref⟩
      -- Left Neutrality
      | .some true, _ => ⟨⟨decls, cache, hdag, hzero, hconst⟩, ⟨rhs, rinv, by assumption⟩⟩
      -- Right Neutrality
      | _, .some true => ⟨⟨decls, cache, hdag, hzero, hconst⟩, ⟨lhs, linv, by assumption⟩⟩
      -- No constant inputs
      | _, _ =>
        if lhs == rhs then
           -- Idempotency
          if linv == rinv then
            ⟨⟨decls, cache, hdag, hzero, hconst⟩, ⟨lhs, linv, by assumption⟩⟩
          -- Contradiction
          else
            let ref := mkConstCached ⟨decls, cache, hdag, hzero, hconst⟩ false
            ⟨⟨decls, cache, hdag, hzero, hconst⟩, ref⟩
        else
          -- Gate couldn't be simplified
          let g := decls.size
          let cache := cache.insert decls decl
          let decls := decls.push decl
          have hdag := by
            intro i lhs rhs h1 h2
            simp only [decls, Array.getElem_push] at h2
            simp_all
            split at h2
            · apply hdag <;> assumption
            · injection h2 with hl hr
              simp [← hl, ← hr]
              omega
          have hzero' := by simp [decls]
          have hconst := by simp [decls, Array.getElem_push, hzero, hconst]
          ⟨⟨decls, cache, hdag, hzero', hconst⟩, ⟨g, false, by simp [g, decls]⟩⟩

end AIG

end Sat
end Std
```
