# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Loop.Variantb13e6128c4defca707c0e6c6ed7ebcaf6c6d57a5a45141281494c946ecc936af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d29da3aaccb2bea6447baf9d04bc8d0912a4628` · SHA-256 `9054210b602f466cc2091d430db1d72bd72ce0d6af28bfab6ee10538e577a628`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IterEquivForInEq.Variantd967dc954abe56f70b267b130a16c7dcef98a1b9ecfd0aa58f48bac7a64d8c5f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d967dc954abe56f70b267b130a16c7dcef98a1b9ecfd0aa58f48bac7a64d8c5f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.IterEquivForInEq.Variantd967dc954abe56f70b267b130a16c7dcef98a1b9ecfd0aa58f48bac7a64d8c5f","mathematical_subject":"Logic.Foundations","original_sha256":"d967dc954abe56f70b267b130a16c7dcef98a1b9ecfd0aa58f48bac7a64d8c5f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Consumers/Loop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Lemmas.Consumers.Loop
public import Std.Data.Iterators.Lemmas.Consumers.Collect
public import Std.Data.Iterators.Lemmas.Consumers.Monadic.Loop


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IterEquivForInEq.Variantd967dc954abe56f70b267b130a16c7dcef98a1b9ecfd0aa58f48bac7a64d8c5f

@[expose] public section

namespace Std
open Std.Iterators

theorem Iter.Equiv.forIn_eq {α₁ α₂ β γ : Type w} {m : Type w → Type w'}
    [Iterator α₁ Id β] [Iterator α₂ Id β] [Finite α₁ Id] [Finite α₂ Id]
    [Monad m] [LawfulMonad m] [IteratorLoop α₁ Id m] [LawfulIteratorLoop α₁ Id m]
    [IteratorLoop α₂ Id m] [LawfulIteratorLoop α₂ Id m] {init : γ} {f : β → γ → m (ForInStep γ)}
    {ita : Iter (α := α₁) β} {itb : Iter (α := α₂) β} (h : Iter.Equiv ita itb) :
    ForIn.forIn (m := m) ita init f = ForIn.forIn (m := m) itb init f := by
  letI : MonadLift Id m := ⟨Std.Internal.idToMonad (α := _)⟩
  letI := Std.Internal.LawfulMonadLiftFunction.idToMonad (m := m)
  simp [Iter.forIn_eq_forIn_toIterM, h.toIterM.forIn_eq]

theorem Iter.Equiv.foldM_eq {α₁ α₂ β γ : Type w} {m : Type w → Type w'}
    [Iterator α₁ Id β] [Iterator α₂ Id β][Iterator α₁ Id β] [Iterator α₂ Id β]
    [Finite α₁ Id] [Finite α₂ Id] [Monad m] [LawfulMonad m]
    [IteratorLoop α₁ Id m] [LawfulIteratorLoop α₁ Id m]
    [IteratorLoop α₂ Id m] [LawfulIteratorLoop α₂ Id m]
    {init : γ} {f : γ → β → m γ}
    {ita : Iter (α := α₁) β} {itb : Iter (α := α₂) β} (h : Iter.Equiv ita itb) :
    ita.foldM (init := init) f = itb.foldM (init := init) f := by
  simp [Iter.foldM_eq_forIn, h.forIn_eq]

theorem Iter.Equiv.fold_eq {α₁ α₂ β γ : Type w} {m : Type w → Type w'}
    [Iterator α₁ Id β] [Iterator α₂ Id β][Iterator α₁ Id β] [Iterator α₂ Id β]
    [Finite α₁ Id] [Finite α₂ Id] [Monad m] [LawfulMonad m]
    [IteratorLoop α₁ Id Id] [LawfulIteratorLoop α₁ Id Id]
    [IteratorLoop α₂ Id Id] [LawfulIteratorLoop α₂ Id Id]
    {init : γ} {f : γ → β → γ}
    {ita : Iter (α := α₁) β} {itb : Iter (α := α₂) β} (h : Iter.Equiv ita itb) :
    ita.fold (init := init) f = itb.fold (init := init) f := by
  simp [Iter.fold_eq_foldM, h.foldM_eq]

end Std
```
