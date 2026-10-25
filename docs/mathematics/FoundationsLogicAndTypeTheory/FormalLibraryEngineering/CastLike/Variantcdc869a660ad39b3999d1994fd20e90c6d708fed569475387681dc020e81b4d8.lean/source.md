# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CastLike.Variantcdc869a660ad39b3999d1994fd20e90c6d708fed569475387681dc020e81b4d8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c483c49a7f4d2ed44d453bd0e00f3c5d9fd9e2b` · SHA-256 `2b2ff7391229c8e4d68cf7f9ba48fa24e6959c7c750a8aadd5d9daa9bfba492d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsCastLikeDeclName.Variante9272ea44cb986c53150ded9ff7466718bdefdf50ba5c88b6255f4f4267b74f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9272ea44cb986c53150ded9ff7466718bdefdf50ba5c88b6255f4f4267b74f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsCastLikeDeclName.Variante9272ea44cb986c53150ded9ff7466718bdefdf50ba5c88b6255f4f4267b74f8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e9272ea44cb986c53150ded9ff7466718bdefdf50ba5c88b6255f4f4267b74f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/CastLike.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Expr
import Init.Grind.Ring.Envelope
import Init.Grind.Module.Envelope

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsCastLikeDeclName.Variante9272ea44cb986c53150ded9ff7466718bdefdf50ba5c88b6255f4f4267b74f8

namespace Lean.Meta.Grind

/-- Returns `true` if `declName` is the name of a cast-like function used to implement `grind` solvers -/
public def isCastLikeDeclName (declName : Name) : Bool :=
  declName == ``Grind.Ring.OfSemiring.toQ ||
  declName == ``Grind.IntModule.OfNatModule.toQ ||
  declName == ``Grind.ToInt.toInt ||
  declName == ``NatCast.natCast ||
  declName == ``IntCast.intCast

/-- Returns `true` if `f` is a cast-like operation. -/
public def isCastLikeFn (f : Expr) : Bool := Id.run do
  let .const declName _ := f | return false
  return isCastLikeDeclName declName

public def isCastLikeApp (e : Expr) : Bool :=
  isCastLikeFn e.getAppFn

end Lean.Meta.Grind
```
