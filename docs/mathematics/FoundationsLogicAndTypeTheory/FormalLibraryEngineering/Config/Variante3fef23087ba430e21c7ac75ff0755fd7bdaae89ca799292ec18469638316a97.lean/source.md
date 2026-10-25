# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variante3fef23087ba430e21c7ac75ff0755fd7bdaae89ca799292ec18469638316a97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fd6a9e59cec91f6bba9d3f659e2a653e8c0e576` · SHA-256 `f8701cdeaca83b3ff09b28aa4ea949e4b0afc47e0631d22998b512b5cb8380df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variantf928116e06514370372886f9372d82ca7bf9a4af9544bcc14aca52695ce68163","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f928116e06514370372886f9372d82ca7bf9a4af9544bcc14aca52695ce68163","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Config.Variantf928116e06514370372886f9372d82ca7bf9a4af9544bcc14aca52695ce68163","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f928116e06514370372886f9372d82ca7bf9a4af9544bcc14aca52695ce68163","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/Simp/Config.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Core


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variantf928116e06514370372886f9372d82ca7bf9a4af9544bcc14aca52695ce68163

public section
namespace Lean.Compiler.LCNF
namespace Simp

/--
Configuration options for `Simp` that are not controlled using `set_option`.
Recall that we have multiple `Simp` passes and they use different configurations.
-/
structure Config where
  /--
  If `etaPoly` is true, we eta expand any global function application when
  the function takes local instances. The idea is that we do not generate code
  for this kind of application, and we want all of them to specialized or inlined.
  -/
  etaPoly : Bool := false
  /--
  If `inlinePartial` is `true`, we inline partial function applications tagged
  with `[inline]`. Note that this option is automatically disabled when processing
  declarations tagged with `[inline]`, marked to be specialized, or instances.
  -/
  inlinePartial := false
  /--
  If `implementedBy` is `true`, we apply the `implemented_by` replacements.
  Remark: we only apply `casesOn` replacements at phase 2 because `cases` constructor
  may not have enough information for reconstructing the original `casesOn` application at
  phase 1.
  -/
  implementedBy := false
  /--
  If `inlineDefs` is `true` then top-level definitions are inlined when they are small are
  annotated with inlining attributes.
  -/
  inlineDefs := true
  deriving Inhabited

```
