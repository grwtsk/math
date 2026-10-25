# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadVar.Variantb6e791b0115a3a71ffb8d855e87510fbea9e5be6fc6fe444ddfd99611403a8b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88d9971b3a6d656ea854a4a9698fad086e849dfa` · SHA-256 `7a53d2155445c3560301963ef81b13efd9b71d93954f85429d4550b541f068e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadGetVar.Varianta43797528fe007531d2435561585624d8a24f0ff024577c9de973b069cd43f5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a43797528fe007531d2435561585624d8a24f0ff024577c9de973b069cd43f5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MonadGetVar.Varianta43797528fe007531d2435561585624d8a24f0ff024577c9de973b069cd43f5e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a43797528fe007531d2435561585624d8a24f0ff024577c9de973b069cd43f5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Arith/MonadVar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Arith.Types

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadGetVar.Varianta43797528fe007531d2435561585624d8a24f0ff024577c9de973b069cd43f5e

public section
namespace Lean.Meta.Sym.Arith

/-- Read a variable's Lean expression by index. Used by `DenoteExpr` and diagnostics (PP). -/
class MonadGetVar (m : Type → Type) where
  getVar : Var → m Expr

export MonadGetVar (getVar)

@[always_inline]
instance (m n) [MonadLift m n] [MonadGetVar m] : MonadGetVar n where
  getVar x := liftM (getVar x : m Expr)

/-- Create or lookup a variable for a Lean expression. Used by reification. -/
class MonadMkVar (m : Type → Type) where
  mkVar : Expr → m Var

export MonadMkVar (mkVar)

@[always_inline]
instance (m n) [MonadLift m n] [MonadMkVar m] : MonadMkVar n where
  mkVar e := liftM (mkVar e : m Var)

end Lean.Meta.Sym.Arith
```
