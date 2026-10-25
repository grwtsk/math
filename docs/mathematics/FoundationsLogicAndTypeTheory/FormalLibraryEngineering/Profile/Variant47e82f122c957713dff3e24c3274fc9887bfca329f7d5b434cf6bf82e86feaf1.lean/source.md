# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Profile.Variant47e82f122c957713dff3e24c3274fc9887bfca329f7d5b434cf6bf82e86feaf1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `deb62ae2645d6bf73af2fc3cff884dd714956e11` · SHA-256 `dae5145b620c5c5c44c472e5632ce8a59f187690cd0c16d409a0985743102889`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetProfiler.Variantbb6f45b4c357fa61c9bc647e4129343489af018505cdbc2422a92081053c890f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb6f45b4c357fa61c9bc647e4129343489af018505cdbc2422a92081053c890f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetProfiler.Variantbb6f45b4c357fa61c9bc647e4129343489af018505cdbc2422a92081053c890f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bb6f45b4c357fa61c9bc647e4129343489af018505cdbc2422a92081053c890f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/Profile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Sebastian Ullrich
-/
module

prelude
public import Init.Data.OfScientific
public import Lean.Data.Options


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetProfiler.Variantbb6f45b4c357fa61c9bc647e4129343489af018505cdbc2422a92081053c890f

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
