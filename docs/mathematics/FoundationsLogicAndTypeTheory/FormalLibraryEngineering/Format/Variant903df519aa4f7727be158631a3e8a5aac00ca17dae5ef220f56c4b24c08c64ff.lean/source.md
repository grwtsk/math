# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Format.Variant903df519aa4f7727be158631a3e8a5aac00ca17dae5ef220f56c4b24c08c64ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff82cfbcd4419a8a3c9ae0e6213902c60f4466cf` · SHA-256 `903df519aa4f7727be158631a3e8a5aac00ca17dae5ef220f56c4b24c08c64ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public import Lean.Data.Options
public import Init.Data.Format.Instances

public section
universe u v

open Std.Format

namespace Lean.Std
namespace Format
open Lean

def getWidth (o : Options) : Nat    := o.get `format.width  defWidth
def getIndent (o : Options) : Nat   := o.get `format.indent defIndent
def getUnicode (o : Options) : Bool := o.get `format.unicode defUnicode

register_builtin_option format.width : Nat := {
  defValue := defWidth
  descr := "indentation"
}

register_builtin_option format.unicode : Bool := {
  defValue := defUnicode
  descr    := "unicode characters"
}

register_builtin_option format.indent : Nat := {
  defValue := defIndent
  descr    := "indentation"
}

def pretty' (f : _root_.Std.Format) (o : Options := {}) : String :=
  pretty f (format.width.get o)

end Format
end Lean.Std

namespace Lean

export _root_.Std
  (Format ToFormat Format.nest Format.nil Format.joinSep Format.line Format.text
   Format.sbracket Format.bracket Format.group Format.tag Format.pretty
   Format.fill Format.paren Format.join Format.align)
export _root_.Std.ToFormat (format)

instance : ToFormat Name where
  format n := n.toString

instance : ToFormat DataValue where
  format
    | DataValue.ofString v => format (repr v)
    | DataValue.ofBool v   => format v
    | DataValue.ofName v   => "`" ++ format v
    | DataValue.ofNat v    => format v
    | DataValue.ofInt v    => format v
    | DataValue.ofSyntax v => format v

instance : ToFormat (Name × DataValue) where
  format
    | (n, v) => format n ++ " := " ++ format v


open Std.Format

def formatKVMap (m : KVMap) : Format :=
  sbracket (Format.joinSep m.entries ", ")

instance : ToFormat KVMap := ⟨formatKVMap⟩

end Lean
```
