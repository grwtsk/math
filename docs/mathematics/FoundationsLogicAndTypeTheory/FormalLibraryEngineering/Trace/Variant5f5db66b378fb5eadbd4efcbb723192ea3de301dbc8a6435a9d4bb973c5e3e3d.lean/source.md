# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trace.Variant5f5db66b378fb5eadbd4efcbb723192ea3de301dbc8a6435a9d4bb973c5e3e3d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db628a6ca2bf2054179ee9f1e2aa57f467d6064f` · SHA-256 `2cc726d2c0a7e17fd1215788a32b9b5963b6c282159f7aac79fd876f2cbb7b00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variantc611f025955fca9948d5878aee0c97afe31f4afdb1e74a112972812a231c755b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c611f025955fca9948d5878aee0c97afe31f4afdb1e74a112972812a231c755b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabTerm.Variantc611f025955fca9948d5878aee0c97afe31f4afdb1e74a112972812a231c755b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c611f025955fca9948d5878aee0c97afe31f4afdb1e74a112972812a231c755b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Trace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Init
import Lean.Elab.Tactic.ElabTerm
import Lean.Meta.Eval

/-!
# Defines the `trace` tactic.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variantc611f025955fca9948d5878aee0c97afe31f4afdb1e74a112972812a231c755b

open Lean Meta Elab Tactic

/-- Evaluates a term to a string (when possible), and prints it as a trace message. -/
elab (name := Lean.Parser.Tactic.trace) tk:"trace " val:term : tactic => do
  let e ← elabTerm (← `(toString $val)) (some (mkConst `String))
  logInfoAt tk <|← unsafe evalExpr String (mkConst `String) e
```
