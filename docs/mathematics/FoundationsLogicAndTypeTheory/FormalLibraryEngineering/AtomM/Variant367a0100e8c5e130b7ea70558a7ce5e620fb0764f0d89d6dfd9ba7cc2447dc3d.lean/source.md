# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtomM.Variant367a0100e8c5e130b7ea70558a7ce5e620fb0764f0d89d6dfd9ba7cc2447dc3d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `320c78ba254ca70307e8ef34005cecbc28c00f42` · SHA-256 `802a8330c0eecefeb9cb8fea61b59eeb5d68fbe05cb7f7ed4c4db548cc98e578`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtomMContext.Variant53b64e024eb05f5a9b3b5d9fac96ba08043f4888cec3f94e34eb437a0a58e795","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53b64e024eb05f5a9b3b5d9fac96ba08043f4888cec3f94e34eb437a0a58e795","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AtomMContext.Variant53b64e024eb05f5a9b3b5d9fac96ba08043f4888cec3f94e34eb437a0a58e795","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"53b64e024eb05f5a9b3b5d9fac96ba08043f4888cec3f94e34eb437a0a58e795","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Util/AtomM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Init
import Lean.Meta.Tactic.Simp.Types
import Qq

/-!
# A monad for tracking and deduplicating atoms

This monad is used by tactics like `ring` and `abel` to keep uninterpreted atoms in a consistent
order, and also to allow unifying atoms up to a specified transparency mode.

Note: this can become very expensive because it is using `isDefEq`.
For performance reasons, consider whether `Lean.Meta.Canonicalizer.canon` can be used instead.
After canonicalizing, a `HashMap Expr Nat` suffices to keep track of previously seen atoms,
and is much faster as it uses `Expr` equality rather than `isDefEq`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtomMContext.Variant53b64e024eb05f5a9b3b5d9fac96ba08043f4888cec3f94e34eb437a0a58e795

namespace Mathlib.Tactic
open Lean Meta

/-- The context (read-only state) of the `AtomM` monad. -/
structure AtomM.Context where
  /-- The reducibility setting for definitional equality of atoms -/
  red : TransparencyMode
  /-- A simplification to apply to atomic expressions when they are encountered,
  before interning them in the atom list. -/
  evalAtom : Expr → MetaM Simp.Result := fun e ↦ pure { expr := e }
  deriving Inhabited

/-- The mutable state of the `AtomM` monad. -/
structure AtomM.State where
  /-- The list of atoms-up-to-defeq encountered thus far, used for atom sorting. -/
  atoms : Array Expr := #[]

/-- The monad that `ring` works in. This is only used for collecting atoms. -/
abbrev AtomM := ReaderT AtomM.Context <| StateRefT AtomM.State MetaM

/-- Run a computation in the `AtomM` monad. -/
def AtomM.run {α : Type} (red : TransparencyMode) (m : AtomM α)
    (evalAtom : Expr → MetaM Simp.Result := fun e ↦ pure { expr := e }) :
    MetaM α :=
  (m { red, evalAtom }).run' {}

/-- A safe version of `isDefEq` that doesn't throw errors. We use it to avoid
"unknown free variable '_fvar.102937'" errors when there may be out-of-scope free variables.

TODO: don't catch any other errors
-/
def isDefEqSafe (a b : Expr) : MetaM Bool :=
  try isDefEq a b catch _ => pure false

/-- If an atomic expression has already been encountered, get the index and the stored form of the
atom (which will be defeq at the specified transparency, but not necessarily syntactically equal).
If the atomic expression has *not* already been encountered, store it in the list of atoms, and
return the new index (and the stored form of the atom, which will be itself).

In a normalizing tactic, the expression returned by `addAtom` should be considered the normal form.
-/
def AtomM.addAtom (e : Expr) : AtomM (Nat × Expr) := do
  let c ← get
  for h : i in [:c.atoms.size] do
    if ← withTransparency (← read).red <| isDefEqSafe e c.atoms[i] then
      return (i, c.atoms[i])
  modifyGet fun c ↦ ((c.atoms.size, e), { c with atoms := c.atoms.push e })

open Qq in
/-- If an atomic expression has already been encountered, get the index and the stored form of the
atom (which will be defeq at the specified transparency, but not necessarily syntactically equal).
If the atomic expression has *not* already been encountered, store it in the list of atoms, and
return the new index (and the stored form of the atom, which will be itself).

In a normalizing tactic, the expression returned by `addAtomQ` should be considered the normal form.

This is a strongly-typed version of `AtomM.addAtom` for code using `Qq`.
-/
def AtomM.addAtomQ {u : Level} {α : Q(Type u)} (e : Q($α)) :
    AtomM (Nat × {e' : Q($α) // $e =Q $e'}) := do
  let (n, e') ← AtomM.addAtom e
  return (n, ⟨e', ⟨⟩⟩)

end Mathlib.Tactic
```
