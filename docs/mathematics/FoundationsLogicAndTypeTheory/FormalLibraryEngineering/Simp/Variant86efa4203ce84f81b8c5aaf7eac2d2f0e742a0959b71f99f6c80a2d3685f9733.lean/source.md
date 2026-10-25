# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant86efa4203ce84f81b8c5aaf7eac2d2f0e742a0959b71f99f6c80a2d3685f9733

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a34e6d979abb1fb4391e958f6cd8b22258704eac` · SHA-256 `2ef90e51652b76c6c03a21d49f52fda64f072ebe7c36627e62dab758ac7088b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTheorems.Variantd92c0884dfbe1bf623b933b8cffb084bb15c2d8fbe9a3c33bd758478a52b78fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d92c0884dfbe1bf623b933b8cffb084bb15c2d8fbe9a3c33bd758478a52b78fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SimpTheorems.Variantd92c0884dfbe1bf623b933b8cffb084bb15c2d8fbe9a3c33bd758478a52b78fc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d92c0884dfbe1bf623b933b8cffb084bb15c2d8fbe9a3c33bd758478a52b78fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Simp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Simp.SimpTheorems
public import Lean.Meta.Tactic.Simp.SimpCongrTheorems
public import Lean.Meta.Tactic.Simp.Types
public import Lean.Meta.Tactic.Simp.Main
public import Lean.Meta.Tactic.Simp.Rewrite
public import Lean.Meta.Tactic.Simp.SimpAll
public import Lean.Meta.Tactic.Simp.Simproc
public import Lean.Meta.Tactic.Simp.BuiltinSimprocs
public import Lean.Meta.Tactic.Simp.RegisterCommand
public import Lean.Meta.Tactic.Simp.Attr
public import Lean.Meta.Tactic.Simp.Diagnostics
public import Lean.Meta.Tactic.Simp.Arith


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTheorems.Variantd92c0884dfbe1bf623b933b8cffb084bb15c2d8fbe9a3c33bd758478a52b78fc

public section

namespace Lean

builtin_initialize registerTraceClass `Meta.Tactic.simp
builtin_initialize registerTraceClass `Meta.Tactic.simp.congr (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.simp.discharge (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.simp.rewrite (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.simp.backwardDefEq (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.simp.unify (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.simp.ground (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.simp.loopProtection (inherited := true)
builtin_initialize registerTraceClass `Meta.Tactic.simp.numSteps
builtin_initialize registerTraceClass `Meta.Tactic.simp.heads
builtin_initialize registerTraceClass `Debug.Meta.Tactic.simp
builtin_initialize registerTraceClass `Debug.Meta.Tactic.simp.congr (inherited := true)

end Lean
```
