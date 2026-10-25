# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant815f15c88f028dfb8c3c7b2f4b3e1c29fd73a6231689699bfe1739104f0ddfd8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb72d7056d0999d54a90f5a39437797ede91e84c` · SHA-256 `eb7d0ff5e5b96dcb9fbee314ee98dd4f1b50ef119941eedf653db954a7048151`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Elab.Variant7caa022ad0793fd00414e95282f3ceb74e40f4c43a363f369e1efbfaa2db353b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7caa022ad0793fd00414e95282f3ceb74e40f4c43a363f369e1efbfaa2db353b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Elab.Variant7caa022ad0793fd00414e95282f3ceb74e40f4c43a363f369e1efbfaa2db353b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7caa022ad0793fd00414e95282f3ceb74e40f4c43a363f369e1efbfaa2db353b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Inclusion/Extension/IntervalDyadicReal/Tactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
module

public meta import Mathlib.Tactic.Inclusion.Core.Elab
public meta import Mathlib.Tactic.Inclusion.Extension.Core.Core
public import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Rational
public meta import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses

/-!
# The `dyadic_interval` tactic

This file defines the `dyadic_interval` tactic which is a wrapper around the inclusion tactic
with a specific set of enabled inclusion families.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Elab.Variant7caa022ad0793fd00414e95282f3ceb74e40f4c43a363f369e1efbfaa2db353b

public meta section

open Lean.Parser.Tactic

namespace Inclusion

/-- `dyadic_interval` proves real number equalities, inequalities and interval memberships by
approximating as an interval of dyadic rational numbers.

This tactic is implemented as a family for the `inclusion` tactic: `dyadic_interval` is the same as
`inclusion [core, interval_dyadic_real]`.

* `dyadic_interval [binSplit := n]` splits each interval `n` times, into `2^n` pieces. Higher values
  of `n` make the tactic slower but able to prove more. Default: no splitting.
* `dyadic_interval [prec := n]` uses a precision of `2^-n` when constructing the approximation.
  Higher values of `n` make the tactic slower but able to prove more. Default value: 0.
* `dyadic_interval [fam₁, ... famₙ]` uses the inclusion families `fam₁`, ..., `famₙ` for additional
  reasoning capabilities.
* `dyadic_interval (config := cfg)` uses `cfg` as a configuration for the `inclusion` tactic.
  (See there for further details.)
-/
syntax (name := dyadicInterval) "dyadic_interval" optConfig
  (" [" inclusionArg,* "]")? : tactic

macro_rules
  | `(tactic| dyadic_interval $cfg:optConfig) =>
      `(tactic| inclusion $cfg [core, interval_dyadic_real])
  | `(tactic| dyadic_interval $cfg:optConfig [$args,*]) =>
      `(tactic| inclusion $cfg [core, interval_dyadic_real, $args,*])

/-- `dyadic_interval?` is a proof writing aid that quickly checks if `dyadic_interval` would close
the goal, without doing the expensive kernel computation that actually closes the goal. -/
syntax (name := dyadicInterval?) "dyadic_interval?" (" [" inclusionArg,* "]")? : tactic

macro_rules
  | `(tactic| dyadic_interval?) =>
      `(tactic| inclusion? [core, interval_dyadic_real])
  | `(tactic| dyadic_interval? [$args,*]) =>
      `(tactic| inclusion? [core, interval_dyadic_real, $args,*])

end Inclusion
```
