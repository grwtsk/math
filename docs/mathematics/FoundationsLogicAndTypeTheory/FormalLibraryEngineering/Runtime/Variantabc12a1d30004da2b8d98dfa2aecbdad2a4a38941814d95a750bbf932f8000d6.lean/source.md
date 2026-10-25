# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Runtime.Variantabc12a1d30004da2b8d98dfa2aecbdad2a4a38941814d95a750bbf932f8000d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8bd2b0e04aa4409b6a11da31db0dc3bc5c4907e` · SHA-256 `abc12a1d30004da2b8d98dfa2aecbdad2a4a38941814d95a750bbf932f8000d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Prelude

public section

namespace Lean

@[extern "lean_closure_max_args"]
opaque closureMaxArgsFn : Unit → Nat

@[extern "lean_max_small_nat"]
opaque maxSmallNatFn : Unit → Nat

@[extern "lean_libuv_version"]
opaque libUVVersionFn : Unit → Nat

@[extern "lean_openssl_version"]
opaque openSSLVersionFn : Unit → Nat

def closureMaxArgs : Nat :=
  closureMaxArgsFn ()

def maxSmallNat : Nat :=
  maxSmallNatFn ()

def libUVVersion : Nat :=
  libUVVersionFn ()

def openSSLVersion : Nat :=
  openSSLVersionFn ()

end Lean
```
