# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.MissingInjectivity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d754e9c28ab3e491e09dd77b18605f32fa0ac77a` · SHA-256 `12d4eb4ef652c00200be8e935a8ddb9648d7f421da5e259bb02899f2c0962a4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.GapTransport
open GRWTSK.Spectral.GapTransport

-- A zero-energy coding cannot supply the injectivity premise needed by transport.
example : Function.Injective (fun _ : Bool => (0 : ℝ)) := by
  intro a b _h
  exact rfl
```
