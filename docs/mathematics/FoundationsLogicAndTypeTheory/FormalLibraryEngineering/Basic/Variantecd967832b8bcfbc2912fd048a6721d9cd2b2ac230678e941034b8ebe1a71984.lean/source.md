# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantecd967832b8bcfbc2912fd048a6721d9cd2b2ac230678e941034b8ebe1a71984

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9e8d2bc501998ba4989dd17ee523feac1dd691c` · SHA-256 `44bde32d44f3c7c6fcf87063ca49e7c71ae2969862c262ab8a22dfc4e2893638`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithSetOptionIn.Variant106f0bdfbe165aed5d37ce8f925878fcb1fec684310c9c00ebf86bfef187c9e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"106f0bdfbe165aed5d37ce8f925878fcb1fec684310c9c00ebf86bfef187c9e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WithSetOptionIn.Variant106f0bdfbe165aed5d37ce8f925878fcb1fec684310c9c00ebf86bfef187c9e4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"106f0bdfbe165aed5d37ce8f925878fcb1fec684310c9c00ebf86bfef187c9e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Linter/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Thomas R. Murrills. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas R. Murrills
-/
module

prelude
public import Lean.Linter.Init
public import Lean.Elab.Command

/-! # Basic linting functionality

This file publicly imports the basic functionality necessary for linting, namely
1. The linter option API (`Lean.Linter.Init`)
2. The `CommandElabM` API (`Lean.Elab.Command`)
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithSetOptionIn.Variant106f0bdfbe165aed5d37ce8f925878fcb1fec684310c9c00ebf86bfef187c9e4

public section

namespace Lean

open Elab Command

/--
Given a command elaborator `cmd`, returns a new command elaborator that
first peels off and evaluates `set_option ... in ...` syntax recursively, updating the options
accordingly, and then invokes `cmd` on the inner syntax.

This is expected to be used in linters, after elaboration is complete. It is not appropriate for
ordinary elaboration of outer `set_option`s, since it
* does not update the infotrees with info for the `set_option` commands
* silently ignores failures in setting the given options (e.g. we do not error if the option is
  unknown or the wrong type of value is provided), as these should have been reported during
  original elaboration.
-/
partial def withSetOptionIn (cmd : CommandElab) : CommandElab := fun stx => do
  if stx.getKind == ``Lean.Parser.Command.in &&
     stx[0].getKind == ``Lean.Parser.Command.set_option then
      -- Do not modify the infotrees when elaborating, and silently ignore errors.
      let opts ← withEnableInfoTree false try
          (·.1) <$> elabSetOption stx[0][1] stx[0][3]
        catch _ => getOptions
      withScope ({ · with opts }) do withSetOptionIn cmd stx[2]
  else
    cmd stx

end Lean
```
