# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Where.Variantcd946e9424cd7423adeeec9d79839bcc929fc86a92aba8de27ad48f0bf5f9b00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cac742c0ffe42bdd14772ae06d6bd8a042844a64` · SHA-256 `cd946e9424cd7423adeeec9d79839bcc929fc86a92aba8de27ad48f0bf5f9b00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- None of these imports are really necessary, except to create namespace mentioned below.
import Lean.Elab.Term
import Lean.Elab.Command
import Batteries.Data.UnionFind.Basic

-- Return to pristine state
set_option linter.missingDocs false
set_option internal.cmdlineSnapshots false
set_option experimental.module false
set_option Elab.inServer false

/-- info: -- In root namespace with initial scope -/
#guard_msgs in #where

noncomputable section
/-- info: noncomputable section -/
#guard_msgs in #where
end

namespace WhereTest
variable (x : Nat) (α : Type)
/--
info: namespace WhereTest

variable (x : Nat) (α : Type)
-/
#guard_msgs in #where

universe u v w

/--
info: namespace WhereTest

universe u v w

variable (x : Nat) (α : Type)
-/
#guard_msgs in #where

set_option pp.piBinderTypes false

/--
info: namespace WhereTest

universe u v w

variable (x : Nat) (α : Type)

set_option pp.piBinderTypes false
-/
#guard_msgs in #where
end WhereTest

open Lean Meta

/--
info: open Lean Lean.Meta
-/
#guard_msgs in #where

open Elab hiding TermElabM

/--
info: open Lean Lean.Meta
open Lean.Elab hiding TermElabM
-/
#guard_msgs in #where

open Command Batteries
open _root_.Array renaming map -> listMap

/--
info: open Lean Lean.Meta
open Lean.Elab hiding TermElabM
open Lean.Elab.Command Lean.Meta.Command Batteries
open Array renaming map → listMap
-/
#guard_msgs in #where
```
