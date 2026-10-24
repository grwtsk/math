# Complete source: GRWTSK.Topology.GeneralTopology.Module.Variantac127469094d353b36c797e46edfe2cde29c945e283a39bea0f02d006c6c7263

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2eb6d9fab691f357f8c19629d95e144d3ce2afc4` · SHA-256 `ac127469094d353b36c797e46edfe2cde29c945e283a39bea0f02d006c6c7263`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.Order.Nonneg.Module
public import Mathlib.Topology.Algebra.ConstMulAction
public import Mathlib.Topology.Algebra.MulAction

/-!
# Continuous nonnegative scalar multiplication
-/

public section

variable {R α : Type*} [Semiring R] [PartialOrder R] [SMul R α] [TopologicalSpace α]

instance [ContinuousConstSMul R α] : ContinuousConstSMul (Nonneg R) α where
  continuous_const_smul r := continuous_const_smul r.1

instance [TopologicalSpace R] [ContinuousSMul R α] : ContinuousSMul (Nonneg R) α where
  continuous_smul := continuous_smul (M := R).comp <| continuous_subtype_val.prodMap continuous_id
```
