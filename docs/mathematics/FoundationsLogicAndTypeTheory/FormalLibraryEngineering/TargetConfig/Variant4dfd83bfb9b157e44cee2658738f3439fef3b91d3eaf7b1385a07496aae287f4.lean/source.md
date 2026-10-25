# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TargetConfig.Variant4dfd83bfb9b157e44cee2658738f3439fef3b91d3eaf7b1385a07496aae287f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1387a409048f81744c02af044c0f310ca44278c6` · SHA-256 `4dfd83bfb9b157e44cee2658738f3439fef3b91d3eaf7b1385a07496aae287f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Build.Fetch
meta import all Lake.Util.OpaqueType
import Lake.Util.OpaqueType

open Lean

namespace Lake

/-- A custom target's declarative configuration. -/
public structure TargetConfig (pkgName name : Name) : Type where
  /-- The target's fetch function. -/
  fetchFn : (pkg : NPackage pkgName) → FetchM (Job (CustomData pkgName name))
  /-- Format the target's output (e.g., for `lake query`). -/
  format : OutFormat → CustomData pkgName name → String
  deriving Inhabited

/-- A smart constructor for target configurations that generate CLI targets. -/
@[inline] public def mkTargetJobConfig
  [FormatQuery α] [h : FamilyOut (CustomData pkgName) name α]
  (fetch : (pkg : NPackage pkgName) → FetchM (Job α))
: TargetConfig pkgName name where
  fetchFn := h.fam_eq ▸ fetch
  format := h.fam_eq ▸ formatQuery

public hydrate_opaque_type OpaqueTargetConfig TargetConfig pkgName name

@[inline] public def NConfigDecl.targetConfig (self : NConfigDecl p n) (h : self.kind.isAnonymous) : TargetConfig p n :=
  self.opaqueTargetConfig h |>.get

@[inline] public def NConfigDecl.targetConfig? (self : NConfigDecl p n) : Option (TargetConfig p n) :=
  self.opaqueTargetConfig?.map (·.get)

/-- A dependently typed configuration based on its registered package and name. -/
public abbrev TargetDecl := KConfigDecl .anonymous

/-- Try to find a target configuration in the package with the given name . -/
public def Package.findTargetConfig? (name : Name) (self : Package) : Option (TargetConfig self.keyName name) :=
  self.targetDeclMap.get? name |>.bind (·.targetConfig?)
```
