# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Environment.Variant45e5d94f88db9a7a93eb636187184e4b5877e2c9ab3cd3a3097597f35c543878

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd25d1b33d0a7e91fc0b848278a3c671b3aa30b6` · SHA-256 `e7ac9d49aa023d8ea43dd2192e696630238609acceef9e1d98b692aded092830`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindConstValWithKind.Variant802c5d12878710cad2797d5837424465fa8ea283bf852c1c9e092a14ce582bfe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"802c5d12878710cad2797d5837424465fa8ea283bf852c1c9e092a14ce582bfe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FindConstValWithKind.Variant802c5d12878710cad2797d5837424465fa8ea283bf852c1c9e092a14ce582bfe","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"802c5d12878710cad2797d5837424465fa8ea283bf852c1c9e092a14ce582bfe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/.lake/packages/mathlib/Mathlib/Lean/Environment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Thomas R. Murrills. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas R. Murrills
-/
module

public import Lean.Environment
-- Import this linter explicitly to ensure that
-- this file has a valid copyright header and module docstring.
import Mathlib.Tactic.Linter.Header --shake: keep

/-!
# Additional utilities for `Lean.Environment`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindConstValWithKind.Variant802c5d12878710cad2797d5837424465fa8ea283bf852c1c9e092a14ce582bfe

namespace Lean.Environment

public section constKind

/- The following declarations account for the fact that the `ConstantKind` of a declaration is
accessible when getting its `ConstantVal`, but is not recorded in said `ConstantVal`. -/

/--
Like `findConstVal?`, but also returns the declarations `ConstantKind`, which is known immediately.

Blocks on everything but the constant's body (if any), which is not accessible through the result.
-/
def findConstValWithKind? (env : Environment) (decl : Name) (skipRealize := false) :
    Option (ConstantVal × ConstantKind) := do
  let info ← env.findAsync? decl skipRealize
  return (info.toConstantVal, info.kind)

/--
Like `findConstVal?`, but only finds the `ConstantVal` for `decl` in `env` if its kind satisfies
`p`. Otherwise, returns `none`.

Blocks on everything but the constant's body (if any), which is not accessible through the result.
-/
def findConstValOfKind? (env : Environment) (p : ConstantKind → Bool) (decl : Name)
    (skipRealize := false) : Option ConstantVal := do
  let info ← env.findAsync? decl skipRealize
  if p info.kind then info.toConstantVal else none

/--
Like `findConstVal?`, but only finds the `ConstantVal` for `decl` in `env` if it is a theorem.

Blocks on everything but the constant's body (if any), which is not accessible through the result.
-/
def findTheoremConstVal? (env : Environment) (decl : Name)
    (skipRealize := false) : Option ConstantVal := do
  env.findConstValOfKind? (· matches .thm) decl skipRealize

end constKind

end Lean.Environment
```
