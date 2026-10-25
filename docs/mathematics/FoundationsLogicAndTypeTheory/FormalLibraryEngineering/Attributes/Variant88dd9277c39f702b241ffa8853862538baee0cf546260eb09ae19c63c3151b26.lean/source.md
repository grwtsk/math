# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attributes.Variant88dd9277c39f702b241ffa8853862538baee0cf546260eb09ae19c63c3151b26

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8fba82d95ddc6a94100bf73f4bf8e5bfb3a2c7b` · SHA-256 `88dd9277c39f702b241ffa8853862538baee0cf546260eb09ae19c63c3151b26`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

prelude
public import Lean.Attributes

public section

/-!
# Attributes for the pretty printer

This module defines attributes that influence pretty printer output.
-/

namespace Lean

/-- Marks a structure to be pretty printed using the anonymous constructor notation (`⟨a, b, c⟩`). -/
@[builtin_doc]
builtin_initialize ppUsingAnonymousConstructorAttr : TagAttribute ←
  registerTagAttribute `pp_using_anonymous_constructor "mark structure to be pretty printed using `⟨a,b,c⟩` notation"

/-- Marks a declaration to never be pretty printed using field notation. -/
@[builtin_doc]
builtin_initialize ppNoDotAttr : TagAttribute ←
  registerTagAttribute `pp_nodot "mark declaration to never be pretty printed using field notation"

/--
Returns whether or not the given declaration has the `@[pp_using_anonymous_constructor]` attribute.
-/
def hasPPUsingAnonymousConstructorAttribute (env : Environment) (declName : Name) : Bool :=
  ppUsingAnonymousConstructorAttr.hasTag env declName

/--
Returns whether or not the given declaration has the `@[pp_nodot]` attribute.
-/
def hasPPNoDotAttribute (env : Environment) (declName : Name) : Bool :=
  ppNoDotAttr.hasTag env declName

end Lean
```
