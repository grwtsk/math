# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Old.Variant32da9245635c6a6044cc9a25c669d0a9fbb0f7ab0b0ee9c3afe0ff818d4460d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d26519199ab8fce660d15549322fdac71df2d385` · SHA-256 `3335a1ceb77b55c8fa097f936bf1144716c5ab3511dc7101b5dd4b9d7ee3aab0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkEagerLambdaLiftingName.Variant72b18cd03391e07468fd747cb7f23245f768227efc6003bf33193c3768683de3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72b18cd03391e07468fd747cb7f23245f768227efc6003bf33193c3768683de3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkEagerLambdaLiftingName.Variant72b18cd03391e07468fd747cb7f23245f768227efc6003bf33193c3768683de3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"72b18cd03391e07468fd747cb7f23245f768227efc6003bf33193c3768683de3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/Old.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Environment
import Init.Data.String.TakeDrop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkEagerLambdaLiftingName.Variant72b18cd03391e07468fd747cb7f23245f768227efc6003bf33193c3768683de3

public section

namespace Lean
namespace Compiler

/-! Helper functions for creating auxiliary names used in (old) compiler passes. -/

def mkEagerLambdaLiftingName (n : Name) (idx : Nat) : Name :=
  Name.mkStr n ("_elambda_" ++ toString idx)

def isEagerLambdaLiftingName : Name → Bool
  | .str p s => "_elambda".isPrefixOf s || isEagerLambdaLiftingName p
  | .num p _ => isEagerLambdaLiftingName p
  | _        => false

/-- Return the name of new definitions in the a given declaration.
    Here we consider only declarations we generate code for.
    We use this definition to implement `add_and_compile`. -/
def getDeclNamesForCodeGen : Declaration → Array Name
  | .defnDecl { name, .. }   => #[name]
  | .opaqueDecl { name, .. } => #[name]
  | .axiomDecl { name, .. }  => #[name] -- axiom may be tagged with `@[extern ...]`
  | .mutualDefnDecl defs     => defs.toArray.map (·.name)
  | _                        => #[]

def checkIsDefinition (env : Environment) (n : Name) : Except String Unit := do
  let some info := env.findAsync? n
    | throw s!"Unknown declaration `{n}`"
  unless info.kind matches .defn | .opaque do
    throw s!"Declaration `{n}` is not a definition"

/--
  We generate auxiliary unsafe definitions for regular recursive definitions.
  The auxiliary unsafe definition has a clear runtime cost execution model.
  This function returns the auxiliary unsafe definition name for the given name. -/
def mkUnsafeRecName (declName : Name) : Name :=
  Name.mkStr declName "_unsafe_rec"

/-- Return `some _` if the given name was created using `mkUnsafeRecName` -/
def isUnsafeRecName? : Name → Option Name
  | .str n "_unsafe_rec" => some n
  | _ => none

end Compiler
```
