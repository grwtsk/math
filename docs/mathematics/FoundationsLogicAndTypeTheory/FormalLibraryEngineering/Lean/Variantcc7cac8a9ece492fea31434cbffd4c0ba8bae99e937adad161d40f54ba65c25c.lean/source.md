# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variantcc7cac8a9ece492fea31434cbffd4c0ba8bae99e937adad161d40f54ba65c25c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5b1004fb20673b92a0f2cda32f9457b2316ba0f` · SHA-256 `44a414a1a92179657e4b21730f151eb1179230418a449636053659c171d6e552`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatToHexDigits.Variant5ecea135529c799e71a29324b76ae60d9a4355f27d3908bb3240f23557538d03","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5ecea135529c799e71a29324b76ae60d9a4355f27d3908bb3240f23557538d03","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NatToHexDigits.Variant5ecea135529c799e71a29324b76ae60d9a4355f27d3908bb3240f23557538d03","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5ecea135529c799e71a29324b76ae60d9a4355f27d3908bb3240f23557538d03","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Cache/Lean.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jon Eugster, Arthur Paulino
-/

import Lean.Util.Paths

/-!
# Helper Functions

This file contains helper functions that could potentially be upstreamed to Lean
or replaced by an appropriate function from Lean.

Some functions here are duplicates from the folder `Mathlib/Lean/`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatToHexDigits.Variant5ecea135529c799e71a29324b76ae60d9a4355f27d3908bb3240f23557538d03

/-- Format as hex digit string. Used by `Cache` to format hashes. -/
def Nat.toHexDigits (n : Nat) : Nat → (res : String := "") → String
  | 0, s => s
  | len+1, s =>
    let b := UInt8.ofNat (n >>> (len * 8))
    Nat.toHexDigits n len <|
      s.push (Nat.digitChar (b >>> 4).toNat) |>.push (Nat.digitChar (b &&& 15).toNat)

/-- Format hash as hex digit with extension `.ltar` -/
def UInt64.asLTar (n : UInt64) : String :=
  s!"{Nat.toHexDigits n.toNat 8}.ltar"

-- copied from Mathlib
/-- Create a `Name` from a list of components. -/
def Lean.Name.fromComponents : List Name → Name := go .anonymous where
  go : Name → List Name → Name
  | n, []        => n
  | n, s :: rest => go (s.updatePrefix n) rest

namespace Lean.SearchPath

open System in

/--
Find the source directory for a module. This could be `.`
(or in fact also something uncleaned like `./././.`) if the
module is part of the current package, or something like `.lake/packages/mathlib` if the
module is from a dependency.

This is an exact copy of the first part of `Lean.SearchPath.findWithExt` which, in turn,
is used by `Lean.findLean sp mod`. In the future, `findWithExt` could be refactored to
expose this base path.
-/
def findWithExtBase (sp : SearchPath) (ext : String) (mod : Name) : IO (Option FilePath) := do
  let pkg := mod.getRoot.toString (escape := false)
  sp.findM? fun p =>
    (p / pkg).isDir <||> ((p / pkg).addExtension ext).pathExists

end Lean.SearchPath

namespace System.FilePath

/-- Removes a parent path from the beginning of a path -/
def withoutParent (path parent : FilePath) : FilePath :=
  mkFilePath <| go path.components parent.components
where
  go : List String → List String → List String
  | path@(x :: xs), y :: ys => if x == y then go xs ys else path
  | [], _ => []
  | path, [] => path

end System.FilePath
```
