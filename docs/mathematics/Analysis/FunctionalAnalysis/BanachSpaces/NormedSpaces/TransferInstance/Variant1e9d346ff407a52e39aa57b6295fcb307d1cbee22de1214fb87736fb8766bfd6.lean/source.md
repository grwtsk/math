# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.TransferInstance.Variant1e9d346ff407a52e39aa57b6295fcb307d1cbee22de1214fb87736fb8766bfd6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9e86900764de7d89388d63b1e8a6fcf740c0c19` · SHA-256 `09097bb26222678388c160c0593fd0c29c5a6a57d3bce5b6285c92f958e65321`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.SeminormedCommGroup.Variant3afb1c9c1d62dd95ba7554e06ce304e7dd36d5c5f963d7e9554753c26b539538","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3afb1c9c1d62dd95ba7554e06ce304e7dd36d5c5f963d7e9554753c26b539538","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.SeminormedCommGroup.Variant3afb1c9c1d62dd95ba7554e06ce304e7dd36d5c5f963d7e9554753c26b539538","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"3afb1c9c1d62dd95ba7554e06ce304e7dd36d5c5f963d7e9554753c26b539538","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Normed/Module/TransferInstance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/
module

public import Mathlib.Analysis.Normed.Module.Basic
public import Mathlib.Algebra.Group.TransferInstance
public import Mathlib.Algebra.Module.TransferInstance
public import Mathlib.Topology.MetricSpace.TransferInstance

/-!
# Transfer normed algebraic structures across `Equiv`s or `AddEquiv`s

In this file, we transfer a (semi-)normed (additive) commutative group and normed space structures
across an equivalence.
This continues the pattern set in `Mathlib/Algebra/Module/TransferInstance.lean`.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.SeminormedCommGroup.Variant3afb1c9c1d62dd95ba7554e06ce304e7dd36d5c5f963d7e9554753c26b539538

public section

variable {α β : Type*}

namespace Equiv

variable (e : α ≃ β)

/-- Transfer a `SeminormedCommGroup` across an `Equiv` -/
@[to_additive /-- Transfer a `SeminormedAddCommGroup` across an `Equiv` -/]
protected abbrev seminormedCommGroup [SeminormedCommGroup β] (e : α ≃ β) :
    SeminormedCommGroup α :=
  letI := e.commGroup
  { SeminormedCommGroup.induced _ _ e.mulEquiv with toPseudoMetricSpace := e.pseudometricSpace }

/-- Transfer a `NormedCommGroup` across an `Equiv` -/
@[to_additive /-- Transfer a `NormedAddCommGroup` across an `Equiv` -/]
protected abbrev normedCommGroup [NormedCommGroup β] (e : α ≃ β) : NormedCommGroup α :=
  letI := e.commGroup
  { NormedCommGroup.induced _ _ e.mulEquiv e.injective
    with toPseudoMetricSpace := e.pseudometricSpace }

end Equiv

/-- Transfer `NormedSpace` across an `AddEquiv` -/
protected abbrev AddEquiv.normedSpace (𝕜 : Type*) [NormedField 𝕜]
    [AddCommGroup α] [SeminormedAddCommGroup β] [NormedSpace 𝕜 β] (e : α ≃+ β) :
    letI : SeminormedAddCommGroup α := .induced _ _ e
    NormedSpace 𝕜 α :=
  letI := e.module 𝕜
  .induced _ _ _ (e.linearEquiv _)

@[deprecated (since := "2026-07-30")] alias Equiv.normedSpace := AddEquiv.normedSpace
```
