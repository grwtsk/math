# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadRing.Variant9ee4faf666e5a359f2d2ac75b5932a471a0bbf9ed1f196849da8f63b0514f25f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdb47c027b3e6e1b993a71349ab715b94d20d002` · SHA-256 `2c62b32241b169aafd861253357b90139a414fa363ce6388678f1842b938cab2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadRing.Variant7b62498626896c044a700e00c4128350c19bae199849e1be0938371945691647","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b62498626896c044a700e00c4128350c19bae199849e1be0938371945691647","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MonadRing.Variant7b62498626896c044a700e00c4128350c19bae199849e1be0938371945691647","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7b62498626896c044a700e00c4128350c19bae199849e1be0938371945691647","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Arith/MonadRing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Arith.MonadCanon

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadRing.Variant7b62498626896c044a700e00c4128350c19bae199849e1be0938371945691647

public section
namespace Lean.Meta.Sym.Arith

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

end Lean.Meta.Sym.Arith
```
