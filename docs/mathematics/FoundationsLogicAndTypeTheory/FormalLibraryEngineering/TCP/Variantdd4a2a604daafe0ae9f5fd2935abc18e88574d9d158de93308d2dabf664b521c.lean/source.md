# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TCP.Variantdd4a2a604daafe0ae9f5fd2935abc18e88574d9d158de93308d2dabf664b521c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa61dec6df2a8490a65f9a6975bc818deaa7c934` · SHA-256 `f648b999a12814e84be219b3dd3fda8664fdb0cc1eeee5ddaece2eadc377a401`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Server.Variant1e1f22132751ee92ff883915d7eff321558cfacba4b646380bffc88938d5e820","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e1f22132751ee92ff883915d7eff321558cfacba4b646380bffc88938d5e820","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Server.Variant1e1f22132751ee92ff883915d7eff321558cfacba4b646380bffc88938d5e820","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1e1f22132751ee92ff883915d7eff321558cfacba4b646380bffc88938d5e820","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Async/TCP.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time
public import Std.Internal.UV.TCP
public import Std.Async.Select


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Server.Variant1e1f22132751ee92ff883915d7eff321558cfacba4b646380bffc88938d5e820

public section

namespace Std
namespace Async
namespace TCP
open Std.Net

namespace Socket

/--
Represents a TCP server socket, managing incoming client connections.
-/
structure Server where
  private ofNative ::
    native : Internal.UV.TCP.Socket

/--
Represents a TCP client socket, used to connect to a server.
-/
structure Client where
  private ofNative ::
    native : Internal.UV.TCP.Socket

namespace Server

/--
Creates a new TCP server socket.
-/
@[inline]
def mk : IO Server := do
  let native ← Internal.UV.TCP.Socket.new
  return Server.ofNative native

/--
Binds the server socket to the specified address. Address reuse is enabled to allow rebinding the
same address.
-/
@[inline]
def bind (s : Server) (addr : SocketAddress) : IO Unit :=
  s.native.bind addr

/--
Listens for incoming connections with the given backlog.
-/
@[inline]
def listen (s : Server) (backlog : UInt32) : IO Unit :=
  s.native.listen backlog

/--
Accepts an incoming connection.
-/
@[inline]
def accept (s : Server) : Async Client := do
  s.native.accept
  |> Async.ofPromise
  |>.map Client.ofNative

/--
Tries to accept an incoming connection.
-/
@[inline]
def tryAccept (s : Server) : IO (Option Client) := do
  let res ← s.native.tryAccept
  let socket ← IO.ofExcept res
  return Client.ofNative <$> socket

/--
Creates a `Selector` that resolves once `s` has a connection available. Calling this function
does not start the connection wait, so it must not be called in parallel with `accept`.
-/
def acceptSelector (s : TCP.Socket.Server) : Selector Client :=
  {
    tryFn :=
      s.tryAccept

    registerFn waiter := do
      let task ← s.native.accept

      -- If we get cancelled the promise will be dropped so prepare for that
      IO.chainTask (t := task.result?) fun res => do
        match res with
        | none => return ()
        | some res =>
          let lose := return ()
          let win promise := do
            try
              let result ← IO.ofExcept res
              promise.resolve (.ok (Client.ofNative result))
            catch e =>
              promise.resolve (.error e)
          waiter.race lose win

    unregisterFn := s.native.cancelAccept
  }

/--
Gets the local address of the server socket.
-/
@[inline]
def getSockName (s : Server) : IO SocketAddress :=
  s.native.getSockName

/--
Enables the Nagle algorithm for all client sockets accepted by this server socket.
-/
@[inline]
def noDelay (s : Server) : IO Unit :=
  s.native.noDelay

/--
Enables TCP keep-alive for all client sockets accepted by this server socket.
-/
@[inline]
def keepAlive (s : Server) (enable : Bool) (delay : Std.Time.Second.Offset) (_ : delay.val ≥ 1 := by decide) : IO Unit :=
  s.native.keepAlive enable.toInt8 delay.val.toNat.toUInt32

end Server

namespace Client

/--
Creates a new TCP client socket.
-/
@[inline]
def mk : IO Client := do
  let native ← Internal.UV.TCP.Socket.new
  return Client.ofNative native

/--
Binds the server socket to the specified address. Address reuse is enabled to allow rebinding the
same address.
-/
@[inline]
def bind (s : Client) (addr : SocketAddress) : IO Unit :=
  s.native.bind addr

/--
Connects the client socket to the given address.
-/
@[inline]
def connect (s : Client) (addr : SocketAddress) : Async Unit :=
  Async.ofPromise <| s.native.connect addr

/--
Sends multiple data buffers through the client socket.
-/
@[inline]
def sendAll (s : Client) (data : Array ByteArray) : Async Unit :=
  Async.ofPromise <| s.native.send data

/--
Sends data through the client socket.
-/
@[inline]
def send (s : Client) (data : ByteArray) : Async Unit :=
  Async.ofPromise <| s.native.send #[data]

/--
Receives data from the client socket. If data is received, it’s wrapped in .some. If EOF is reached,
the result is .none, indicating no more data is available. Receiving data in parallel on the same
socket is not supported. Instead, we recommend binding multiple sockets to the same address.
Furthermore calling this function in parallel with `recvSelector` is not supported.
-/
@[inline]
def recv? (s : Client) (size : UInt64) : Async (Option ByteArray) :=
  Async.ofPromise <| s.native.recv? size

/--
Creates a `Selector` that resolves once `s` has data available, up to at most `size` bytes,
and provides that data. Calling this function does not starts the data wait, so it must not be called
in parallel with `recv?`.
-/
def recvSelector (s : TCP.Socket.Client) (size : UInt64) : Selector (Option ByteArray) :=
  {
    tryFn := do
      let readableWaiter ← s.native.waitReadable

      if ← readableWaiter.isResolved then
        -- We know that this read should not block
        let res ← (s.recv? size).block
        return some res
      else
        s.native.cancelRecv
        return none

    registerFn waiter := do
      let readableWaiter ← s.native.waitReadable

      -- If we get cancelled the promise will be dropped so prepare for that
      discard <| IO.mapTask (t := readableWaiter.result?) fun res => do
        match res with
        | none => return ()
        | some res =>
          let lose := return ()
          let win promise := do
            try
              discard <| IO.ofExcept res
              -- We know that this read should not block
              let res ← (s.recv? size).block
              promise.resolve (.ok res)
            catch e =>
              promise.resolve (.error e)
          waiter.race lose win

    unregisterFn := s.native.cancelRecv
  }

/--
Shuts down the write side of the client socket.
-/
@[inline]
def shutdown (s : Client) : Async Unit :=
  Async.ofPromise <| s.native.shutdown

/--
Gets the remote address of the client socket.
-/
@[inline]
def getPeerName (s : Client) : IO SocketAddress :=
  s.native.getPeerName

/--
Gets the local address of the client socket.
-/
@[inline]
def getSockName (s : Client) : IO SocketAddress :=
  s.native.getSockName

/--
Enables the Nagle algorithm for the client socket.
-/
@[inline]
def noDelay (s : Client) : IO Unit :=
  s.native.noDelay

/--
Enables TCP keep-alive with a specified delay for the client socket.
-/
@[inline]
def keepAlive (s : Client) (enable : Bool) (delay : Std.Time.Second.Offset) (_ : delay.val ≥ 0 := by decide) : IO Unit :=
  s.native.keepAlive enable.toInt8 delay.val.toNat.toUInt32

end Client
end Socket
end TCP
end Async
end Std
```
