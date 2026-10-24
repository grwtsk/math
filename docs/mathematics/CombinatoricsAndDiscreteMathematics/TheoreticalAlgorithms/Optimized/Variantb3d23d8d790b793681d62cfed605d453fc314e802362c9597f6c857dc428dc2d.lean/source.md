# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Optimized.Variantb3d23d8d790b793681d62cfed605d453fc314e802362c9597f6c857dc428dc2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `685994c238acc45610ab7d52f91a1c4ae1ba7235` · SHA-256 `b3d23d8d790b793681d62cfed605d453fc314e802362c9597f6c857dc428dc2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2025 LeanCert Contributors. All rights reserved.
Released under AGPL-3.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.ML.Optimized.IntervalArray
import LeanCert.ML.Optimized.QuantizedLayer

/-!
# Optimized Neural Network Verification

This module provides high-performance implementations for neural network
interval propagation, designed to scale to real-world networks.

## Key Optimizations

1. **Structure-of-Arrays (SoA) Layout**: `IntervalArray` stores lower and upper
   bounds in separate contiguous arrays for cache efficiency (~5x improvement).

2. **Split-Sign Matrix Decomposition**: Pre-decompose W = W⁺ - W⁻ to eliminate
   branching in interval matrix multiplication (~2x improvement).

3. **Common Exponent Integer Arithmetic**: Align all values to a common exponent
   for pure integer (GMP) arithmetic (~10-50x improvement).

## Main Types

* `IntervalArray` - SoA interval vector representation
* `QuantizedLayer` - Layer with aligned integer representation
* `QuantizedNet` - Full network with quantized layers

## Usage

```lean
import LeanCert.ML.Optimized

open LeanCert.ML.Optimized

-- Create quantized network from rational layers
def qnet := QuantizedNet.ofLayers myLayers

-- Fast interval propagation
def output := qnet.forward (QuantizedLayer.alignInput myInput prec)
```
-/
````
