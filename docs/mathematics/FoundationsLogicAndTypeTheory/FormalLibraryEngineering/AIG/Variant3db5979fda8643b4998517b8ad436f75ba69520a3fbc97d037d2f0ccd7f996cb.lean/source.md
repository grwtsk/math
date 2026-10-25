# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AIG.Variant3db5979fda8643b4998517b8ad436f75ba69520a3fbc97d037d2f0ccd7f996cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1737418f4e5819965fcae0d4a54914637c447b19` · SHA-256 `925c7a49a24244fe543149d6b781bce22498b00f31671e222a804a81291bcc37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AIG.Variantb0ee669282f6f8bc5a76bcaa21d805021302406e46f0af3bbf1f8e14586cf2f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0ee669282f6f8bc5a76bcaa21d805021302406e46f0af3bbf1f8e14586cf2f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.AIG.Variantb0ee669282f6f8bc5a76bcaa21d805021302406e46f0af3bbf1f8e14586cf2f3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b0ee669282f6f8bc5a76bcaa21d805021302406e46f0af3bbf1f8e14586cf2f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Sat/AIG.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Sat.AIG.Basic
public import Std.Sat.AIG.LawfulOperator
public import Std.Sat.AIG.Lemmas
public import Std.Sat.AIG.Cached
public import Std.Sat.AIG.CachedLemmas
public import Std.Sat.AIG.CachedGates
public import Std.Sat.AIG.CachedGatesLemmas
public import Std.Sat.AIG.CNF
public import Std.Sat.AIG.Relabel
public import Std.Sat.AIG.RelabelNat
public import Std.Sat.AIG.RefVec
public import Std.Sat.AIG.RefVecOperator
public import Std.Sat.AIG.LawfulVecOperator
public import Std.Sat.AIG.If

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AIG.Variantb0ee669282f6f8bc5a76bcaa21d805021302406e46f0af3bbf1f8e14586cf2f3

```
