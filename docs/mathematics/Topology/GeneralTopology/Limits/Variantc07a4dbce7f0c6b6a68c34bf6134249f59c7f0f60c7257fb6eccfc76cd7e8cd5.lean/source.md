# Complete source: GRWTSK.Topology.GeneralTopology.Limits.Variantc07a4dbce7f0c6b6a68c34bf6134249f59c7f0f60c7257fb6eccfc76cd7e8cd5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4546d137cd1f848f34d0834973847749d16021a` · SHA-256 `8b0a7029e6cf1e0409f64e1594f14a005362aea18a7544c43245207374002cde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsTerminalPUnit.Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsTerminalPUnit.Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de","mathematical_subject":"Topology.GeneralTopology","original_sha256":"881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/CompHaus/Limits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz, Dagur Asgeirsson
-/
import Mathlib.Topology.Category.CompHaus.Basic
import Mathlib.Topology.Category.CompHausLike.Limits
/-!

# Explicit limits and colimits

This file applies the general API for explicit limits and colimits in `CompHausLike P` (see
the file `Mathlib/Topology/Category/CompHausLike/Limits.lean`) to the special case of `CompHaus`.
-/


namespace GRWTSK.Topology.GeneralTopology.IsTerminalPUnit.Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de

namespace CompHaus

universe u w

open CategoryTheory Limits CompHausLike

instance : HasExplicitPullbacks (fun _ ↦ True) where
  hasProp _ _ := inferInstance

instance : HasExplicitFiniteCoproducts.{w, u} (fun _ ↦ True) where
  hasProp _ := inferInstance

example : FinitaryExtensive CompHaus.{u} := inferInstance

/-- A one-element space is terminal in `CompHaus` -/
abbrev isTerminalPUnit : IsTerminal (CompHaus.of PUnit.{u + 1}) := CompHausLike.isTerminalPUnit

/-- The isomorphism from an arbitrary terminal object of `CompHaus` to a one-element space. -/
noncomputable def terminalIsoPUnit : ⊤_ CompHaus.{u} ≅ CompHaus.of PUnit :=
  terminalIsTerminal.uniqueUpToIso CompHaus.isTerminalPUnit

noncomputable example : PreservesFiniteCoproducts compHausToTop := inferInstance

end CompHaus
```
