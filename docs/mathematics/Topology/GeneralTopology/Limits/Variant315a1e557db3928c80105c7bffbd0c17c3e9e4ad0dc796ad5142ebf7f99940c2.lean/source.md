# Complete source: GRWTSK.Topology.GeneralTopology.Limits.Variant315a1e557db3928c80105c7bffbd0c17c3e9e4ad0dc796ad5142ebf7f99940c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83ffdf1c172e3e292f906b7a2bc8f36c927adf8d` · SHA-256 `bb3ac0a5ee3193c44f714dbc63d80b6ff64febd362d0449cb744d6b3d512aa01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsTerminalPUnit.Variant58097a02ddf50f135e5e05912a63be6491e6cddfeb9721cbe04771edf726be69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"58097a02ddf50f135e5e05912a63be6491e6cddfeb9721cbe04771edf726be69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsTerminalPUnit.Variant58097a02ddf50f135e5e05912a63be6491e6cddfeb9721cbe04771edf726be69","mathematical_subject":"Topology.GeneralTopology","original_sha256":"58097a02ddf50f135e5e05912a63be6491e6cddfeb9721cbe04771edf726be69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Category/CompHaus/Limits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz, Dagur Asgeirsson
-/
module

public import Mathlib.Topology.Category.CompHaus.Basic
public import Mathlib.Topology.Category.CompHausLike.Limits
/-!

# Explicit limits and colimits

This file applies the general API for explicit limits and colimits in `CompHausLike P` (see
the file `Mathlib/Topology/Category/CompHausLike/Limits.lean`) to the special case of `CompHaus`.
-/


namespace GRWTSK.Topology.GeneralTopology.IsTerminalPUnit.Variant58097a02ddf50f135e5e05912a63be6491e6cddfeb9721cbe04771edf726be69

@[expose] public section

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
noncomputable def terminalIsoPUnit : ⊤_ CompHaus.{u} ≅ ↧PUnit :=
  terminalIsTerminal.uniqueUpToIso CompHaus.isTerminalPUnit

noncomputable example : PreservesFiniteCoproducts compHausToTop := inferInstance

end CompHaus
```
