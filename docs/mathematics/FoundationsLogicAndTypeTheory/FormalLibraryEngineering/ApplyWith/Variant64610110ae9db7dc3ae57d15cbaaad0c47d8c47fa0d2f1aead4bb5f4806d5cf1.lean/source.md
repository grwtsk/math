# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyWith.Variant64610110ae9db7dc3ae57d15cbaaad0c47d8c47fa0d2f1aead4bb5f4806d5cf1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb0696e7f83222f0aca31278deba637884dba0d8` · SHA-256 `c4159b5323acab8a598fe14bb08b08e3c7ecca3d1874b23f056e8727abe43cd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant402039ec7fda842774c4a5695311382ef53a9f3930e4ee796c89a6bff6315436","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"402039ec7fda842774c4a5695311382ef53a9f3930e4ee796c89a6bff6315436","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Eval.Variant402039ec7fda842774c4a5695311382ef53a9f3930e4ee796c89a6bff6315436","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"402039ec7fda842774c4a5695311382ef53a9f3930e4ee796c89a6bff6315436","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/ApplyWith.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Init
public meta import Lean.Elab.Eval
public meta import Lean.Elab.Tactic.ElabTerm
public meta import Lean.Elab.ConfigEval
public import Lean.Elab.ConfigEval

/-!
# The `applyWith` tactic

The `applyWith` tactic is like `apply`, but allows passing a custom configuration to the underlying
`apply` operation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant402039ec7fda842774c4a5695311382ef53a9f3930e4ee796c89a6bff6315436

public meta section

namespace Mathlib.Tactic
open Lean Parser Meta Elab Tactic Term

/-- A configuration with at least one configuration option.

In comparison, `optConfig` allows zero or more options.
-/
syntax manyConfig := (colGt Tactic.configItem)+

/-- Elaborator for the configuration in `apply (config := cfg)` syntax. -/
declare_config_elab elabApplyConfig ApplyConfig

/--
* `apply (config := cfg) e` allows for additional configuration (see `Lean.Meta.ApplyConfig`):
  * `newGoals` controls which new goals are added by `apply`, in which order.
  * `-synthAssignedInstances` will not synthesize instance implicit arguments if they have been
    assigned by `isDefEq`.
  * `+allowSynthFailures` will create new goals when instance synthesis fails, rather than erroring.
  * `+approx` enables `isDefEq` approximations (see `Lean.Meta.approxDefEq`).
-/
tactic_extension Lean.Parser.Tactic.apply

@[tactic_alt Lean.Parser.Tactic.apply]
-- We have to use `manyConfig` instead of `optConfig` to avoid ambiguous parses.
elab (name := applyWith) "apply" cfg:manyConfig ppSpace e:term : tactic => do
  let cfg ← elabApplyConfig cfg
  evalApplyLikeTactic (·.apply · cfg) e

end Mathlib.Tactic
```
