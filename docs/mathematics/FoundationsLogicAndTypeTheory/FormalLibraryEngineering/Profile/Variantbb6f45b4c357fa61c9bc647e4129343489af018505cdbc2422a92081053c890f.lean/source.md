# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Profile.Variantbb6f45b4c357fa61c9bc647e4129343489af018505cdbc2422a92081053c890f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df21629886ce8b69c8ffea99b9ab3ea4bdb27a71` · SHA-256 `bb6f45b4c357fa61c9bc647e4129343489af018505cdbc2422a92081053c890f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Sebastian Ullrich
-/
module

prelude
public import Init.Data.OfScientific
public import Lean.Data.Options

public section

namespace Lean

register_builtin_option profiler : Bool := {
  defValue := false
  descr    := "show exclusive execution times of various Lean components

See also `trace.profiler` for an alternative profiling system with structured output."
}

register_builtin_option profiler.threshold : Nat := {
  defValue := 100
  descr    := "threshold in milliseconds, profiling times under threshold will not be reported individually"
}

@[export lean_get_profiler]
private def get_profiler (o : Options) : Bool :=
  profiler.get o

@[export lean_get_profiler_threshold]
def profiler.threshold.getSecs (o : Options) : Float :=
  (profiler.threshold.get o).toFloat / 1000

/-- Print and accumulate run time of `act` when option `profiler` is set to `true`. -/
@[extern "lean_profileit"]
def profileit {α : Type} (category : @& String) (opts : @& Options) (fn : Unit → α) (decl := Name.anonymous) : α := fn ()

unsafe def profileitIOUnsafe {ε α : Type} (category : String) (opts : Options) (act : EIO ε α) (decl := Name.anonymous) : EIO ε α :=
  match profileit (decl := decl) category opts fun _ => unsafeEIO act with
  | Except.ok a    => pure a
  | Except.error e => throw e

@[implemented_by profileitIOUnsafe]
def profileitIO {ε α : Type} (category : String) (opts : Options) (act : EIO ε α) (decl := Name.anonymous) : EIO ε α := act

-- impossible to infer `ε`
def profileitM {m : Type → Type} (ε : Type) [MonadFunctorT (EIO ε) m] {α : Type} (category : String) (opts : Options) (act : m α) (decl := Name.anonymous) : m α :=
  monadMap (fun {β} => profileitIO (ε := ε) (α := β) (decl := decl) category opts) act

/-- Print all profiling times (if any) to standard error. -/
@[extern "lean_display_cumulative_profiling_times"]
opaque displayCumulativeProfilingTimes : BaseIO Unit

end Lean
```
