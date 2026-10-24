-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IntervalArray.Variantb3d23d8d790b793681d62cfed605d453fc314e802362c9597f6c857dc428dc2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3d23d8d790b793681d62cfed605d453fc314e802362c9597f6c857dc428dc2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.IntervalArray.Variantb3d23d8d790b793681d62cfed605d453fc314e802362c9597f6c857dc428dc2d","mathematical_subject":"Computation.DataStructures","original_sha256":"b3d23d8d790b793681d62cfed605d453fc314e802362c9597f6c857dc428dc2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/ML/Optimized.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IntervalArray.Variantb3d23d8d790b793681d62cfed605d453fc314e802362c9597f6c857dc428dc2d

