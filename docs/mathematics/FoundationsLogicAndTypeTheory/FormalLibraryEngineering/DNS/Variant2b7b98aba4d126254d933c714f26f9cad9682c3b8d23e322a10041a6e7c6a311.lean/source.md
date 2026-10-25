# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DNS.Variant2b7b98aba4d126254d933c714f26f9cad9682c3b8d23e322a10041a6e7c6a311

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d03f22be66883e227ceb279b008c51da0744a94` · SHA-256 `2b7b98aba4d126254d933c714f26f9cad9682c3b8d23e322a10041a6e7c6a311`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time
public import Std.Internal.UV
public import Std.Async.Basic
public import Init.Data.Function

public section

open Std.Internal

namespace Std
namespace Async
namespace DNS

open Std.Net

/--
Represents a resolved hostname and service name from a socket address.
-/
structure NameInfo where
  /--
  The resolved hostname (e.g., "example.com").
  -/
  host : String

  /--
  The service name (e.g., "http" for port 80).
  -/
  service : String

/--
Asynchronously resolves a hostname and service to an array of socket addresses.
-/
@[inline]
def getAddrInfo (host : String) (service : String) (addrFamily : Option AddressFamily := none) : Async (Array IPAddr) := do
  Async.ofPromise <| UV.DNS.getAddrInfo
    host
    service
    (match addrFamily with
    | none => 0
    | some .ipv4 => 1
    | some .ipv6 => 2)

/--
Performs a reverse DNS lookup on a `SocketAddress`.
-/
@[inline]
def getNameInfo (host : @& SocketAddress) : Async NameInfo :=
  UV.DNS.getNameInfo host
  |> Async.ofPromise
  |>.map (Function.uncurry NameInfo.mk)

end DNS
end Async
end Std
```
