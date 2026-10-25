# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Environment.Variant802c5d12878710cad2797d5837424465fa8ea283bf852c1c9e092a14ce582bfe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ec6ccdd2e0a0b3a67caa4a741c4ed73145fb54e` · SHA-256 `802c5d12878710cad2797d5837424465fa8ea283bf852c1c9e092a14ce582bfe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Thomas R. Murrills. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas R. Murrills
-/
module

public import Lean.Environment
-- Import this linter explicitly to ensure that
-- this file has a valid copyright header and module docstring.
import Mathlib.Tactic.Linter.Header --shake: keep

/-!
# Additional utilities for `Lean.Environment`
-/

namespace Lean.Environment

public section constKind

/- The following declarations account for the fact that the `ConstantKind` of a declaration is
accessible when getting its `ConstantVal`, but is not recorded in said `ConstantVal`. -/

/--
Like `findConstVal?`, but also returns the declarations `ConstantKind`, which is known immediately.

Blocks on everything but the constant's body (if any), which is not accessible through the result.
-/
def findConstValWithKind? (env : Environment) (decl : Name) (skipRealize := false) :
    Option (ConstantVal × ConstantKind) := do
  let info ← env.findAsync? decl skipRealize
  return (info.toConstantVal, info.kind)

/--
Like `findConstVal?`, but only finds the `ConstantVal` for `decl` in `env` if its kind satisfies
`p`. Otherwise, returns `none`.

Blocks on everything but the constant's body (if any), which is not accessible through the result.
-/
def findConstValOfKind? (env : Environment) (p : ConstantKind → Bool) (decl : Name)
    (skipRealize := false) : Option ConstantVal := do
  let info ← env.findAsync? decl skipRealize
  if p info.kind then info.toConstantVal else none

/--
Like `findConstVal?`, but only finds the `ConstantVal` for `decl` in `env` if it is a theorem.

Blocks on everything but the constant's body (if any), which is not accessible through the result.
-/
def findTheoremConstVal? (env : Environment) (decl : Name)
    (skipRealize := false) : Option ConstantVal := do
  env.findConstValOfKind? (· matches .thm) decl skipRealize

end constKind

end Lean.Environment
```
