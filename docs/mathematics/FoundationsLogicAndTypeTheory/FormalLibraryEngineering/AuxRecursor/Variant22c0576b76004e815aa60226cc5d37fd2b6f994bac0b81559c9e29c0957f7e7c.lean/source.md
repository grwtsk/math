# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuxRecursor.Variant22c0576b76004e815aa60226cc5d37fd2b6f994bac0b81559c9e29c0957f7e7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7cc5618802f12fae4521da8a58b8dd3d202aa33` · SHA-256 `48b68db214c5b59ee90f1e228f8d767506eaffaa1e25011642674a0fda37e11c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoConfusionInfo.Variantc004ddcbd0d6475550e701e30b8035e146132f8f7c8d3d5c8486c1f465a6ff9f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c004ddcbd0d6475550e701e30b8035e146132f8f7c8d3d5c8486c1f465a6ff9f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NoConfusionInfo.Variantc004ddcbd0d6475550e701e30b8035e146132f8f7c8d3d5c8486c1f465a6ff9f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c004ddcbd0d6475550e701e30b8035e146132f8f7c8d3d5c8486c1f465a6ff9f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/AuxRecursor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.EnvExtension
import Init.Data.String.TakeDrop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoConfusionInfo.Variantc004ddcbd0d6475550e701e30b8035e146132f8f7c8d3d5c8486c1f465a6ff9f

public section

namespace Lean

def casesOnSuffix       := "casesOn"
def recOnSuffix         := "recOn"
def brecOnSuffix        := "brecOn"
def belowSuffix         := "below"

def mkCasesOnName (indDeclName : Name) : Name := Name.mkStr indDeclName casesOnSuffix
def mkRecOnName (indDeclName : Name) : Name   := Name.mkStr indDeclName recOnSuffix
def mkBRecOnName (indDeclName : Name) : Name  := Name.mkStr indDeclName brecOnSuffix
def mkBelowName (indDeclName : Name) : Name := Name.mkStr indDeclName belowSuffix

builtin_initialize auxRecExt : TagDeclarationExtension ← mkTagDeclarationExtension (asyncMode := .async .mainEnv)

def markAuxRecursor (env : Environment) (declName : Name) : Environment :=
  auxRecExt.tag env declName

def isAuxRecursor (env : Environment) (declName : Name) : Bool :=
  auxRecExt.isTagged env declName
  -- TODO: use `markAuxRecursor` when they are defined
  -- An attribute is not a good solution since we don't want users to control what is tagged as an auxiliary recursor.
  || declName == ``Eq.ndrec
  || declName == ``Eq.ndrec_symm
  || declName == ``Eq.ndrecOn

def isAuxRecursorWithSuffix (env : Environment) (declName : Name) (suffix : String) : Bool :=
  match declName with
  | .str _ s => (s == suffix || s.startsWith s!"{suffix}_") && isAuxRecursor env declName
  | _ => false

def isCasesOnRecursor (env : Environment) (declName : Name) : Bool :=
  isAuxRecursorWithSuffix env declName casesOnSuffix

def isRecOnRecursor (env : Environment) (declName : Name) : Bool :=
  isAuxRecursorWithSuffix env declName recOnSuffix

def isBRecOnRecursor (env : Environment) (declName : Name) : Bool :=
  isAuxRecursorWithSuffix env declName brecOnSuffix

private builtin_initialize sparseCasesOnExt : TagDeclarationExtension ← mkTagDeclarationExtension (asyncMode := .async .mainEnv)

def markSparseCasesOn (env : Environment) (declName : Name) : Environment :=
  sparseCasesOnExt.tag env declName

/-- Is this a constructor elimination or a sparse casesOn? -/
def isSparseCasesOn (env : Environment) (declName : Name) : Bool :=
  sparseCasesOnExt.isTagged env declName

/-- Is this a `.casesOn`, a constructor elimination or a sparse casesOn? -/
def isCasesOnLike (env : Environment) (declName : Name) : Bool :=
  isCasesOnRecursor env declName || isSparseCasesOn env declName

/--
Shape information for no confusion lemmas.
The `arity` does not include the final major argument (which is not there when the constructors differ)
The regular no confusion lemma marks the lhs and rhs arguments for the compiler to look at and
find the number of fields.
The per-constructor no confusion lemmas know the number of (non-prop) fields statically.
-/
inductive NoConfusionInfo where
  | regular (arity : Nat) (lhs : Nat) (rhs : Nat)
  | perCtor (arity : Nat) (fields : Nat)
deriving Inhabited

def NoConfusionInfo.arity : NoConfusionInfo → Nat
  | .regular arity _ _ => arity
  | .perCtor arity _   => arity

builtin_initialize noConfusionExt : MapDeclarationExtension NoConfusionInfo ← mkMapDeclarationExtension (asyncMode := .mainOnly)

def markNoConfusion (env : Environment) (n : Name) (info : NoConfusionInfo) : Environment :=
  noConfusionExt.insert env n info

def isNoConfusion (env : Environment) (n : Name) : Bool :=
  noConfusionExt.contains env n

def getNoConfusionInfo (env : Environment) (n : Name) : NoConfusionInfo :=
  (noConfusionExt.find? env n).get!

end Lean
```
