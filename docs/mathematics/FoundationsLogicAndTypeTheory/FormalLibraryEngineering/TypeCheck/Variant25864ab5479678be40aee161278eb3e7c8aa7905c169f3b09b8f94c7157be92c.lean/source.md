# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeCheck.Variant25864ab5479678be40aee161278eb3e7c8aa7905c169f3b09b8f94c7157be92c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6749c56b28c446b09a9ca7db30d4675b3d35e930` · SHA-256 `89de545669c2d45f096f4c7fb13c4d2960b15e2cea4b76a22cc7864f163878a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantceb0594887deeba507ff21684e2863a871678121e3ee487a3ac60ac84d110b62","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ceb0594887deeba507ff21684e2863a871678121e3ee487a3ac60ac84d110b62","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variantceb0594887deeba507ff21684e2863a871678121e3ee487a3ac60ac84d110b62","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ceb0594887deeba507ff21684e2863a871678121e3ee487a3ac60ac84d110b62","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/TypeCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Init
import Lean.Elab.Tactic.Basic
import Lean.Elab.SyntheticMVars

/-!
# The `type_check` tactic
Define the `type_check` tactic: it type checks a given expression, and traces its type.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantceb0594887deeba507ff21684e2863a871678121e3ee487a3ac60ac84d110b62

open Lean Elab Meta

/-- Type check the given expression, and trace its type. -/
elab tk:"type_check " e:term : tactic => do
  Tactic.withMainContext do
    let e ← Term.elabTermAndSynthesize e none
    check e
    let type ← inferType e
    Lean.logInfoAt tk m!"{← Lean.instantiateMVars type}"
```
