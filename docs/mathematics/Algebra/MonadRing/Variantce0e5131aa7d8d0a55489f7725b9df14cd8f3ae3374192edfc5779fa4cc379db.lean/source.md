# Complete source: GRWTSK.Algebra.MonadRing.Variantce0e5131aa7d8d0a55489f7725b9df14cd8f3ae3374192edfc5779fa4cc379db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4f663458bd40492e61031017aac25a499d67444` · SHA-256 `c029a0f15916cf878f73929c2d3a41db5860c11fb3deeeef94a199de08c42156`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.MonadRing.Variantd9f7fe2c206ef9807311494aa219cf4d089bf2dd0011efcc30452c0f7c101577","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d9f7fe2c206ef9807311494aa219cf4d089bf2dd0011efcc30452c0f7c101577","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.MonadRing.Variantd9f7fe2c206ef9807311494aa219cf4d089bf2dd0011efcc30452c0f7c101577","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"d9f7fe2c206ef9807311494aa219cf4d089bf2dd0011efcc30452c0f7c101577","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/CommRing/MonadRing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Arith.MonadCanon
public import Lean.Meta.Tactic.Grind.Arith.CommRing.Types

namespace GRWTSK.Algebra.MonadRing.Variantd9f7fe2c206ef9807311494aa219cf4d089bf2dd0011efcc30452c0f7c101577

public section
namespace Lean.Meta.Grind.Arith.CommRing

class MonadRing (m : Type → Type) where
  getRing : m Ring
  modifyRing : (Ring → Ring) → m Unit

export MonadRing (getRing modifyRing)

@[always_inline]
instance (m n) [MonadLift m n] [MonadRing m] : MonadRing n where
  getRing    := liftM (getRing : m Ring)
  modifyRing f := liftM (modifyRing f : m Unit)

class MonadCommRing (m : Type → Type) where
  getCommRing : m CommRing
  modifyCommRing : (CommRing → CommRing) → m Unit

export MonadCommRing (getCommRing modifyCommRing)

@[always_inline]
instance (m n) [MonadLift m n] [MonadCommRing m] : MonadCommRing n where
  getCommRing      := liftM (getCommRing : m CommRing)
  modifyCommRing f := liftM (modifyCommRing f : m Unit)

@[always_inline]
instance (m) [Monad m] [MonadCommRing m] : MonadRing m where
  getRing := return (← getCommRing).toRing
  modifyRing f := modifyCommRing fun s => { s with toRing := f s.toRing }

end Lean.Meta.Grind.Arith.CommRing
```
