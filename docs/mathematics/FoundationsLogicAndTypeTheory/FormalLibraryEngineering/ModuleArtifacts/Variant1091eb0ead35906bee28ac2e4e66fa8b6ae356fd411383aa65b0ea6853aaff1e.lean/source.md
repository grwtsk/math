# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModuleArtifacts.Variant1091eb0ead35906bee28ac2e4e66fa8b6ae356fd411383aa65b0ea6853aaff1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81cb1773192fead5e903bcc0a856c2a1ecff21c2` · SHA-256 `1091eb0ead35906bee28ac2e4e66fa8b6ae356fd411383aa65b0ea6853aaff1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Artifact
import Lake.Util.JsonObject

open Lean (Json ToJson FromJson)

namespace Lake

/-- The descriptions of the output artifacts of a module build. -/
public structure ModuleOutputDescrs where
  isModule : Bool
  olean : ArtifactDescr
  oleanServer? : Option ArtifactDescr := none
  oleanPrivate? : Option ArtifactDescr := none
  ilean : ArtifactDescr
  irSig? : Option ArtifactDescr := none
  ir? : Option ArtifactDescr := none
  c : ArtifactDescr
  bc? : Option ArtifactDescr := none
  ltar? : Option ArtifactDescr := none

public def ModuleOutputDescrs.oleanParts (self : ModuleOutputDescrs) : Array ArtifactDescr := Id.run do
  let mut descrs := #[self.olean]
  if let some hash := self.oleanServer? then
    descrs := descrs.push hash
  if let some hash := self.oleanPrivate? then
    descrs := descrs.push hash
  return descrs

public protected def ModuleOutputDescrs.toJson (self : ModuleOutputDescrs) : Json := Id.run do
  let mut obj : JsonObject := {}
  obj := obj.insert "m" self.isModule
  obj := obj.insert "o" self.oleanParts
  obj := obj.insert "i" self.ilean
  if let some irSig := self.irSig? then
    obj := obj.insert "rs" irSig
  if let some ir := self.ir? then
    obj := obj.insert "r" ir
  obj := obj.insert "c" self.c
  if let some bc := self.bc? then
    obj := obj.insert "b" bc
  if let some ltar := self.ltar? then
    obj := obj.insert "l" ltar
  return obj

public instance : ToJson ModuleOutputDescrs := ⟨ModuleOutputDescrs.toJson⟩

public protected def ModuleOutputDescrs.fromJson? (val : Json) : Except String ModuleOutputDescrs := do
  let obj ← JsonObject.fromJson? val
  let oleanHashes : Array ArtifactDescr ← obj.get "o"
  let some olean := oleanHashes[0]?
    | throw "expected a least one 'o' (.olean) hash"
  return {
    isModule := (← obj.get? "m").getD (oleanHashes.size > 1)
    olean := olean
    oleanServer? := oleanHashes[1]?
    oleanPrivate? := oleanHashes[2]?
    ilean := ← obj.get "i"
    irSig? := ← obj.get? "rs"
    ir? := ← obj.get? "r"
    c := ← obj.get "c"
    bc? := ← obj.get? "b"
    ltar? := ← obj.get? "l"
  }

public instance : FromJson ModuleOutputDescrs := ⟨ModuleOutputDescrs.fromJson?⟩

/-- The output artifacts of a module build. -/
public structure ModuleOutputArtifacts where
  isModule : Bool
  olean : Artifact
  oleanServer? : Option Artifact := none
  oleanPrivate? : Option Artifact := none
  ilean : Artifact
  irSig? : Option Artifact := none
  ir? : Option Artifact := none
  c : Artifact
  bc? : Option Artifact := none
  ltar? : Option Artifact := none

/-- Content hashes of the artifacts. -/
public def ModuleOutputArtifacts.descrs (arts : ModuleOutputArtifacts) : ModuleOutputDescrs where
  isModule := arts.isModule
  olean := arts.olean.descr
  oleanServer? := arts.oleanServer?.map (·.descr)
  oleanPrivate? := arts.oleanPrivate?.map (·.descr)
  ilean := arts.ilean.descr
  irSig? := arts.irSig?.map (·.descr)
  ir? := arts.ir?.map (·.descr)
  c := arts.c.descr
  bc? := arts.bc?.map (·.descr)
  ltar? := arts.ltar?.map (·.descr)
```
