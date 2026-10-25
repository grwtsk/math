# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variantd922260ee20fec02e3ff3756b4db175c273a56e20b5463e23616df29e40dd92f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76ec034a0ff121b09dbdb0268d272c0208079421` · SHA-256 `9fbf5f910d4089b4ad48e4a1291d8fa7481281084a360d970f3dcee6453429dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Result.Variant8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Result.Variant8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/BVDecide/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module
prelude

public import Lean.Meta.Tactic.BVDecide.Prover.Bitblast
import Lean.Meta.Tactic.BVDecide.Normalize


/-!
This module provides the implementation of the `bv_decide` frontend itself.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Result.Variant8ef41378cca0fa5436b2fbec05dbc6a87607ee3fa64bc190815fa379bd3dd07d

namespace Lean.Meta.Tactic.BVDecide

def bvUnsat (g : MVarId) (ctx : TacticContext) : MetaM (Except CounterExample LratCert) := M.run do
  closeWithBVReflection g (lratBitblaster ctx)

/--
The result of calling `bv_decide`.
-/
public structure Result where
  /--
  If the normalization step was not enough to solve the goal this contains the LRAT proof
  certificate.
  -/
  lratCert : Option LratCert

/--
Try to close `g` using a bitblaster. Return either a `CounterExample` if one is found or a `Result`
if `g` is proven.
-/
public def bvDecide' (g : MVarId) (ctx : TacticContext) : MetaM (Except CounterExample Result) := do
  let g? ← Normalize.bvNormalize g ctx.config
  let some g := g? | return .ok ⟨none⟩
  match ← bvUnsat g ctx with
  | .ok lratCert => return .ok ⟨some lratCert⟩
  | .error counterExample => return .error counterExample

/--
Call `bvDecide'` and throw a pretty error if a counter example ends up being produced.
-/
public def bvDecide (g : MVarId) (ctx : TacticContext) : MetaM Result := do
  match ← bvDecide' g ctx with
  | .ok result => return result
  | .error counterExample =>
    counterExample.goal.withContext do
      let error ← explainCounterExampleQuality counterExample
      throwError (← addMessageContextFull error)


end Lean.Meta.Tactic.BVDecide
```
