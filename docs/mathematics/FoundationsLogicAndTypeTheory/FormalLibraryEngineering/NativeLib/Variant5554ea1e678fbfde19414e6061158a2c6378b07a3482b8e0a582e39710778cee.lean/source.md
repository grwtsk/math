# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NativeLib.Variant5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ed2cdaafed37f8b28524b09a55835f1f4ce69d6` · SHA-256 `5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.System.IO
import Init.Data.ToString.Macro
import Init.System.Platform

open System
namespace Lake

/-- The shared library file extension for the `Platform`. -/
public def sharedLibExt : String :=
  if Platform.isWindows then "dll"
  else if Platform.isOSX  then "dylib"
  else "so"

/-- Convert a library name into its static library file name for the `Platform`. -/
public def nameToStaticLib (name : String) (libPrefixOnWindows := false) : String :=
  if libPrefixOnWindows || !System.Platform.isWindows then s!"lib{name}.a" else s!"{name}.a"

/-- Convert a library name into its shared library file name for the `Platform`. -/
public def nameToSharedLib (name : String) (libPrefixOnWindows := false) : String :=
  let libPrefix := if libPrefixOnWindows || !System.Platform.isWindows then "lib" else ""
  s!"{libPrefix}{name}.{sharedLibExt}"

/--
The environment variable that stores the search path
used to find shared libraries on the `Platform`.
-/
public def sharedLibPathEnvVar : String :=
  if Platform.isWindows then
    "PATH"
  else if Platform.isOSX then
    "DYLD_LIBRARY_PATH"
  else
    "LD_LIBRARY_PATH"

/-- Gets a `SearchPath` from an environment variable. -/
public def getSearchPath (envVar : String) : BaseIO SearchPath := do
  match (← IO.getEnv envVar) with
  | some path => pure <| SearchPath.parse path
  | none => pure []
```
