# Complete source: GRWTSK.Topology.GeneralTopology.IsLocallyClosed.Variant6e7eae56eb5f953ad7714c8196f43f76f6b78b31ba3b828751436e0a7186632f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0816a0da45d0b14e541fb6b3248117515c6591be` · SHA-256 `7b5d4f3e39f6213d10b51fce2c44b3666bbf65e0b1255580ae1957f07ebd5cd8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsLocallyClosedIcc.Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsLocallyClosedIcc.Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39","mathematical_subject":"Topology.GeneralTopology","original_sha256":"65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Order/IsLocallyClosed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Xavier Roblot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Roblot
-/
import Mathlib.Topology.Order.OrderClosed
import Mathlib.Topology.LocallyClosed

/-!
# Intervals are locally closed

We prove that the intervals on a topological ordered space are locally closed.
-/


namespace GRWTSK.Topology.GeneralTopology.IsLocallyClosedIcc.Variant65e9d3729a7cf731c2a5ad58dc504b3d23608efbfbc5d123dc9f872099ee6f39

variable {X : Type*} [TopologicalSpace X] {a b : X}

theorem isLocallyClosed_Icc [Preorder X] [OrderClosedTopology X] :
    IsLocallyClosed (Set.Icc a b) :=
  isClosed_Icc.isLocallyClosed

theorem isLocallyClosed_Ioo [LinearOrder X] [OrderClosedTopology X] :
    IsLocallyClosed (Set.Ioo a b) :=
  isOpen_Ioo.isLocallyClosed

theorem isLocallyClosed_Ici [Preorder X] [ClosedIciTopology X] :
    IsLocallyClosed (Set.Ici a) :=
  isClosed_Ici.isLocallyClosed

theorem isLocallyClosed_Iic [Preorder X] [ClosedIicTopology X] :
    IsLocallyClosed (Set.Iic a) :=
  isClosed_Iic.isLocallyClosed

theorem isLocallyClosed_Ioi [LinearOrder X] [ClosedIicTopology X] :
    IsLocallyClosed (Set.Ioi a) :=
  isOpen_Ioi.isLocallyClosed

theorem isLocallyClosed_Iio [LinearOrder X] [ClosedIciTopology X] :
    IsLocallyClosed (Set.Iio a) :=
  isOpen_Iio.isLocallyClosed

theorem isLocallyClosed_Ioc [LinearOrder X] [ClosedIicTopology X] :
    IsLocallyClosed (Set.Ioc a b) := by
  rw [← Set.Iic_inter_Ioi]
  exact isLocallyClosed_Iic.inter isLocallyClosed_Ioi

theorem isLocallyClosed_Ico [LinearOrder X] [ClosedIciTopology X] :
    IsLocallyClosed (Set.Ico a b) := by
  rw [← Set.Iio_inter_Ici]
  exact isLocallyClosed_Iio.inter isLocallyClosed_Ici
```
