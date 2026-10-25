# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variantb3676bfd141f92f0bc428e0f1fba159e7bad25fa4cdba26efbec7c23de878c5c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c6ece94797566c9e439cc8274ac9485632a6368` · SHA-256 `dff0152226e3d4a5742e1f9f07cfb6790f2ee12c6db8f2fefb81d51123d824be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Varianta5b72d768373db5d0674e4b959759abe63aabdfb311966f82fc375460c24a3e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5b72d768373db5d0674e4b959759abe63aabdfb311966f82fc375460c24a3e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Varianta5b72d768373db5d0674e4b959759abe63aabdfb311966f82fc375460c24a3e1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a5b72d768373db5d0674e4b959759abe63aabdfb311966f82fc375460c24a3e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Combinatorics/SimpleGraph/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Mathlib.Init
import Aesop

/-!
# SimpleGraph Rule Set

This module defines the `SimpleGraph` Aesop rule set which is used by the
`aesop_graph` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Varianta5b72d768373db5d0674e4b959759abe63aabdfb311966f82fc375460c24a3e1

declare_aesop_rule_sets [SimpleGraph]
```
