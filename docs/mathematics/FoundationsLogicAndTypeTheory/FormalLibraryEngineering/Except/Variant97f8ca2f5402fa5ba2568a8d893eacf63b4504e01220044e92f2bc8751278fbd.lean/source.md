# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Except.Variant97f8ca2f5402fa5ba2568a8d893eacf63b4504e01220044e92f2bc8751278fbd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1270ae76eb92c15269eb2b188870d42e677f5b9c` · SHA-256 `97f8ca2f5402fa5ba2568a8d893eacf63b4504e01220044e92f2bc8751278fbd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- Test: core does not currently provide DecidableEq for Except.
-- If this test fails, it means core now provides DecidableEq for Except
-- and the Batteries instance in Batteries.Lean.Except should be removed.

/--
error: failed to synthesize instance of type class
  DecidableEq (Except ?m.1 ?m.2)

Hint: Type class instance resolution failures can be inspected with the `set_option trace.Meta.synthInstance true` command.
-/
#guard_msgs in
#check (inferInstance : DecidableEq (Except _ _))
```
