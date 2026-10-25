# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Loop.Variant0eef21246b077e9f939a842011274b83a0b5636cbc759b87985b57bb067f4fb9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb154581d5e4a37bca975d4e5c2317dcbc6055ef` · SHA-256 `0eef21246b077e9f939a842011274b83a0b5636cbc759b87985b57bb067f4fb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Init.System.Promise

@[expose] public section

namespace Std
namespace Internal
namespace UV
namespace Loop

/--
Options for configuring the event loop behavior.
-/
structure Options where
  /--
  Accumulate the amount of idle time the event loop spends in the event provider.
  -/
  accumulateIdleTime : Bool := False

  /--
  Block a SIGPROF signal when polling for new events. It's commonly used for unnecessary wakeups
  when using a sampling profiler.
  -/
  blockSigProfSignal : Bool := False

/--
Configures the event loop with the specified options.
-/
@[extern "lean_uv_event_loop_configure"]
opaque configure (options : Options) : BaseIO Unit

/--
Checks if the event loop is still active and processing events.
-/
@[extern "lean_uv_event_loop_alive"]
opaque alive : BaseIO Bool

end Loop
end UV
end Internal
end Std
```
