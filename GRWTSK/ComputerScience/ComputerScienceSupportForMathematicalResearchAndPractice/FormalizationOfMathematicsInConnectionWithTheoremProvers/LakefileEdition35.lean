import Lake
open Lake DSL

package think where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.30.0"

lean_lib Think where
  srcDir := "lib/rendering/shader/core/lean"
  roots := #[`Think]
