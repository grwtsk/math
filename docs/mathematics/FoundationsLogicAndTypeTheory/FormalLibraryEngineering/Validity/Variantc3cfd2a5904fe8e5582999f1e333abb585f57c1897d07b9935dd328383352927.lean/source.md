# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Validity.Variantc3cfd2a5904fe8e5582999f1e333abb585f57c1897d07b9935dd328383352927

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8cf48be4c80584464a7506fee00b9a8227a6408` · SHA-256 `3d14182655cb9d2942a678dfca2ba391286b50a72ba7fa10e393574c526bff7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bounds.Variant5aa102a29506148bbd87a8edb43b2c1f77c53c20c77ecccecd45a045f225a0ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5aa102a29506148bbd87a8edb43b2c1f77c53c20c77ecccecd45a045f225a0ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Bounds.Variant5aa102a29506148bbd87a8edb43b2c1f77c53c20c77ecccecd45a045f225a0ec","mathematical_subject":"Foundations.Unclassified","original_sha256":"5aa102a29506148bbd87a8edb43b2c1f77c53c20c77ecccecd45a045f225a0ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Validity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Validity.Bounds
import LeanCert.Validity.Types

/-!
# Validity Layer

The Validity module contains the "Golden Theorems" that bridge computational
results (Bool) to semantic proofs (Prop).

## Philosophy

This layer embodies the core LeanCert principle: **Certification is the Product**.
The Engine computes numbers; Validity turns them into theorems.

## Main Components

* `Validity.Bounds` - Golden Theorems for interval bounds:
  - `checkUpperBound` (Bool) → `verify_upper_bound` (Prop)
  - `checkLowerBound` (Bool) → `verify_lower_bound` (Prop)

* `Validity.Types` - Certificate structures:
  - `VerifiedGlobalMin` - Proven global minimum
  - `VerifiedGlobalMax` - Proven global maximum
  - `VerifiedRoot` - Proven root existence
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bounds.Variant5aa102a29506148bbd87a8edb43b2c1f77c53c20c77ecccecd45a045f225a0ec

```
