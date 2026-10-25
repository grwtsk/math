# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Circuit.Variant40ec7c64d175336e40691bc0fa2ccab1d3980d48b04bef040a4fde101e000ef9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b93b824e2d6b804296ad24da42fc7e7e78d2fac` · SHA-256 `f1504155e1d337db49d223e93e2860e399a59762dcab7d387bced441ae414877`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Impl.Variant45125e132a4bc7e62fb01cadc1946c2d7e96f9ea1f96e9661fef9a66a56176b3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45125e132a4bc7e62fb01cadc1946c2d7e96f9ea1f96e9661fef9a66a56176b3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Impl.Variant45125e132a4bc7e62fb01cadc1946c2d7e96f9ea1f96e9661fef9a66a56176b3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"45125e132a4bc7e62fb01cadc1946c2d7e96f9ea1f96e9661fef9a66a56176b3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Impl.Variant45125e132a4bc7e62fb01cadc1946c2d7e96f9ea1f96e9661fef9a66a56176b3

@[expose] public section

/-!
This directory contains the implementation and verification of the bitblaster for `BitVec` problems
with boolean substructure. For any primitive operation defined in `Basic` there does exist one
file in `Impl`, containing the bitblaster and one file in `Lemmas`, demonstrating that the circuit
produced by the bitblaster is correct.
-/
```
