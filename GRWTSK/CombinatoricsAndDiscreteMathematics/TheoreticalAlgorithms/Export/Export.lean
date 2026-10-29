import BitMatrixElements.Core.Basic
import BitMatrixElements.Core.ArrayBacked

/-!
# Narrow public surface

Only the declarative matrix and its array-backed refinement cross the initial
composite boundary.  Packed foreign bytes remain Rust-owned.
-/
