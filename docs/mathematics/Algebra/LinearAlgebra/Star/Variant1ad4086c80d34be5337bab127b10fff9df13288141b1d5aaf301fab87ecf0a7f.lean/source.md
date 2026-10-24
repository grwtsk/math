# Complete source: GRWTSK.Algebra.LinearAlgebra.Star.Variant1ad4086c80d34be5337bab127b10fff9df13288141b1d5aaf301fab87ecf0a7f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dccae5176a383a44374e676177edcc160d7d0461` · SHA-256 `1ad4086c80d34be5337bab127b10fff9df13288141b1d5aaf301fab87ecf0a7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Frédéric Dupuis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Frédéric Dupuis
-/
import Mathlib.Algebra.Module.Equiv.Defs
import Mathlib.Algebra.Star.Basic

/-!
# Notation for star-linear maps

This is in a separate file as a it is not needed until much later,
and avoids importing the theory of star operations unnecessarily early.
-/

/-- `M →ₗ⋆[R] N` is the type of `R`-conjugate-linear maps from `M` to `N`. -/
notation:25 M " →ₗ⋆[" R:25 "] " M₂:0 => LinearMap (starRingEnd R) M M₂

/-- The notation `M ≃ₗ⋆[R] M₂` denotes the type of star-linear equivalences between `M` and `M₂`
over the `⋆` endomorphism of the underlying starred ring `R`. -/
notation:50 M " ≃ₗ⋆[" R "] " M₂ => LinearEquiv (starRingEnd R) M M₂
```
