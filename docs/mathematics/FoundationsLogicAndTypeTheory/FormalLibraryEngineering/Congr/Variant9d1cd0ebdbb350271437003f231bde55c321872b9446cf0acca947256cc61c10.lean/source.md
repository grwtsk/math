# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Congr.Variant9d1cd0ebdbb350271437003f231bde55c321872b9446cf0acca947256cc61c10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7f713191628366b8b88d3db428464bee3bc8a4d` · SHA-256 `8e8808a4531474e1132ea2c9728ea14cbb70832e6af84ffcd9062deb5c0cfed2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Congr.Variant2829be649e728419575675e0da86b30aab961f83485d7aec0db14b5d52e20c2c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2829be649e728419575675e0da86b30aab961f83485d7aec0db14b5d52e20c2c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Congr.Variant2829be649e728419575675e0da86b30aab961f83485d7aec0db14b5d52e20c2c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2829be649e728419575675e0da86b30aab961f83485d7aec0db14b5d52e20c2c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Congr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Congr
public import Lean.Elab.Tactic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Congr.Variant2829be649e728419575675e0da86b30aab961f83485d7aec0db14b5d52e20c2c

public section

namespace Lean.Elab.Tactic

namespace Lean.Elab.Tactic
@[builtin_tactic Parser.Tactic.congr] def evalCongr : Tactic := fun stx =>
  match stx with
  | `(tactic| congr $[$n?]?) =>
    let hugeDepth := 1000000
    let depth := n?.map (·.getNat) |>.getD hugeDepth
    liftMetaTactic fun mvarId => mvarId.congrN depth
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic


```
