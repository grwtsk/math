# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile20250630120019.Variant57185f12e486273ce291412de28762a6a8dc55afe77d1f84a7b7271267d408f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b393b76ff80634204f556ff1f9040a9ca94df69` · SHA-256 `57185f12e486273ce291412de28762a6a8dc55afe77d1f84a7b7271267d408f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

/-
  lakefile.lean  – Spectral-RH
  ----------------------------
  * Uses the Lean tool-chain named in `.lean-toolchain`
  * Depends on mathlib4 `master`
  * Source directory is  `Spectral/`
-/

package Spectral where
  -- extra compiler flag (optional hygiene)
  moreLeanArgs := #[
    "-DautoImplicit=false"
  ]
  -- oleanCache   := false

/-- Use the head of mathlib4’s master branch. -/
require mathlib from
  git "https://github.com/leanprover-community/mathlib4" @ "master"

@[default_target]
lean_lib Spectral where
  -- all `.lean` files are under this folder:
  srcDir := "."
```
