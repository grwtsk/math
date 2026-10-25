# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TCP.Variant7873a962c94e8e2f1c4c6ad5d467427e1d8ff79d4348de6f4fd366a2b3a3172d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c1ccf5ae365f01399c5c6fb31d602889cfe902f` · SHA-256 `b8a9b4d45d2d7fc5fbe75d399392e06e9aa04a2ddf98a541f7bcc5d6ce6d58b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SocketImpl.Variantc8847c2302342c10bcb7442463fec3b663bd51ef2ece4ebcdc53372243e6edb7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8847c2302342c10bcb7442463fec3b663bd51ef2ece4ebcdc53372243e6edb7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SocketImpl.Variantc8847c2302342c10bcb7442463fec3b663bd51ef2ece4ebcdc53372243e6edb7","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c8847c2302342c10bcb7442463fec3b663bd51ef2ece4ebcdc53372243e6edb7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Internal/UV/TCP.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving, Sofia Rodrigues
-/
module

prelude
public import Init.System.Promise
public import Init.Data.SInt
public import Std.Net


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SocketImpl.Variantc8847c2302342c10bcb7442463fec3b663bd51ef2ece4ebcdc53372243e6edb7

public section

namespace Std
namespace Internal
namespace UV
namespace TCP

open Std.Net

private opaque SocketImpl : NonemptyType.{0}

/--
Represents a TCP socket.
-/
def Socket : Type := SocketImpl.type

instance : Nonempty Socket := by exact SocketImpl.property

namespace Socket

/--
Creates a new TCP socket.
-/
@[extern "lean_uv_tcp_new"]
opaque new : IO Socket

/--
Connects a TCP socket to the specified address.
-/
@[extern "lean_uv_tcp_connect"]
opaque connect (socket : @& Socket) (addr : @& SocketAddress) : IO (IO.Promise (Except IO.Error Unit))

/--
Sends data through a TCP socket.
-/
@[extern "lean_uv_tcp_send"]
opaque send (socket : @& Socket) (data : Array ByteArray) : IO (IO.Promise (Except IO.Error Unit))

/--
Receives data from a TCP socket with a maximum size of size bytes. The promise resolves when data is
available or an error occurs. If data is received, it’s wrapped in .some. If EOF is reached, the
result is .none, indicating no more data is available. Receiving data in parallel on the same
socket is not supported. Instead, we recommend binding multiple sockets to the same address.
Furthermore calling this function in parallel with `waitReadable` is not supported.
-/
@[extern "lean_uv_tcp_recv"]
opaque recv? (socket : @& Socket) (size : UInt64) : IO (IO.Promise (Except IO.Error (Option ByteArray)))

/--
Returns an `IO.Promise` that resolves to `true` once `socket` has data available for reading,
or to `false` if `socket` is closed before that. Calling this function twice on the same `Socket`
or in parallel with `recv?` is not supported.
-/
@[extern "lean_uv_tcp_wait_readable"]
opaque waitReadable (socket : @& Socket) : IO (IO.Promise (Except IO.Error Bool))

/--
Cancels a receive operation in the form of `recv?` or `waitReadable` if there is currently one
pending. This resolves their returned `IO.Promise` to `none`. This function is considered dangerous,
as improper use can cause data loss, and is therefore not exposed to the top-level API.

Note that this function is idempotent and as such can be called multiple times on the same socket
without causing errors, in particular also without a receive running in the first place.
-/
@[extern "lean_uv_tcp_cancel_recv"]
opaque cancelRecv (socket : @& Socket) : IO Unit

/--
Binds a TCP socket to a specific address.
-/
@[extern "lean_uv_tcp_bind"]
opaque bind (socket : @& Socket) (addr : @& SocketAddress) : IO Unit

/--
Starts listening for incoming connections on a TCP socket.
-/
@[extern "lean_uv_tcp_listen"]
opaque listen (socket : @& Socket) (backlog : UInt32) : IO Unit

/--
Accepts an incoming connection on a listening TCP socket.
-/
@[extern "lean_uv_tcp_accept"]
opaque accept (socket : @& Socket) : IO (IO.Promise (Except IO.Error Socket))

/--
Tries to accept an incoming connection on a listening TCP socket.
-/
@[extern "lean_uv_tcp_try_accept"]
opaque tryAccept (socket : @& Socket) : IO (Except IO.Error (Option Socket))

/--
Cancels the accept request of a socket.
-/
@[extern "lean_uv_tcp_cancel_accept"]
opaque cancelAccept (socket : @& Socket) : IO Unit

/--
Shuts down an incoming connection on a listening TCP socket.
-/
@[extern "lean_uv_tcp_shutdown"]
opaque shutdown (socket : @& Socket) : IO (IO.Promise (Except IO.Error Unit))

/--
Gets the remote address of a connected TCP socket.
-/
@[extern "lean_uv_tcp_getpeername"]
opaque getPeerName (socket : @& Socket) : IO SocketAddress

/--
Gets the local address of a bound TCP socket.
-/
@[extern "lean_uv_tcp_getsockname"]
opaque getSockName (socket : @& Socket) : IO SocketAddress

/--
Enables the Nagle algorithm for a TCP socket.
-/
@[extern "lean_uv_tcp_nodelay"]
opaque noDelay (socket : @& Socket) : IO Unit

/--
Enables TCP keep-alive for a socket. If delay is less than 1 then UV_EINVAL is returned.
-/
@[extern "lean_uv_tcp_keepalive"]
opaque keepAlive (socket : @& Socket) (enable : Int8) (delay : UInt32) : IO Unit

end Socket
end TCP
end UV
end Internal
end Std
```
