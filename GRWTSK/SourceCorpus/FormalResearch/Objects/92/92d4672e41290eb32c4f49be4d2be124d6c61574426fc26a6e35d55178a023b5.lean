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
  git "https://github.com/leanprover-community/mathlib4" @ "nightly"

@[default_target]
lean_lib Spectral where
  -- all `.lean` files are under this folder:
  srcDir := "."
