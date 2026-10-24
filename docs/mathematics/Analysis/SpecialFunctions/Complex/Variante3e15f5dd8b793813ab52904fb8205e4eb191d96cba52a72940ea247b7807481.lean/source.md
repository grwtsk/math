# Complete source: GRWTSK.Analysis.SpecialFunctions.Complex.Variante3e15f5dd8b793813ab52904fb8205e4eb191d96cba52a72940ea247b7807481

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa4ea27f5d1989fc2f0e8061d099824f8cb152cc` · SHA-256 `e3e15f5dd8b793813ab52904fb8205e4eb191d96cba52a72940ea247b7807481`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/
module

public import Mathlib.Analysis.Meromorphic.NormalForm
public import Mathlib.Analysis.SpecialFunctions.Gamma.Beta

/-!
# The Gamma function is meromorphic
-/

public section

open Set Complex

lemma MeromorphicNFOn.Gamma : MeromorphicNFOn Gamma univ :=
  meromorphicNFOn_inv.mp <| AnalyticOnNhd.meromorphicNFOn <|
    analyticOnNhd_univ_iff_differentiable.mpr differentiable_one_div_Gamma

-- TODO: restate `MeromorphicNFOn.Gamma` when `MeromorphicNF` is defined

@[fun_prop]
lemma Meromorphic.Gamma : Meromorphic Gamma :=
  meromorphicOn_univ.mp MeromorphicNFOn.Gamma.meromorphicOn

@[fun_prop]
lemma MeromorphicOn.Gamma {s} : MeromorphicOn Gamma s :=
  Meromorphic.Gamma.meromorphicOn
```
