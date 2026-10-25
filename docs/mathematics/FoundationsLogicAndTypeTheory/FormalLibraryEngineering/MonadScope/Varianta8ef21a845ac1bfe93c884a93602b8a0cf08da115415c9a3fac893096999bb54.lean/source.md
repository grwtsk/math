# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadScope.Varianta8ef21a845ac1bfe93c884a93602b8a0cf08da115415c9a3fac893096999bb54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2887cd826f46e97190d24a9a642d2313fc08e462` · SHA-256 `1560c09aa6c298a1f19090bcc2fb3b3b71e5d13de3aab90cc65794565b3f8440`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadScope.Variant7446951ef9de73226f439a054503d895c943228cb8e2fe51ee5dd1048df01866","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7446951ef9de73226f439a054503d895c943228cb8e2fe51ee5dd1048df01866","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MonadScope.Variant7446951ef9de73226f439a054503d895c943228cb8e2fe51ee5dd1048df01866","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7446951ef9de73226f439a054503d895c943228cb8e2fe51ee5dd1048df01866","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/MonadScope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadScope.Variant7446951ef9de73226f439a054503d895c943228cb8e2fe51ee5dd1048df01866

public section

namespace Lean.Compiler.LCNF

abbrev Scope := FVarIdSet

class MonadScope (m : Type → Type) where
  getScope : m Scope
  withScope : (Scope → Scope) → m α → m α

export MonadScope (getScope withScope)

abbrev ScopeT (m : Type → Type) := ReaderT Scope m

instance [Monad m] : MonadScope (ScopeT m) where
  getScope  := read
  withScope := withReader

instance (m n) [MonadLift m n] [MonadFunctor m n] [MonadScope m] : MonadScope n where
  getScope    := liftM (getScope : m _)
  withScope f := monadMap (m := m) (withScope f)

def inScope [MonadScope m] [Monad m] (fvarId : FVarId) : m Bool :=
  return (← getScope).contains fvarId

@[inline] def withParams [MonadScope m] [Monad m] (ps : Array (Param pu)) (x : m α) : m α :=
  withScope (fun s => ps.foldl (init := s) fun s p => s.insert p.fvarId) x

@[inline] def withFVar [MonadScope m] [Monad m] (fvarId : FVarId) (x : m α) : m α :=
  withScope (fun s => s.insert fvarId) x

@[inline] def withNewScope [MonadScope m] [Monad m] (x : m α) : m α := do
  withScope (fun _ => {}) x

end Lean.Compiler.LCNF
```
