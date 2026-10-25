# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Addr.Variantd40532297aba97dde0cbaa1e55dae61f0cc2ecd10f5719b02c74725df85f4103

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67a6eda4bbd024bdc77bfc760da04d534e0db4a5` · SHA-256 `f8e7f7573929d3cfb2b23d2e5448de54281a1c41b02c1aa617d95345325716f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MACAddr.Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MACAddr.Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Net/Addr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Init.System.IO
public import Init.Data.Vector.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MACAddr.Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b

@[expose] public section

/-!
This module contains Lean representations of IP and socket addresses:
- `IPv4Addr`: Representing IPv4 addresses.
- `SocketAddressV4`: Representing a pair of IPv4 address and port.
- `IPv6Addr`: Representing IPv6 addresses.
- `SocketAddressV6`: Representing a pair of IPv6 address and port.
- `IPAddr`: Can either be an `IPv4Addr` or an `IPv6Addr`.
- `SocketAddress`: Can either be a `SocketAddressV4` or `SocketAddressV6`.
-/

namespace Std
namespace Net

/--
Representation of a MAC address.
-/
structure MACAddr where
  /--
  This structure represents the address: `octets[0]:octets[1]:octets[2]:octets[3]:octets[4]:octets[5]`.
  -/
  octets : Vector UInt8 6
  deriving Inhabited, DecidableEq

/--
Representation of an IPv4 address.
-/
structure IPv4Addr where
  /--
  This structure represents the address: `octets[0].octets[1].octets[2].octets[3]`.
  -/
  octets : Vector UInt8 4
  deriving Inhabited, DecidableEq

/--
A pair of an `IPv4Addr` and a port.
-/
structure SocketAddressV4 where
  addr : IPv4Addr
  port : UInt16
  deriving Inhabited, DecidableEq

/--
Representation of an IPv6 address.
-/
structure IPv6Addr where
  /--
  This structure represents the address: `segments[0]:segments[1]:...`.
  -/
  segments : Vector UInt16 8
  deriving Inhabited, DecidableEq

/--
A pair of an `IPv6Addr` and a port.
-/
structure SocketAddressV6 where
  addr : IPv6Addr
  port : UInt16
  deriving Inhabited, DecidableEq

/--
An IP address, either IPv4 or IPv6.
-/
inductive IPAddr where
  | v4 (addr : IPv4Addr)
  | v6 (addr : IPv6Addr)
  deriving Inhabited, DecidableEq

/--
Either a `SocketAddressV4` or `SocketAddressV6`.
-/
inductive SocketAddress where
  | v4 (addr : SocketAddressV4)
  | v6 (addr : SocketAddressV6)
  deriving Inhabited, DecidableEq

/--
The kinds of address families supported by Lean, currently only IP variants.
-/
inductive AddressFamily where
  | ipv4
  | ipv6
  deriving Inhabited, DecidableEq

namespace IPv4Addr

/--
Build the IPv4 address `a.b.c.d`.
-/
def ofParts (a b c d : UInt8) : IPv4Addr :=
  { octets := #v[a, b, c, d] }

/--
Try to parse `s` as an IPv4 address, returning `none` on failure.
-/
@[extern "lean_uv_pton_v4"]
opaque ofString (s : @&String) : Option IPv4Addr

/--
Turn `addr` into a `String` in the usual IPv4 format.
-/
@[extern "lean_uv_ntop_v4"]
opaque toString (addr : @&IPv4Addr) : String

instance : ToString IPv4Addr where
  toString := toString

instance : Coe IPv4Addr IPAddr where
  coe addr := .v4 addr

end IPv4Addr

namespace SocketAddressV4

instance : ToString SocketAddressV4 where
  toString sa := toString sa.addr ++ ":" ++ toString sa.port

instance : Coe SocketAddressV4 SocketAddress where
  coe addr := .v4 addr

end SocketAddressV4

namespace IPv6Addr

/--
Build the IPv6 address `a:b:c:d:e:f:g:h`.
-/
def ofParts (a b c d e f g h : UInt16) : IPv6Addr :=
  { segments := #v[a, b, c, d, e, f, g, h] }

/--
Try to parse `s` as an IPv6 address according to
[RFC 2373](https://datatracker.ietf.org/doc/html/rfc2373), returning `none` on failure.
-/
@[extern "lean_uv_pton_v6"]
opaque ofString (s : @&String) : Option IPv6Addr

/--
Turn `addr` into a `String` in the IPv6 format described in
[RFC 2373](https://datatracker.ietf.org/doc/html/rfc2373).
-/
@[extern "lean_uv_ntop_v6"]
opaque toString (addr : @&IPv6Addr) : String

instance : ToString IPv6Addr where
  toString := toString

instance : Coe IPv6Addr IPAddr where
  coe addr := .v6 addr

end IPv6Addr

namespace SocketAddressV6

instance : ToString SocketAddressV6 where
  toString sa := "[" ++ toString sa.addr ++ "]:" ++ toString sa.port

instance : Coe SocketAddressV6 SocketAddress where
  coe addr := .v6 addr

end SocketAddressV6

namespace IPAddr

/--
Obtain the `AddressFamily` associated with an `IPAddr`.
-/
def family : IPAddr → AddressFamily
  | .v4 .. => .ipv4
  | .v6 .. => .ipv6

def toString : IPAddr → String
  | .v4 addr => addr.toString
  | .v6 addr => addr.toString

instance : ToString IPAddr where
  toString := toString

end IPAddr

namespace SocketAddress

instance : ToString SocketAddress where
  toString
    | .v4 sa => toString sa
    | .v6 sa => toString sa

/--
Obtain the `AddressFamily` associated with a `SocketAddress`.
-/
def family : SocketAddress → AddressFamily
  | .v4 .. => .ipv4
  | .v6 .. => .ipv6

/--
Obtain the `IPAddr` contained in a `SocketAddress`.
-/
def ipAddr : SocketAddress → IPAddr
  | .v4 sa  => .v4 sa.addr
  | .v6 sa  => .v6 sa.addr

/--
Obtain the port contained in a `SocketAddress`.
-/
def port : SocketAddress → UInt16
  | .v4 sa | .v6 sa => sa.port

end SocketAddress

/--
Represents an interface address, including details such as the interface name,
whether it is internal, the associated address, and the network mask.
-/
structure InterfaceAddress where
  /--
  The name of the network interface.
  -/
  name : String

  /-
  The physical (MAC) address of the interface.
  -/
  physicalAddress : MACAddr

  /--
  Indicates whether the interface is a loopback interface.
  -/
  isLoopback : Bool

  /--
  The IP address assigned to the interface.
  -/
  address : IPAddr

  /--
  The subnet mask associated with the interface.
  -/
  netMask : IPAddr
  deriving Inhabited, DecidableEq

/--
Gets address information about the network interfaces on the system, including disabled ones and
multiple addresses for each interface.
-/
@[extern "lean_uv_interface_addresses"]
opaque interfaceAddresses : IO (Array InterfaceAddress)

end Net
end Std
```
