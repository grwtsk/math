# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCongr.Variant8697eb9583171be196d7643d01b51697c0e7d5160ea220f96f578ce172b40371

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23416c0a567eb302d4eae01a9a4b5151ec7a2c40` · SHA-256 `92d3a39e37ddbc68d759e2e863b224527ddced4a4d7955c629eabca44b4c1bdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantc18704d4faba7649062e5a1688c0d603097d4b5243c8e4d409cffd2083e5d870","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c18704d4faba7649062e5a1688c0d603097d4b5243c8e4d409cffd2083e5d870","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Core.Variantc18704d4faba7649062e5a1688c0d603097d4b5243c8e4d409cffd2083e5d870","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c18704d4faba7649062e5a1688c0d603097d4b5243c8e4d409cffd2083e5d870","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/GCongr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro, Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Heather Macbeth
-/
import Mathlib.Tactic.Positivity.Core
import Mathlib.Tactic.GCongr.CoreAttrs

/-! # Setup for the `gcongr` tactic

The core implementation of the `gcongr` ("generalized congruence") tactic is in the file
`Tactic.GCongr.Core`. In this file we set it up for use across the library by listing
`positivity` as a first-pass discharger for side goals (`gcongr_discharger`). -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantc18704d4faba7649062e5a1688c0d603097d4b5243c8e4d409cffd2083e5d870

macro_rules | `(tactic| gcongr_discharger) => `(tactic| positivity)

/-!
We register `gcongr` with the `hint` tactic.
-/

register_hint gcongr
```
