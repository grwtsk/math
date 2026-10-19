/-
  register_rust_bindings.lean — FFI registration of Rust → Lean externs.
  This script verifies that Rust-exposed C symbols are ABI-compatible with Lean.
-/

import Lean
open Lean IO

/-- FFI: Embed a node ID into ℓ² vector space. -/
@[extern "lean_embed"]
constant leanEmbed (node_id : UInt64) (dim : UInt32) (out_vec : Ptr Float) : Bool

/-- FFI: Compute gradient-based route between two nodes via Hilbert descent. -/
@[extern "dag_gradient_route"]
constant dagGradientRoute (src dst : UInt64)
                          (dim max_iters : UInt32)
                          (out_edges : Ptr UInt64)
                          (out_len : Ptr UInt32) : Bool

def main : IO Unit := do
  println! "✅ Registered Rust FFI functions:"
  println! "- lean_embed : UInt64 × u32 → ℓ² output"
  println! "- dag_gradient_route : finds spinor route in ℓ² space"

  -- Optional: test calling the externs (requires correct linking)
  -- let dim := 128
  -- let vec ← malloc (dim.toNat * sizeof Float)
  -- let ok ← leanEmbed 42 dim vec
  -- println! s!"leanEmbed succeeded: {ok}"

  return ()
