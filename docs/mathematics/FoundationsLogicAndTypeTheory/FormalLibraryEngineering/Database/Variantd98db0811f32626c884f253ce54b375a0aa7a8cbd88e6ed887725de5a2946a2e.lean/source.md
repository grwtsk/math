# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Database.Variantd98db0811f32626c884f253ce54b375a0aa7a8cbd88e6ed887725de5a2946a2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ef97aad4bf4d34cf06e0e433277451d5b07bfab` · SHA-256 `d98db0811f32626c884f253ce54b375a0aa7a8cbd88e6ed887725de5a2946a2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time.Zoned.Database.Basic
public import Std.Time.Zoned.Database.TZdb
public import Std.Time.Zoned.Database.Windows
public import Std.Time.DateTime
import Init.System.Platform

public section

namespace Std
namespace Time
namespace Database
open TimeZone.ZoneRules

set_option linter.all true

/--
Gets the zone rules for a specific time zone identifier, handling Windows and non-Windows platforms.
In windows it uses the current `icu.h` in Windows SDK. If it's linux or macos then it will use the `tzdata`
files.
-/
def defaultGetZoneRules (name : String) : IO TimeZone.ZoneRules := do
  if System.Platform.isWindows
    then getZoneRules WindowsDb.default name
    else getZoneRules TZdb.default name

/--
Gets the local zone rules, accounting for platform differences.
In windows it uses the current `icu.h` in Windows SDK. If it's linux or macos then it will use the `tzdata`
files.
-/
def defaultGetLocalZoneRules : IO TimeZone.ZoneRules := do
  if System.Platform.isWindows
    then getLocalZoneRules WindowsDb.default
    else getLocalZoneRules TZdb.default
```
