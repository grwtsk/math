# Complete source: GRWTSK.Algebra.LinearAlgebra.VecSimp.Variant609b174a9910590f859ca914c932bdf387d8a6b98c4faa9f2ecd48acd579bc87

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be693e04f04dee48f378cc2cb9e23276fbf0db2a` · SHA-256 `609b174a9910590f859ca914c932bdf387d8a6b98c4faa9f2ecd48acd579bc87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Tactic.VecUtil
import Mathlib.Tactic.NormNum

/-!
# vec_simp: Vector simplification

## Tactics

* `vec_simp` - vector indexing: `![a,b,c] 2` → `c`, `![a,b,c] ⟨1, proof⟩` → `b`
* `vec_simp!` - + dite, abs, norm_num; use `vec_simp! [M]` for named matrices

## Why needed

Mathlib's `cons_val` uses `int?` which misses `Fin.mk` applications like `⟨0, by omega⟩`.
Uses `VecUtil.vecConsFinMk` which handles both via `Fin.val` reduction.

Shared utilities in `LeanCert.Tactic.VecUtil`. Debug: `set_option trace.VecUtil.debug true`
-/

/-- Simplify vector indexing: `![a,b,c] ⟨1, proof⟩` → `b`, `![a,b,c] 2` → `c`.
    See `vec_simp!` for dite/abs support. -/
macro "vec_simp" : tactic =>
  `(tactic| simp only [VecUtil.vecConsFinMk, Matrix.cons_val_zero, Matrix.cons_val_zero',
                       Matrix.cons_val_one, Matrix.head_cons])

/-- `vec_simp` + dite conditions + abs + norm_num. Use `vec_simp! [M]` for named matrices. -/
macro "vec_simp!" : tactic =>
  `(tactic| (vec_index_simp_with_dite; try norm_num))

/-- Unfold definitions then `vec_simp!`. E.g., `vec_simp! [M]` for `def M := ![![...]]`. -/
macro "vec_simp!" "[" defs:Lean.Parser.Tactic.simpLemma,* "]" : tactic =>
  `(tactic| (simp only [$defs,*]; vec_simp!))
```
