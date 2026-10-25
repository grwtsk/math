# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StoreInsts.Variant2bae8f7953be3eca5dc91fa60bf767bab85cb16df9a8a385aa44fa55bb8e79b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4981adbf931c588585e4a6c354bcdd21f117f75f` · SHA-256 `67da200bb2cd63599ddfe471b10582398d63bbc3f486507f81f5573aa36c4e36`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variant38545621ad95a1aa2e4cafe82ff3c0f4283d8a30cb62d8ab01d1ea4067b4cc27","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38545621ad95a1aa2e4cafe82ff3c0f4283d8a30cb62d8ab01d1ea4067b4cc27","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Order.Variant38545621ad95a1aa2e4cafe82ff3c0f4283d8a30cb62d8ab01d1ea4067b4cc27","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"38545621ad95a1aa2e4cafe82ff3c0f4283d8a30cb62d8ab01d1ea4067b4cc27","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/StoreInsts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Data.Order
public import Lean.Data.NameMap.Basic
public import Lake.Util.RBArray
public import Lake.Util.Family
public import Lake.Util.Store


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variant38545621ad95a1aa2e4cafe82ff3c0f4283d8a30cb62d8ab01d1ea4067b4cc27

open Lean
namespace Lake

public instance {cmp : κ → κ → Ordering} [Monad m] [Std.LawfulEqCmp cmp] : MonadDStore κ β (StateT (Std.DTreeMap κ β cmp) m) where
  fetch? k := modifyGet fun m => (m.get? k, m)
  store k a := modify (·.insert k a)

public instance {cmp : κ → κ → Ordering} [MonadLiftT (ST ω) m] [Monad m] [Std.LawfulEqCmp cmp] : MonadDStore κ β (StateRefT' ω (Std.DTreeMap κ β cmp) m) where
  fetch? k := modifyGet fun m => (m.get? k, m)
  store k a := modify (·.insert k a)

public instance [Monad m] : MonadStore κ α (StateT (RBArray κ α cmp) m) where
  fetch? k := modifyGet fun m => (m.find? k, m)
  store k a := modify (·.insert k a)

public instance [MonadLiftT (ST ω) m] [Monad m] : MonadStore κ α (StateRefT' ω (RBArray κ α cmp) m) where
  fetch? k := modifyGet fun m => (m.find? k, m)
  store k a := modify (·.insert k a)

public instance [Monad m] : MonadStore Name α (StateT (NameMap α) m) where
  fetch? k := modifyGet fun m => (m.find? k, m)
  store k a := modify (·.insert k a)

public instance [MonadLiftT (ST ω) m] [Monad m] : MonadStore Name α (StateRefT' ω (NameMap α) m) where
  fetch? k := modifyGet fun m => (m.find? k, m)
  store k a := modify (·.insert k a)

public instance [MonadDStore κ β m] [t : FamilyOut β k α] : MonadStore1Of k α m where
  fetch? := cast (by rw [t.fam_eq]) <| fetch? (m := m) k
  store a := store k <| cast t.fam_eq.symm a
```
