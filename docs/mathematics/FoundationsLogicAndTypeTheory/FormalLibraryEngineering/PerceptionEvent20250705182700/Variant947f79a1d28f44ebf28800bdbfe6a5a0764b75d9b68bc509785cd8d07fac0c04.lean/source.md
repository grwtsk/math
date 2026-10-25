# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PerceptionEvent20250705182700.Variant947f79a1d28f44ebf28800bdbfe6a5a0764b75d9b68bc509785cd8d07fac0c04

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5406c2c518a262b079c88c60266d15c78e44270c` · SHA-256 `947f79a1d28f44ebf28800bdbfe6a5a0764b75d9b68bc509785cd8d07fac0c04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- lean/cognition/Core/PerceptionEvent.lean

namespace Cognition.Core

open Std (Duration)

/--
A `PerceptionEvent` is a timestamped, canonicalized interpretation of user input
captured by the cognitive sensorium.

Each variant contains a time and optional payload.
-/
inductive PerceptionEvent
  /-- A prompt was submitted: includes text, timestamp, and idle pause. -/
  | prompt (text : String) (timestamp : Nat) (pause : Duration)

  /-- A pause occurred with no prompt (e.g. idle timeout). -/
  | pause (timestamp : Nat) (duration : Duration)

  /-- A user correction or error was detected (e.g. backspace). -/
  | error (timestamp : Nat)

  /-- The user explicitly delegated control to the system. -/
  | delegate (timestamp : Nat)
  deriving Repr, DecidableEq

/-- Extract the timestamp of a `PerceptionEvent`. -/
def PerceptionEvent.timestamp : PerceptionEvent → Nat
  | .prompt _ ts _   => ts
  | .pause ts _      => ts
  | .error ts        => ts
  | .delegate ts     => ts

end Cognition.Core
```
