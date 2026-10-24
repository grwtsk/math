# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ULift.Variant866b816c5a618eb241f60dcbd8d01a8c4cd958f238976576fc3972007e6a1869

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `116b0c5c9e245b4702a35ca9df94463eb6f06846` · SHA-256 `0eb847eb0574e79d5578a73d621691a2eca270b6ca92525bbb9f8902fe84cb45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Map.Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Map.Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Control/ULift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison, Jannis Limperg
-/

import Mathlib.Mathport.Rename


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Map.Variant5169c284660ab80b96ecb9d498a42ca34b327b877b08ed9cc1dce66bdf577c27

#align_import control.ulift from "leanprover-community/mathlib"@"99e8971dc62f1f7ecf693d75e75fbbabd55849de"

/-!
# Monadic instances for `ULift` and `PLift`

In this file we define `Monad` and `IsLawfulMonad` instances on `PLift` and `ULift`. -/


universe u v

namespace PLift

variable {α : Sort u} {β : Sort v}

/-- Functorial action. -/
protected def map (f : α → β) (a : PLift α) : PLift β :=
  PLift.up (f a.down)
#align plift.map PLift.map

@[simp]
theorem map_up (f : α → β) (a : α) : (PLift.up a).map f = PLift.up (f a) :=
  rfl
#align plift.map_up PLift.map_up

/-- Embedding of pure values. -/
@[simp]
protected def pure : α → PLift α :=
  up
#align plift.pure PLift.pure

/-- Applicative sequencing. -/
protected def seq (f : PLift (α → β)) (x : Unit → PLift α) : PLift β :=
  PLift.up (f.down (x ()).down)
#align plift.seq PLift.seq

@[simp]
theorem seq_up (f : α → β) (x : α) : (PLift.up f).seq (fun _ => PLift.up x) = PLift.up (f x) :=
  rfl
#align plift.seq_up PLift.seq_up

/-- Monadic bind. -/
protected def bind (a : PLift α) (f : α → PLift β) : PLift β :=
  f a.down
#align plift.bind PLift.bind

@[simp]
theorem bind_up (a : α) (f : α → PLift β) : (PLift.up a).bind f = f a :=
  rfl
#align plift.bind_up PLift.bind_up

instance : Monad PLift where
  map := @PLift.map
  pure := @PLift.pure
  seq := @PLift.seq
  bind := @PLift.bind

instance : LawfulFunctor PLift where
  id_map := @fun _ ⟨_⟩ => rfl
  comp_map := @fun _ _ _ _ _ ⟨_⟩ => rfl
  map_const := @fun _ _ => rfl

instance : LawfulApplicative PLift where
  seqLeft_eq := @fun _ _ _ _ => rfl
  seqRight_eq := @fun _ _ _ _ => rfl
  pure_seq := @fun _ _ _ ⟨_⟩ => rfl
  map_pure := @fun _ _ _ _ => rfl
  seq_pure := @fun _ _ ⟨_⟩ _ => rfl
  seq_assoc := @fun _ _ _ ⟨_⟩ ⟨_⟩ ⟨_⟩ => rfl

instance : LawfulMonad PLift where
  bind_pure_comp := @fun _ _ _ ⟨_⟩ => rfl
  bind_map := @fun _ _ ⟨_⟩ ⟨_⟩ => rfl
  pure_bind := @fun _ _ _ _ => rfl
  bind_assoc := @fun _ _ _ ⟨_⟩ _ _ => rfl

@[simp]
theorem rec.constant {α : Sort u} {β : Type v} (b : β) :
    (@PLift.rec α (fun _ => β) fun _ => b) = fun _ => b := rfl
#align plift.rec.constant PLift.rec.constant

end PLift

namespace ULift

variable {α : Type u} {β : Type v}

/-- Functorial action. -/
protected def map (f : α → β) (a : ULift α) : ULift β :=
  ULift.up.{u} (f a.down)
#align ulift.map ULift.map

@[simp]
theorem map_up (f : α → β) (a : α) : (ULift.up.{u} a).map f = ULift.up.{u} (f a) :=
  rfl
#align ulift.map_up ULift.map_up

/-- Embedding of pure values. -/
@[simp]
protected def pure : α → ULift α :=
  up
#align ulift.pure ULift.pure

/-- Applicative sequencing. -/
protected def seq {α β} (f : ULift (α → β)) (x : Unit → ULift α) : ULift β :=
  ULift.up.{u} (f.down (x ()).down)
#align ulift.seq ULift.seq

@[simp]
theorem seq_up (f : α → β) (x : α) : (ULift.up f).seq (fun _ => ULift.up x) = ULift.up (f x) :=
  rfl
#align ulift.seq_up ULift.seq_up

/-- Monadic bind. -/
protected def bind (a : ULift α) (f : α → ULift β) : ULift β :=
  f a.down
#align ulift.bind ULift.bind

@[simp]
theorem bind_up (a : α) (f : α → ULift β) : (ULift.up a).bind f = f a :=
  rfl
#align ulift.bind_up ULift.bind_up

instance : Monad ULift where
  map := @ULift.map
  pure := @ULift.pure
  seq := @ULift.seq
  bind := @ULift.bind

instance : LawfulFunctor ULift where
  id_map := @fun _ ⟨_⟩ => rfl
  comp_map := @fun _ _ _ _ _ ⟨_⟩ => rfl
  map_const := @fun _ _ => rfl

instance : LawfulApplicative ULift where
  seqLeft_eq := @fun _ _ _ _ => rfl
  seqRight_eq := @fun _ _ _ _ => rfl
  pure_seq := @fun _ _ _ ⟨_⟩ => rfl
  map_pure := @fun _ _ _ _ => rfl
  seq_pure := @fun _ _ ⟨_⟩ _ => rfl
  seq_assoc := @fun _ _ _ ⟨_⟩ ⟨_⟩ ⟨_⟩ => rfl

instance : LawfulMonad ULift where
  bind_pure_comp := @fun _ _ _ ⟨_⟩ => rfl
  bind_map := @fun _ _ ⟨_⟩ ⟨_⟩ => rfl
  pure_bind := @fun _ _ _ _ => rfl
  bind_assoc := @fun _ _ _ ⟨_⟩ _ _ => rfl

@[simp]
theorem rec.constant {α : Type u} {β : Sort v} (b : β) :
     (@ULift.rec α (fun _ => β) fun _ => b) = fun _ => b := rfl
#align ulift.rec.constant ULift.rec.constant

end ULift
```
