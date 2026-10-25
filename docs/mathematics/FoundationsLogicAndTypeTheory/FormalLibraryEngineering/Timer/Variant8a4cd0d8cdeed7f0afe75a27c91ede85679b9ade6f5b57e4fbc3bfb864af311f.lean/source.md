# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Timer.Variant8a4cd0d8cdeed7f0afe75a27c91ede85679b9ade6f5b57e4fbc3bfb864af311f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a9a3f60b47e8c36605a577b956b9b3b0736a10c` · SHA-256 `eb72b6ff6d618d40b3d21c0aa487f2d5fdd0906a3919f2032c006c82d48c50fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TimerImpl.Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.TimerImpl.Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Internal/UV/Timer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Init.System.Promise


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TimerImpl.Variantb4d347666606086b8cd6288e2401b0181977639f31e09116cbf5fe950757a7ec

public section

namespace Std
namespace Internal
namespace UV

private opaque TimerImpl : NonemptyType.{0}

/--
`Timer`s are used to generate `IO.Promise`s that resolve after some time.

A `Timer` can be in one of 3 states:
- Right after construction it's initial.
- While it is ticking it's running.
- If it has stopped for some reason it's finished.

This together with whether it was set up as `repeating` with `Timer.new` determines the behavior
of all functions on `Timer`s.
-/
def Timer : Type := TimerImpl.type

instance : Nonempty Timer := by exact TimerImpl.property

namespace Timer

/--
This creates a `Timer` in the initial state and doesn't run it yet.
- If `repeating` is `false` this constructs a timer that resolves once after `timeout`
  milliseconds, counting from when it's run.
- If `repeating` is `true` this constructs a timer that resolves after multiples of `timeout`
  milliseconds, counting from when it's run. Note that this includes the 0th multiple right after
  starting the timer. Furthermore a repeating timer will only be freed after `Timer.stop` is called.
-/
@[extern "lean_uv_timer_mk"]
opaque mk (timeout : UInt64) (repeating : Bool) : IO Timer

/--
This function has different behavior depending on the state and configuration of the `Timer`:
- if `repeating` is `false` and:
  - it is initial, run it and return a new `IO.Promise` that is set to resolve once `timeout`
    milliseconds have elapsed. After this `IO.Promise` is resolved the `Timer` is finished.
  - it is running or finished, return the same `IO.Promise` that the first call to `next` returned.
- if `repeating` is `true` and:
  - it is initial, run it and return a new `IO.Promise` that resolves right away
    (as it is the 0th multiple of `timeout`).
  - it is running, check whether the last returned `IO.Promise` is already resolved:
     - If it is, return a new `IO.Promise` that resolves upon finishing the next cycle
     - If it is not, return the last `IO.Promise`
     This ensures that the returned `IO.Promise` resolves at the next repetition of the timer.
  - if it is finished, return the last `IO.Promise` created by `next`. Notably this could be one
    that never resolves if the timer was stopped before fulfilling the last one.
-/
@[extern "lean_uv_timer_next"]
opaque next (timer : @& Timer) : IO (IO.Promise Unit)

/--
This function has different behavior depending on the state and configuration of the `Timer`:
- If it is initial or finished this is a no-op.
- If it is running and `repeating` is `false` this will delay the resolution of the timer until
  `timeout` milliseconds after the call of this function.
- Delay the resolution of the next tick of the timer until `timeout` milliseconds after the
  call of this function, then continue normal ticking behavior from there.
-/
@[extern "lean_uv_timer_reset"]
opaque reset (timer : @& Timer) : IO Unit

/--
This function has different behavior depending on the state of the `Timer`:
- If it is initial or finished this is a no-op.
- If it is running the execution of the timer is stopped, it is put into the finished state and the
  promise generated by the `next` function is dropped.
-/
@[extern "lean_uv_timer_stop"]
opaque stop (timer : @& Timer) : IO Unit

/--
This function has different behavior depending on the state of the `Timer`:
- If it is initial or finished this is a no-op.
- If it is running, the promise generated by the `next` function is dropped.
  - If `repeating` is `false` then it sets the timer to the initial state.
-/
@[extern "lean_uv_timer_cancel"]
opaque cancel (timer : @& Timer) : IO Unit

end Timer

end UV
end Internal
end Std
```
