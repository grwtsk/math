# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofMode.Variant989124d06fcd38330219e63bf5473cb86d5a37046b199cef8cbee85c23d45101

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `422b3ca90630925554a1e5bccb0c330ba2e261a6` · SHA-256 `fd53ab552dc6e5072e1dfeb30f6bbb3f4655e0d4411facc2cf715fa6b015e8a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MGoal.Variant60b3bcc4250b79b9d89503ac06b43fe878385a8bd0fd9f7246e9436b0caa3bd1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"60b3bcc4250b79b9d89503ac06b43fe878385a8bd0fd9f7246e9436b0caa3bd1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MGoal.Variant60b3bcc4250b79b9d89503ac06b43fe878385a8bd0fd9f7246e9436b0caa3bd1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"60b3bcc4250b79b9d89503ac06b43fe878385a8bd0fd9f7246e9436b0caa3bd1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/ProofMode.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Elab.Tactic.Do.ProofMode.MGoal
public import Lean.Elab.Tactic.Do.ProofMode.Delab
public import Lean.Elab.Tactic.Do.ProofMode.Basic
public import Lean.Elab.Tactic.Do.ProofMode.Clear
public import Lean.Elab.Tactic.Do.ProofMode.Intro
public import Lean.Elab.Tactic.Do.ProofMode.Revert
public import Lean.Elab.Tactic.Do.ProofMode.Exact
public import Lean.Elab.Tactic.Do.ProofMode.Assumption
public import Lean.Elab.Tactic.Do.ProofMode.Pure
public import Lean.Elab.Tactic.Do.ProofMode.Frame
public import Lean.Elab.Tactic.Do.ProofMode.LeftRight
public import Lean.Elab.Tactic.Do.ProofMode.Constructor
public import Lean.Elab.Tactic.Do.ProofMode.RenameI
public import Lean.Elab.Tactic.Do.ProofMode.Specialize
public import Lean.Elab.Tactic.Do.ProofMode.Cases
public import Lean.Elab.Tactic.Do.ProofMode.Exfalso
public import Lean.Elab.Tactic.Do.ProofMode.Have
public import Lean.Elab.Tactic.Do.ProofMode.Refine

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MGoal.Variant60b3bcc4250b79b9d89503ac06b43fe878385a8bd0fd9f7246e9436b0caa3bd1

```
