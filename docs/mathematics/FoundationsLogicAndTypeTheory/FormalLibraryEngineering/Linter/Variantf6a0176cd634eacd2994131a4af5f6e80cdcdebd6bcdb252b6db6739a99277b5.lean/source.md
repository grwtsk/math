# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Linter.Variantf6a0176cd634eacd2994131a4af5f6e80cdcdebd6bcdb252b6db6739a99277b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ef36b5425f217e862141965bd1f7871e7266899` · SHA-256 `b883a2f72dcb9571e028e06361f7e608bf101f1e24f4070b8b46d39b60862bbc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variantcb7691acf0e6bf62ae4dcfc488617b4dc79d3a26a8e78fc5272589efa689a86b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb7691acf0e6bf62ae4dcfc488617b4dc79d3a26a8e78fc5272589efa689a86b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Util.Variantcb7691acf0e6bf62ae4dcfc488617b4dc79d3a26a8e78fc5272589efa689a86b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cb7691acf0e6bf62ae4dcfc488617b4dc79d3a26a8e78fc5272589efa689a86b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Linter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König
-/
module

prelude
public import Lean.Linter.Util
public import Lean.Linter.AmbiguousOpen
public import Lean.Linter.Builtin
public import Lean.Linter.CheckUnivs
public import Lean.Linter.ConstructorAsVariable
public import Lean.Linter.DefProp
public import Lean.Linter.Deprecated
public import Lean.Linter.DocsOnAlt
public import Lean.Linter.UnusedVariables
public import Lean.Linter.MissingDocs
public import Lean.Linter.Omit
public import Lean.Linter.List
public import Lean.Linter.Sets
public import Lean.Linter.UnusedSimpArgs
public import Lean.Linter.Coe
public import Lean.Linter.GlobalAttributeIn
public import Lean.Linter.EnvLinter
public import Lean.Linter.PersistentLintLog
public import Lean.Linter.Extra
public import Lean.Linter.TacticTypeCheck

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variantcb7691acf0e6bf62ae4dcfc488617b4dc79d3a26a8e78fc5272589efa689a86b

```
