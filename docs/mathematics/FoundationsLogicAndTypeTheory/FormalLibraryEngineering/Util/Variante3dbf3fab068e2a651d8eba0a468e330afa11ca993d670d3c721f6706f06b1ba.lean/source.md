# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variante3dbf3fab068e2a651d8eba0a468e330afa11ca993d670d3c721f6706f06b1ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6072fee3bcbd22210117b8268a5eeee1575cbf0e` · SHA-256 `c69456a77fc82a3972ea78847b9a3776fb12f194de4b718e9c870f87f7248c98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DbgTrace.Variant853410d6970bf94c7501d4fa50763e5db210cb6ab6869d9e1b3f484021b9cfd0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"853410d6970bf94c7501d4fa50763e5db210cb6ab6869d9e1b3f484021b9cfd0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DbgTrace.Variant853410d6970bf94c7501d4fa50763e5db210cb6ab6869d9e1b3f484021b9cfd0","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"853410d6970bf94c7501d4fa50763e5db210cb6ab6869d9e1b3f484021b9cfd0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.ToString.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DbgTrace.Variant853410d6970bf94c7501d4fa50763e5db210cb6ab6869d9e1b3f484021b9cfd0

public section

universe u v

/-! # Debugging helper functions -/

set_option linter.unusedVariables.funArgs false in
@[never_extract, extern "lean_dbg_trace"]
def dbgTrace {α : Type u} (s : String) (f : Unit → α) : α := f ()

def dbgTraceVal {α : Type u} [ToString α] (a : α) : α :=
  dbgTrace (toString a) (fun _ => a)

set_option linter.unusedVariables.funArgs false in
/-- Display the given message if `a` is shared, that is, RC(a) > 1 -/
@[never_extract, extern "lean_dbg_trace_if_shared"]
def dbgTraceIfShared {α : Type u} (s : @& String) (a : α) : α := a

/-- Print stack trace to stderr before evaluating given closure. Currently supported on Linux only. -/
@[never_extract, extern "lean_dbg_stack_trace"]
def dbgStackTrace {α : Type u} (f : Unit → α) : α := f ()

/--
Print stack trace to stderr before evaluating given closure if `cond` is true.
Currently supported on Linux only.
-/
@[never_extract]
def dbgStackTraceIf {α : Type u} (cond : Bool) (f : Unit → α) : α :=
  if cond then dbgStackTrace f else f ()

@[extern "lean_dbg_sleep"]
def dbgSleep {α : Type u} (ms : UInt32) (f : Unit → α) : α := f ()

@[noinline] def mkPanicMessage (modName : String) (line col : Nat) (msg : String) : String :=
  String.Internal.append
    (String.Internal.append
      (String.Internal.append
        (String.Internal.append
          (String.Internal.append
            (String.Internal.append
              (String.Internal.append "PANIC at " modName)
              ":")
            (toString line))
          ":")
        (toString col))
      ": ")
    msg

@[never_extract, inline, expose] def panicWithPos {α : Sort u} [Inhabited α] (modName : String) (line col : Nat) (msg : String) : α :=
  panic (mkPanicMessage modName line col msg)

@[noinline, expose] def mkPanicMessageWithDecl (modName : String) (declName : String) (line col : Nat) (msg : String) : String :=
  String.Internal.append
    (String.Internal.append
      (String.Internal.append
        (String.Internal.append
          (String.Internal.append
            (String.Internal.append
              (String.Internal.append
                (String.Internal.append
                  (String.Internal.append "PANIC at " declName)
                  " ")
                modName)
              ":")
            (toString line))
          ":")
        (toString col))
      ": ")
    msg

@[never_extract, inline, expose] def panicWithPosWithDecl {α : Sort u} [Inhabited α] (modName : String) (declName : String) (line col : Nat) (msg : String) : α :=
  panic (mkPanicMessageWithDecl modName declName line col msg)

/--
Returns the address at which an object is allocated.

This function is unsafe because it can distinguish between definitionally equal values.
-/
@[extern "lean_ptr_addr"]
unsafe opaque ptrAddrUnsafe {α : Type u} (a : @& α) : USize

/--
Returns `true` if `a` is an exclusive object.

An object is exclusive if it is single-threaded and its reference counter is 1. This function is
unsafe because it can distinguish between definitionally equal values.
-/
@[extern "lean_is_exclusive_obj"]
unsafe opaque isExclusiveUnsafe {α : Type u} (a : @& α) : Bool

set_option linter.unusedVariables.funArgs false in
@[inline] unsafe def withPtrAddrUnsafe {α : Type u} {β : Type v} (a : α) (k : USize → β) (h : ∀ u₁ u₂, k u₁ = k u₂) : β :=
  k (ptrAddrUnsafe a)

/--
Compares two objects for pointer equality.

Two objects are pointer-equal if, at runtime, they are allocated at exactly the same address. This
function is unsafe because it can distinguish between definitionally equal values.
-/
@[inline] unsafe def ptrEq (a b : α) : Bool := ptrAddrUnsafe a == ptrAddrUnsafe b

/--
Compares two lists of objects for element-wise pointer equality. Returns `true` if both lists are
the same length and the objects at the corresponding indices of each list are pointer-equal.

Two objects are pointer-equal if, at runtime, they are allocated at exactly the same address. This
function is unsafe because it can distinguish between definitionally equal values.
-/
unsafe def ptrEqList : (as bs : List α) → Bool
  | [], [] => true
  | a::as, b::bs => if ptrEq a b then ptrEqList as bs else false
  | _, _ => false

set_option linter.unusedVariables.funArgs false in
@[inline] unsafe def withPtrEqUnsafe {α : Type u} (a b : α) (k : Unit → Bool) (h : a = b → k () = true) : Bool :=
  if ptrEq a b then true else k ()

@[implemented_by withPtrEqUnsafe]
def withPtrEq {α : Type u} (a b : α) (k : Unit → Bool) (h : a = b → k () = true) : Bool := k ()

/-- `withPtrEq` for `DecidableEq` -/
@[inline] def withPtrEqDecEq {α : Type u} (a b : α) (k : Unit → Decidable (a = b)) : Decidable (a = b) :=
  let b := withPtrEq a b (fun _ => toBoolUsing (k ())) (toBoolUsing_eq_true (k ()));
  match h:b with
  | true  => isTrue (of_toBoolUsing_eq_true h)
  | false => isFalse (of_toBoolUsing_eq_false h)

@[implemented_by withPtrAddrUnsafe]
def withPtrAddr {α : Type u} {β : Type v} (a : α) (k : USize → β) (h : ∀ u₁ u₂, k u₁ = k u₂) : β := k 0
```
