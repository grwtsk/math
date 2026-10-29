import Lake
open Lake DSL

package think where
  srcDir := "."

@[default_target]
lean_lib Think where
  roots := #[`Think]
