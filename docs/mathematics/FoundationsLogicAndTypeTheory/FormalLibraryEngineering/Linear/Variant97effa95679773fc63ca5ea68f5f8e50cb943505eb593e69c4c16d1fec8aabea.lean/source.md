# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Linear.Variant97effa95679773fc63ca5ea68f5f8e50cb943505eb593e69c4c16d1fec8aabea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e353803ee28c34d578dd498198879e25e5d7a54` · SHA-256 `0e91a20225262796c7fce95f55a46610c7d6402b3d98e8c51ea2403eb0c0299f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Types.Variant5894a4452fa93b51f2e945e2f23ad46f4c9bee42147eadedf4788511e590eb82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5894a4452fa93b51f2e945e2f23ad46f4c9bee42147eadedf4788511e590eb82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Types.Variant5894a4452fa93b51f2e945e2f23ad46f4c9bee42147eadedf4788511e590eb82","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5894a4452fa93b51f2e945e2f23ad46f4c9bee42147eadedf4788511e590eb82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/Linear.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.Linear.Types
public import Lean.Meta.Tactic.Grind.Arith.Linear.Util
public import Lean.Meta.Tactic.Grind.Arith.Linear.Var
public import Lean.Meta.Tactic.Grind.Arith.Linear.StructId
public import Lean.Meta.Tactic.Grind.Arith.Linear.IneqCnstr
public import Lean.Meta.Tactic.Grind.Arith.Linear.Reify
public import Lean.Meta.Tactic.Grind.Arith.Linear.DenoteExpr
public import Lean.Meta.Tactic.Grind.Arith.Linear.ToExpr
public import Lean.Meta.Tactic.Grind.Arith.Linear.Proof
public import Lean.Meta.Tactic.Grind.Arith.Linear.SearchM
public import Lean.Meta.Tactic.Grind.Arith.Linear.Search
public import Lean.Meta.Tactic.Grind.Arith.Linear.PropagateEq
public import Lean.Meta.Tactic.Grind.Arith.Linear.Internalize
public import Lean.Meta.Tactic.Grind.Arith.Linear.Model
public import Lean.Meta.Tactic.Grind.Arith.Linear.PP
public import Lean.Meta.Tactic.Grind.Arith.Linear.Inv
public import Lean.Meta.Tactic.Grind.Arith.Linear.MBTC
public import Lean.Meta.Tactic.Grind.Arith.Linear.VarRename
public import Lean.Meta.Tactic.Grind.Arith.Linear.OfNatModule
public import Lean.Meta.Tactic.Grind.Arith.Linear.Action

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Types.Variant5894a4452fa93b51f2e945e2f23ad46f4c9bee42147eadedf4788511e590eb82

public section
namespace Lean.Meta.Grind.Arith.Linear
builtin_initialize registerTraceClass `grind.linarith
builtin_initialize registerTraceClass `grind.linarith.internalize
builtin_initialize registerTraceClass `grind.linarith.assert
builtin_initialize registerTraceClass `grind.linarith.model
builtin_initialize registerTraceClass `grind.linarith.assert.unsat (inherited := true)
builtin_initialize registerTraceClass `grind.linarith.assert.trivial (inherited := true)
builtin_initialize registerTraceClass `grind.linarith.assert.store (inherited := true)
builtin_initialize registerTraceClass `grind.linarith.assert.ignored (inherited := true)

builtin_initialize registerTraceClass `grind.debug.linarith.search
builtin_initialize registerTraceClass `grind.debug.linarith.search.conflict (inherited := true)
builtin_initialize registerTraceClass `grind.debug.linarith.search.assign (inherited := true)
builtin_initialize registerTraceClass `grind.debug.linarith.search.split (inherited := true)
builtin_initialize registerTraceClass `grind.debug.linarith.search.backtrack (inherited := true)
builtin_initialize registerTraceClass `grind.debug.linarith.subst

builtin_initialize
  linearExt.setMethods
    (internalize := Linear.internalize)
    (newEq       := Linear.processNewEq)
    (newDiseq    := Linear.processNewDiseq)
    (action      := Action.linarith)
    (check       := Linear.check)
    (checkInv    := Linear.checkInvariants)
    (mbtc        := Linear.mbtc)

end Lean.Meta.Grind.Arith.Linear
```
