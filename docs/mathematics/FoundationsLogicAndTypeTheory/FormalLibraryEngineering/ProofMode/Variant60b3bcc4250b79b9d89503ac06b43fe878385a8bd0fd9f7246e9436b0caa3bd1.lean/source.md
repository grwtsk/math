# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofMode.Variant60b3bcc4250b79b9d89503ac06b43fe878385a8bd0fd9f7246e9436b0caa3bd1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a729fd36642bc6461a7723ad75246d8ba1945e29` · SHA-256 `60b3bcc4250b79b9d89503ac06b43fe878385a8bd0fd9f7246e9436b0caa3bd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.Tactic.Do.ProofMode.MGoal
public import Lean.Elab.Tactic.Do.ProofMode.Delab
public import Lean.Elab.Tactic.Do.ProofMode.Basic
public import Lean.Elab.Tactic.Do.ProofMode.Clear
public import Lean.Elab.Tactic.Do.ProofMode.Intro
public import Lean.Elab.Tactic.Do.ProofMode.Revert
public import Lean.Elab.Tactic.Do.ProofMode.Exact
public import Lean.Elab.Tactic.Do.ProofMode.Assumption
public import Lean.Elab.Tactic.Do.ProofMode.Pure
public import Lean.Elab.Tactic.Do.ProofMode.Frame
public import Lean.Elab.Tactic.Do.ProofMode.LeftRight
public import Lean.Elab.Tactic.Do.ProofMode.Constructor
public import Lean.Elab.Tactic.Do.ProofMode.RenameI
public import Lean.Elab.Tactic.Do.ProofMode.Specialize
public import Lean.Elab.Tactic.Do.ProofMode.Cases
public import Lean.Elab.Tactic.Do.ProofMode.Exfalso
public import Lean.Elab.Tactic.Do.ProofMode.Have
public import Lean.Elab.Tactic.Do.ProofMode.Refine
```
