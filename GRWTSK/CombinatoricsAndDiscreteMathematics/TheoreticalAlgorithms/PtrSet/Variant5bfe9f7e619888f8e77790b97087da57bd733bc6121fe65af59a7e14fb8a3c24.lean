-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ptr.Variant907bbf458c242c59150e7eae064b129965849d26bfaba1b718796cf8976b31d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"907bbf458c242c59150e7eae064b129965849d26bfaba1b718796cf8976b31d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Ptr.Variant907bbf458c242c59150e7eae064b129965849d26bfaba1b718796cf8976b31d5","mathematical_subject":"Computation.DataStructures","original_sha256":"907bbf458c242c59150e7eae064b129965849d26bfaba1b718796cf8976b31d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/PtrSet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Leonardo de Moura. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.Hashable
public import Std.Data.HashSet.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ptr.Variant907bbf458c242c59150e7eae064b129965849d26bfaba1b718796cf8976b31d5

public section

namespace Lean

structure Ptr (α : Type u) where
  value : α

unsafe instance : Hashable (Ptr α) where
  hash a := hash64 (ptrAddrUnsafe a).toUInt64

unsafe instance : BEq (Ptr α) where
  beq a b := ptrAddrUnsafe a == ptrAddrUnsafe b

/--
Set of pointers. It is a low-level auxiliary datastructure used for traversing DAGs.
-/
@[expose] unsafe def PtrSet (α : Type) :=
  Std.HashSet (Ptr α)

unsafe def mkPtrSet {α : Type} (capacity : Nat := 64) : PtrSet α :=
  Std.HashSet.emptyWithCapacity capacity

unsafe abbrev PtrSet.insert (s : PtrSet α) (a : α) : PtrSet α :=
  Std.HashSet.insert s { value := a }

unsafe abbrev PtrSet.contains (s : PtrSet α) (a : α) : Bool :=
  Std.HashSet.contains s { value := a }

/--
Map of pointers. It is a low-level auxiliary datastructure used for traversing DAGs.
-/
@[expose] unsafe def PtrMap (α : Type) (β : Type) :=
  Std.HashMap (Ptr α) β

unsafe def mkPtrMap {α β : Type} (capacity : Nat := 64) : PtrMap α β :=
  Std.HashMap.emptyWithCapacity capacity

unsafe abbrev PtrMap.insert (s : PtrMap α β) (a : α) (b : β) : PtrMap α β :=
  Std.HashMap.insert s { value := a } b

unsafe abbrev PtrMap.contains (s : PtrMap α β) (a : α) : Bool :=
  Std.HashMap.contains s { value := a }

unsafe abbrev PtrMap.find? (s : PtrMap α β) (a : α) : Option β :=
  Std.HashMap.get? s { value := a }

end Lean
