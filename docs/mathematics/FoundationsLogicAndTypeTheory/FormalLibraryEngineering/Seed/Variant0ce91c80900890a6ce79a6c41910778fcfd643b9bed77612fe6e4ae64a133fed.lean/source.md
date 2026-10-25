# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Seed.Variant0ce91c80900890a6ce79a6c41910778fcfd643b9bed77612fe6e4ae64a133fed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75d24854c9a8c106fbd945fa10923312a000980c` · SHA-256 `0ce91c80900890a6ce79a6c41910778fcfd643b9bed77612fe6e4ae64a133fed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ControlledUpstreamSeed
/- MIT. Authored capability fixtures: grwtsk contributors direction and OpenAI Codex implementation.
    Fork relation: userFork changes the controlled upstream f body from n to n+0.
    The exact upstream remains external to the selected family; the bridge is explicit.
    Mixed historical credit UNKNOWN is an authored hostile-policy scenario, not asserted historical provenance.
    No new mathematics, historical authorship or whole-corpus rights are claimed. -/
namespace GRWTSK.NativeCellSeeds
def localBase (n : Nat) : Nat := n
theorem localWitness (n : Nat) : localBase n = n := Eq.refl (localBase n)
theorem externalRamp (n : Nat) : n + 0 = n := Nat.add_zero n
theorem rampConsumer (n : Nat) : n + 0 = n := externalRamp n
def userFork (n : Nat) : Nat := n + 0
theorem userForkBridge (n : Nat) : userFork n = ControlledUpstreamSeed.f n := Nat.add_zero n
theorem userForkConsumer (n : Nat) : userFork n = ControlledUpstreamSeed.f n := userForkBridge n
theorem mixed (n : Nat) : n = n := rfl
theorem mixedConsumer (n : Nat) : n = n := mixed n
theorem conditional (n : Nat) (h : n = 0) : n + 0 = 0 := by simpa using h
theorem conditionalConsumer (n : Nat) (h : n = 0) : n + 0 = 0 := conditional n h
theorem negative : (0 : Nat) ≠ 1 := Nat.zero_ne_one
end GRWTSK.NativeCellSeeds
```
