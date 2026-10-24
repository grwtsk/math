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
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/7e1cb02402a6515141bc7410eaaf60f5bff480146158b6e3db72b6b16e6ad7c7/src"
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
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/7e1cb02402a6515141bc7410eaaf60f5bff480146158b6e3db72b6b16e6ad7c7/src"
  -- all `.lean` files are under this folder:
