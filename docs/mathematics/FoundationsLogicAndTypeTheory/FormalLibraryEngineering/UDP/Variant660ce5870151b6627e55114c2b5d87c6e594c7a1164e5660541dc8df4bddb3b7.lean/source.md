# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UDP.Variant660ce5870151b6627e55114c2b5d87c6e594c7a1164e5660541dc8df4bddb3b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45bbe7bd5f57cb83f4a204479da6cd8524d6e679` · SHA-256 `7e3bb3bf7c6b95ac12d66c1ae7f6c357e784147ac327646594cf213cf8996fa7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Socket.Variantd65e794c2ce4a2dd4fa00b7d223002f1a7d255c3883627aae888e48c4cbed369","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d65e794c2ce4a2dd4fa00b7d223002f1a7d255c3883627aae888e48c4cbed369","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Socket.Variantd65e794c2ce4a2dd4fa00b7d223002f1a7d255c3883627aae888e48c4cbed369","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d65e794c2ce4a2dd4fa00b7d223002f1a7d255c3883627aae888e48c4cbed369","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Async/UDP.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time
public import Std.Internal.UV.UDP
public import Std.Async.Select


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Socket.Variantd65e794c2ce4a2dd4fa00b7d223002f1a7d255c3883627aae888e48c4cbed369

public section

namespace Std
namespace Async
namespace UDP

open Std.Net

/--
Represents a UDP socket.
-/
structure Socket where
  private ofNative ::
    native : Internal.UV.UDP.Socket

/--
Membership type for multicast operations.
-/
inductive Membership
  | leaveGroup
  | enterGroup

namespace Socket

/--
Creates a new UDP socket.
-/
@[inline]
def mk : IO Socket := do
  let native ← Internal.UV.UDP.Socket.new
  return Socket.ofNative native

/--
Binds the UDP socket to the given address. Address reuse is enabled to allow rebinding the
same address.
-/
@[inline]
def bind (s : Socket) (addr : SocketAddress) : IO Unit :=
  s.native.bind addr

/--
Associates the UDP socket with the given address and port, so every message sent by this socket is
automatically sent to that destination.
-/
@[inline]
def connect (s : Socket) (addr : SocketAddress) : IO Unit :=
  s.native.connect addr

/--
Sends multiple data buffers through an UDP socket. The `addr` parameter specifies the destination
address. If `addr` is `none`, the data is sent to the default peer address set by `connect`.
-/
@[inline]
def sendAll (s : Socket) (data : Array ByteArray) (addr : Option SocketAddress := none) : Async Unit :=
  Async.ofPromise <| s.native.send data addr

/--
Sends data through an UDP socket. The `addr` parameter specifies the destination address. If `addr`
is `none`, the data is sent to the default peer address set by `connect`.
-/
@[inline]
def send (s : Socket) (data : ByteArray) (addr : Option SocketAddress := none) : Async Unit :=
  Async.ofPromise <| s.native.send #[data] addr

/--
Receives data from an UDP socket. `size` is for the maximum bytes to receive.
The promise resolves when some data is available or an error occurs. If the socket
has not been previously bound with `bind`, it is automatically bound to `0.0.0.0`
(all interfaces) with a random port.
Furthermore calling this function in parallel with `recvSelector` is not supported.
-/
@[inline]
def recv (s : Socket) (size : UInt64) : Async (ByteArray × Option SocketAddress) :=
  Async.ofPromise <| s.native.recv size

/--
Creates a `Selector` that resolves once `s` has data available, up to at most `size` bytes,
and provides that data. If the socket has not been previously bound with `bind`, it is
automatically bound to `0.0.0.0` (all interfaces) with a random port.
Calling this function does starts the data wait, only when it's used with `Selectable.one` or `combine`.
It must not be called in parallel with `recv`.
-/
def recvSelector (s : Socket) (size : UInt64) : Selector (ByteArray × Option SocketAddress) :=
 {
    tryFn := do
      let readableWaiter ← s.native.waitReadable

      if ← readableWaiter.isResolved then
        -- We know that this read should not block
        let res ← (s.recv size).block
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
              let res ← (s.recv size).block
              promise.resolve (.ok res)
            catch e =>
              promise.resolve (.error e)
          waiter.race lose win

    unregisterFn := s.native.cancelRecv
  }

/--
Gets the local address of the UDP socket.
-/
@[inline]
def getSockName (s : Socket) : IO SocketAddress :=
  s.native.getSockName

/--
Gets the remote address of the UDP socket. On unconnected handles, it throws the `.invalidArgument`.
error.
-/
@[inline]
def getPeerName (s : Socket) : IO SocketAddress :=
  s.native.getPeerName

/--
Enables or disables broadcasting for the UDP socket.
-/
@[inline]
def setBroadcast (s : Socket) (enable : Bool) : IO Unit :=
  s.native.setBroadcast enable

/--
Enables or disables multicast loopback for the UDP socket.
-/
@[inline]
def setMulticastLoop (s : Socket) (enable : Bool) : IO Unit :=
  s.native.setMulticastLoop enable

/--
Sets the time-to-live (TTL) for multicast packets.
-/
@[inline]
def setMulticastTTL (s : Socket) (ttl : UInt32) : IO Unit :=
  s.native.setMulticastTTL ttl

/--
Sets the membership for joining or leaving a multicast group.
-/
@[inline]
def setMembership (s : Socket) (multicastAddr : IPAddr) (interfaceAddr : Option IPAddr) (membership : Membership) : IO Unit :=
  let membership := match membership with
    | .leaveGroup => 0
    | .enterGroup => 1
  s.native.setMembership multicastAddr interfaceAddr membership

/--
Sets the multicast interface for sending packets.
-/
@[inline]
def setMulticastInterface (s : Socket) (interfaceAddr : IPAddr) : IO Unit :=
  s.native.setMulticastInterface interfaceAddr

/--
Sets the TTL for outgoing packets.
-/
@[inline]
def setTTL (s : Socket) (ttl : UInt32) : IO Unit :=
  s.native.setTTL ttl

end Socket

end UDP
end Async
end Std
```
