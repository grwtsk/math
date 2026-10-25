# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtomM.Variantedad812b1c00f5adb2c384a180eb75d7fbe6cc0b37382c5a5022ce15cb4d0bfb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6671e7a9dced578664be18508e56f979ba5b9dfd` · SHA-256 `e221e5f5e9700309907ca28fb24967e091c6c126972c311ad6d321f6d0acc8ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtomMContext.Varianta3cfd52148c5d263c83fdae8e60036fa6d142f4e5157c0412cc412fbede08a29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a3cfd52148c5d263c83fdae8e60036fa6d142f4e5157c0412cc412fbede08a29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AtomMContext.Varianta3cfd52148c5d263c83fdae8e60036fa6d142f4e5157c0412cc412fbede08a29","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a3cfd52148c5d263c83fdae8e60036fa6d142f4e5157c0412cc412fbede08a29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Util/AtomM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Elab.Tactic.Basic
import Mathlib.Algebra.GroupPower.Basic
import Mathlib.Algebra.Ring.Basic
import Mathlib.Tactic.NormNum

/-!
# A monad for tracking and deduplicating atoms

This monad is used by tactics like `ring` and `abel` to keep uninterpreted atoms in a consistent
order, and also to allow unifying atoms up to a specified transparency mode.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtomMContext.Varianta3cfd52148c5d263c83fdae8e60036fa6d142f4e5157c0412cc412fbede08a29

set_option autoImplicit true

namespace Mathlib.Tactic
open Lean Meta

/-- The context (read-only state) of the `AtomM` monad. -/
structure AtomM.Context :=
  /-- The reducibility setting for definitional equality of atoms -/
  red : TransparencyMode
  /-- A simplification to apply to atomic expressions when they are encountered,
  before interning them in the atom list. -/
  evalAtom : Expr → MetaM Simp.Result := fun e ↦ pure { expr := e }
  deriving Inhabited

/-- The mutable state of the `AtomM` monad. -/
structure AtomM.State :=
  /-- The list of atoms-up-to-defeq encountered thus far, used for atom sorting. -/
  atoms : Array Expr := #[]

/-- The monad that `ring` works in. This is only used for collecting atoms. -/
abbrev AtomM := ReaderT AtomM.Context <| StateRefT AtomM.State MetaM

/-- Run a computation in the `AtomM` monad. -/
def AtomM.run (red : TransparencyMode) (m : AtomM α)
    (evalAtom : Expr → MetaM Simp.Result := fun e ↦ pure { expr := e }) :
    MetaM α :=
  (m { red, evalAtom }).run' {}

/-- Get the index corresponding to an atomic expression, if it has already been encountered, or
put it in the list of atoms and return the new index, otherwise. -/
def AtomM.addAtom (e : Expr) : AtomM Nat := do
  let c ← get
  for h : i in [:c.atoms.size] do
    have : i < c.atoms.size := h.2
    if ← withTransparency (← read).red <| isDefEq e c.atoms[i] then
      return i
  modifyGet fun c ↦ (c.atoms.size, { c with atoms := c.atoms.push e })
```
